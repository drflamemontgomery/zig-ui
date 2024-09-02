allocator: std.mem.Allocator,
text: []const u8,
glyphs: GlyphCache,
color: ui.Color = .{ .r = 1, .g = 1, .b = 1 },
component: Component,

/// Create a `Text` object that automatically caches glyphs and allocates
/// a font
pub fn new(allocator: std.mem.Allocator, text: []const u8, options: Options) !Self {
    const glyphs = try GlyphCache.new(allocator, text, options.font orelse ft.Library.default_font_file, options.size);

    return Self{
        .text = text,
        .glyphs = glyphs,
        .allocator = allocator,

        .component = .{
            .children = std.ArrayList(*Component).init(allocator),
            .vtable = &.{
                .sync = sync,
                .update = update,
                .remove = remove,
            },
        },
    };
}

pub fn setText(self: *Self, text:[]const u8) void {
    self.text = text;
    self.glyphs.setText(text);
}

pub fn update(component: *Component) anyerror!void {
    const self = component.getStruct(Self);
    if (!component.invalid) return;
    component.calculated_size.width = @floatCast(self.glyphs.width);
    component.calculated_size.height = @floatCast(self.glyphs.height);
}

pub fn sync(component: *Component, graphics: *Graphics) anyerror!void {
    const self = component.getStruct(Self);
    if (!component.invalid) return;
    component.invalid = false;
    try self.glyphs.validate();

    const pos: ui.Position(f32) = component.pos;
    const scaled_font = try ScaledFont.get(self.glyphs.size, self.glyphs.font);
    graphics.setScaledFont(scaled_font);
    graphics.setSourceRGB(self.color.r, self.color.g, self.color.b);
    graphics.showGlyphsAt(pos.x, pos.y + self.glyphs.height, self.glyphs.glyphs.?);
    graphics.fill();
}

pub fn destroy(self: *Self) void {
    self.component.destroy();
    self.glyphs.destroy();
}

pub fn remove(component: *Component) anyerror!void {
    const self  = component.getStruct(Self);
    self.glyphs.destroy();
}

const std = @import("std");
const ui = @import("ui.zig");
const ft = @import("../ft.zig");
const Component = ui.Component;
const Graphics = @import("../graphics.zig").Graphics;
const ScaledFont = @import("../graphics.zig").ScaledFont;
const GlyphCache = @import("../graphics.zig").GlyphCache;

const Self = @This();
const Err = error{
    FAILED_TO_CREATE_FACE,
};
const Options = struct {
    font: ?[]const u8 = null,
    size: f64 = 12,
};
