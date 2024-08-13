const std = @import("std");
const abi = @import("abi");
const ui = @import("ui/ui.zig");
const ft = @import("ft.zig");

/// Handler Structure For the Cairo Surface
pub const ImageSurface = struct {
    allocator: std.mem.Allocator,
    /// Internal Cairo Surface Handle
    surface: *abi.cairo_surface_t,
    data: []u32,
    width: u32,
    height: u32,

    pub fn new(allocator: std.mem.Allocator, width: u32, height: u32) !Self {
        const data = try allocator.alloc(u32, @intCast(width * height));
        errdefer allocator.free(data);

        const surface = abi.cairo_image_surface_create_for_data(@ptrCast(&data[0]), abi.CAIRO_FORMAT_ARGB32, @intCast(width), @intCast(height), @intCast(4 * width)) orelse return Err.FAILED_TO_CREATE_SURFACE;
        return Self{
            .allocator = allocator,
            .surface = surface,
            .data = data,
            .width = width,
            .height = height,
        };
    }

    /// Resizes the Cairo surface handle.
    /// Handles memory changes
    pub fn resize(self: *Self, width: u32, height: u32) !void {
        if (width == 0 or height == 0) return;
        self.width = width;
        self.height = height;
        self.destroy();

        self.data = try self.allocator.alloc(u32, @intCast(width * height));
        errdefer self.allocator.free(self.data);

        self.surface = abi.cairo_image_surface_create_for_data(@ptrCast(&self.data[0]), abi.CAIRO_FORMAT_ARGB32, @intCast(width), @intCast(height), @intCast(4 * width)) orelse return Err.FAILED_TO_CREATE_SURFACE;
    }

    pub fn destroy(self: Self) void {
        // data is allocated by the abi library using malloc
        std.c.free(self.surface);
        self.allocator.free(self.data);
    }

    const Self = @This();
    const Err = error{
        FAILED_TO_CREATE_SURFACE,
    };
};

/// Structure for handling Cairo drawing contexts from an `ImageSurface`
pub const Graphics = struct {
    var FontLib: ?ft.Library = null;

    allocator: std.mem.Allocator,
    ctx: *abi.cairo_t,
    _surface: []ImageSurface,
    surface: *ImageSurface,

    pub fn new(allocator: std.mem.Allocator, width: u32, height: u32) !Self {
        const _surface = try allocator.alloc(ImageSurface, 1);
        const surface = &_surface[0];
        surface.* = try ImageSurface.new(allocator, width, height);

        const ctx = abi.cairo_create(surface.surface) orelse return Err.FAILED_TO_CREATE_CAIRO_CONTEXT;

        return Self{
            .allocator = allocator,
            .surface = surface,
            ._surface = _surface,
            .ctx = ctx,
        };
    }

    pub fn save(self: Self) void {
        abi.cairo_save(self.ctx);
    }

    pub fn restore(self: Self) void {
        abi.cairo_restore(self.ctx);
    }

    pub fn resize(self: *Self, width: u32, height: u32) Err!void {
        if (width == 0 or height == 0) return;
        abi.cairo_destroy(self.ctx);
        self.surface.resize(width, height) catch return Err.FAILED_TO_RESIZE_SURFACE;
        self.ctx = abi.cairo_create(self.surface.surface) orelse return Err.FAILED_TO_CREATE_CAIRO_CONTEXT;
    }

    pub fn destroy(self: Self) void {
        abi.cairo_destroy(self.ctx);
        self.surface.destroy();
        self.allocator.free(self._surface);
    }

    pub fn clear(self: Self) void {
        self.rectangle(0, 0, @floatFromInt(self.surface.width), @floatFromInt(self.surface.height));
        self.fill();
    }

    pub fn setSourceRGB(self: Self, r: f32, g: f32, b: f32) void {
        abi.cairo_set_source_rgb(self.ctx, r, g, b);
    }

    pub fn rectangle(self: Self, x: f32, y: f32, width: f32, height: f32) void {
        abi.cairo_rectangle(self.ctx, x, y, width, height);
    }

    pub fn fill(self: Self) void {
        abi.cairo_fill(self.ctx);
    }

    pub fn setFontFace(self: Self, font_face: *ft.Face) void {
        abi.cairo_set_font_face(self.ctx, @ptrCast(font_face));
    }

    pub fn showGlyphs(self: Self, glyphs: []abi.cairo_glyph_t) void {
        abi.cairo_show_glyphs(self.ctx, @ptrCast(glyphs), @intCast(glyphs.len));
    }

    pub fn showGlyphsAt(self: Self, x: f64, y: f64, glyphs: []abi.cairo_glyph_t) void {
        var font_matrix: abi.cairo_matrix_t = undefined;
        abi.cairo_get_font_matrix(self.ctx, &font_matrix);

        var translate_matrix: abi.cairo_matrix_t = undefined;
        abi.cairo_matrix_init_translate(&translate_matrix, x, y);

        var result: abi.cairo_matrix_t = undefined;
        abi.cairo_matrix_multiply(&result, &font_matrix, &translate_matrix);

        abi.cairo_set_font_matrix(self.ctx, &result);
        self.showGlyphs(glyphs);
    }

    pub fn setScaledFont(self: Self, scaled_font: ScaledFont) void {
        abi.cairo_set_scaled_font(self.ctx, scaled_font.scaled_font);
    }

    const Self = @This();
    const Err = error{
        FAILED_TO_CREATE_CAIRO_CONTEXT,
        FAILED_TO_RESIZE_SURFACE,
    };
};

