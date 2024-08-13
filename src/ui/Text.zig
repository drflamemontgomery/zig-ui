allocator: std.mem.Allocator,
text: []const u8,
glyphs: GlyphCache,
color: ui.Color = .{ .r = 1, .g = 1, .b = 1 },
component: ?Component = null,

/// Create a `Text` object that automatically caches glyphs and allocates
/// a font
pub fn new(allocator: std.mem.Allocator, text: []const u8, options: Options) !Self {
    const glyphs = try GlyphCache.new(allocator, text, options.font, options.size);

    return Self{
        .text = text,
        .glyphs = glyphs,
        .allocator = allocator,
    };
}

pub fn getComponent(self: *Self, allocator: std.mem.Allocator, parent: ?*Component) !Component {
    if (self.component == null) {
        self.component = Component{
            .context = @ptrCast(self),
            .parent = parent,
            .children = std.ArrayList(*Component).init(allocator),
            .update = update,
            .sync = sync,
            .remove = _remove,
        };
        if (parent) |p| {
            try p.addChild(&self.component.?);
        }
    }

    return self.component.?;
}

pub fn update(component: *Component) anyerror!void {
    const self: *const Self = @alignCast(@ptrCast(component.context));
    if (!component.invalid) return;
    std.debug.print("[Text]: {s}\n", .{self.text});
    component.calculatedSize.width = @floatCast(self.glyphs.width);
    component.calculatedSize.height = @floatCast(self.glyphs.height);
}

pub fn sync(component: *Component, graphics: *Graphics) anyerror!void {
    const self: *const Self = @alignCast(@ptrCast(component.context));
    if (!component.invalid) return;
    component.invalid = false;

    const pos: ui.Position(f32) = component.pos;
    const scaled_font = try ScaledFont.get(self.glyphs.size, self.glyphs.font);
    graphics.setScaledFont(scaled_font);
    graphics.setSourceRGB(self.color.r, self.color.g, self.color.b);
    graphics.showGlyphsAt(pos.x, pos.y + self.glyphs.height, self.glyphs.glyphs);
    graphics.fill();
}

pub fn destroy(self: *Self) void {
    if (self.component) |*component| {
        component.destroy();
    } else {
        self.allocator.free(self.glyphs);
    }
}

fn _remove(component: *Component) anyerror!void {
    const _self: *const Self = @alignCast(@ptrCast(component.context));
    const self: *Self = @constCast(_self);
    self.component = null;
    self.glyphs.destroy();
}

const std = @import("std");
const ui = @import("ui.zig");
const ft = @import("../ft.zig");
const cairo = @import("abi").cairo;
const freetype = @import("abi").freetype;
const Component = ui.Component;
const Graphics = @import("../graphics.zig").Graphics;
const ScaledFont = @import("../graphics.zig").ScaledFont;
const GlyphCache = @import("../graphics.zig").GlyphCache;

const Self = @This();
const Err = error{
    FAILED_TO_CREATE_FACE,
};
const Options = struct {
    font: []const u8 = "/usr/share/fonts/steam-fonts/arial.ttf",
    size: f64 = 12,
};