pub const ScaledFont = struct {
    var fonts: ScaledFontHashMap = undefined;

    scaled_font: *abi.cairo_scaled_font_t,

    pub fn init(allocator: std.mem.Allocator) void {
        fonts = ScaledFontHashMap.init(allocator);
    }

    pub fn deinit() void {
        fonts.deinit();
    }

    pub fn get(size: f64, font: []const u8) !Self {
        if (fonts.contains(.{ size, font })) {
            return .{
                .scaled_font = fonts.get(.{ size, font }).?.ref,
            };
        }

        const face = try ft.Library.current.?.newFace(font, 0);
        const ft_font = abi.cairo_ft_font_face_create_for_ft_face(face, 0).?;
        var key: abi.cairo_user_data_key_t = undefined;
        if (abi.cairo_font_face_set_user_data(ft_font, @ptrCast(&key), face, @ptrCast(&abi.FT_Done_Face)) != 0) {
            abi.cairo_font_face_destroy(ft_font);
            _ = abi.FT_Done_Face(face);
            return Err.FAILED_TO_CREATE_FACE;
        }
        const scaled_font = try Self.new(ft_font, .{ .size = size });
        try fonts.put(.{ size, font }, .{ .ref = scaled_font.scaled_font });
        return scaled_font;
    }

    pub fn new(font: ?*abi.cairo_font_face_t, options: FontOptions) !Self {
        var font_matrix: abi.cairo_matrix_t = undefined;
        var ctm: abi.cairo_matrix_t = undefined;

        const font_options: *abi.cairo_font_options_t = abi.cairo_font_options_create() orelse return Err.FAILED_TO_CREATE_SCALED_FONT;
        defer abi.cairo_font_options_destroy(font_options);

        abi.cairo_matrix_init_scale(&font_matrix, @floatCast(options.size), @floatCast(options.size));
        abi.cairo_matrix_init_identity(&ctm);

        const scaled_font = abi.cairo_scaled_font_create(font, &font_matrix, &ctm, font_options) orelse return Err.FAILED_TO_CREATE_SCALED_FONT;

        return .{
            .scaled_font = scaled_font,
        };
    }

    pub fn textToGlyphs(self: Self, x: f64, y: f64, str: []const u8, glyphs: []abi.cairo_glyph_t) !usize {
        var _glyphs: *abi.cairo_glyph_t = &glyphs[0];
        var num_of_glyphs: c_int = @intCast(glyphs.len);

        if (abi.cairo_scaled_font_text_to_glyphs(self.scaled_font, @floatCast(x), @floatCast(y), @ptrCast(&str[0]), @intCast(str.len), @ptrCast(&_glyphs), &num_of_glyphs, @ptrFromInt(0), @ptrFromInt(0), @ptrFromInt(0)) != abi.CAIRO_STATUS_SUCCESS) {
            return Err.FAILED_TO_CONVERT_TO_GLYPHS;
        }

        // if num_of_glyphs increased then abi allocated its own array
        if (num_of_glyphs > @as(c_int, @intCast(glyphs.len))) {
            abi.cairo_glyph_free(@ptrCast(_glyphs));
            return Err.FAILED_TO_CONVERT_TO_GLYPHS;
        }

        return @intCast(num_of_glyphs);
    }

    pub fn getTextExtents(self: Self, text: []const u8) abi.cairo_text_extents_t {
        var extents: abi.cairo_text_extents_t = undefined;
        abi.cairo_scaled_font_text_extents(self.scaled_font, @ptrCast(text), @ptrCast(&extents));
        return extents;
    }

    pub fn destroy(self: Self) void {
        abi.cairo_scaled_font_destroy(self.scaled_font);
    }

    const Self = @This();
    const FontOptions = struct {
        size: f64 = 12,
    };
    const Err = error{
        FAILED_TO_CREATE_SCALED_FONT,
        FAILED_TO_CONVERT_TO_GLYPHS,
        FAILED_TO_GET_FONT,
        FAILED_TO_CREATE_FACE,
    };
    const ScaledFontRef = struct {
        ref: *abi.cairo_scaled_font_t,
    };

    const ScaledFontRefContext = struct {
        pub fn eql(self: @This(), a: ScaledFontRefKey, b: ScaledFontRefKey, b_index: usize) bool {
            _ = self;
            _ = b_index;
            return a[0] == b[0] and std.array_hash_map.eqlString(a[1], b[1]);
        }

        pub fn hash(self: @This(), a: ScaledFontRefKey) u32 {
            _ = self;
            return @as(u32, @intFromFloat(a[0])) + std.array_hash_map.hashString(a[1]);
        }
    };

    const ScaledFontRefKey = struct { f64, []const u8 };

    const ScaledFontHashMap = std.ArrayHashMap(ScaledFontRefKey, ScaledFontRef, ScaledFontRefContext, true);
};

pub const GlyphCache = struct {
    allocator: std.mem.Allocator,
    glyphs: []abi.cairo_glyph_t,
    utf8_text: []const u8,
    font: []const u8,
    size: f64,
    width: f64,
    height: f64,

    pub fn new(allocator: std.mem.Allocator, utf8_text: []const u8, font: []const u8, size: f64) !Self {
        const scaled_font = try ScaledFont.get(size, font);

        const glyphs: []abi.cairo_glyph_t = try allocator.alloc(abi.cairo_glyph_t, utf8_text.len);
        errdefer allocator.free(glyphs);

        _ = try scaled_font.textToGlyphs(0, 0, utf8_text, glyphs);
        var self = Self{
            .allocator = allocator,
            .glyphs = glyphs,
            .utf8_text = utf8_text,
            .font = font,
            .size = size,
            .width = 0,
            .height = 0,
        };
        self.calculateSize();

        return self;
    }

    pub fn setFont(self: *Self, font: []const u8) !void {
        const scaled_font = try ScaledFont.get(self.size, font);
        _ = try scaled_font.textToGlyphs(0, 0, self.utf8_text, self.glyphs);

        self.font = font;
        self.calculateSize();
    }

    pub fn setSize(self: *Self, size: f64) void {
        self.size = size;
        self.calculateSize();
    }

    fn calculateSize(self: *Self) void {
        const scaled_font = ScaledFont.get(self.size, self.font) catch |err| {
            switch (err) {
                else => return,
            }
        };
        const extents = scaled_font.getTextExtents(self.utf8_text);

        self.width = extents.width;
        self.height = extents.height;
    }

    pub fn destroy(self: Self) void {
        self.allocator.free(self.glyphs);
    }

    const Self = @This();
};

const testing = @import("std").testing;

test "create_graphics" {
    const graphics = try Graphics.new(testing.allocator, 640, 640);
    defer graphics.destroy();
}

test "resize_graphics" {
    var graphics = try Graphics.new(testing.allocator, 640, 640);
    defer graphics.destroy();

    try graphics.resize(320, 320);
    try testing.expect(graphics.surface.width == 320);
    try testing.expect(graphics.surface.height == 320);
}
