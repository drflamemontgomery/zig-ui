/// Root node for UI trees.
/// It handles all the updating and syncing of
/// `Component`s
component: Component,

pub fn new(allocator: std.mem.Allocator) Self {
    var self = Self{
        .component = undefined,
    };
    const component = Component{
        .context = &self,
        .children = std.ArrayList(*Component).init(allocator),
        .update = update,
        .sync = sync,
    };

    self.component = component;
    return self;
}

/// Update all the components in the Context Tree
pub fn update(component: *Component) !void {
    for (component.children.items) |child| {
        try update(child);
        try child.update(child);
    }
}

/// Sync occurs after updating. Use to update the graphics rendering
pub fn sync(component: *Component, graphics: *Graphics) anyerror!void {
    if (component.invalid) {
        graphics.setSourceRGB(0, 0, 0);
        graphics.clear();
        component.invalid = false;
    }

    try _sync(component, graphics);
}

pub fn destroy(self: *Self) void {
    self.component.destroy();
}

fn _sync(component: *Component, graphics: *Graphics) anyerror!void {
    for (component.children.items) |child| {
        try child.sync(child, graphics);
        try _sync(child, graphics);
    }
}

const std = @import("std");
const ui = @import("ui/ui.zig");
const Component = ui.Component;
const Graphics = @import("graphics.zig").Graphics;

const Self = @This();

//================================
// TESTING
//================================

const testing = @import("std").testing;
const ft = @import("ft.zig");
// Test creation of a Root Context
test "create_root_component" {
    var graphics = try Graphics.new(std.testing.allocator, 320, 320);
    defer graphics.destroy();

    var root = Self.new(std.testing.allocator);
    defer root.destroy();

    try testing.expect(root.component.children.items.len == 0);

    try Self.update(&root.component);
    try Self.sync(&root.component, &graphics);
}

test "create_text_components" {
    // We need to initialize Font Libraries for Text objects to be created
    const ScaledFont = @import("graphics.zig").ScaledFont;
    _ = try ft.Library.init();

    ScaledFont.init(std.testing.allocator);
    defer ScaledFont.deinit();

    var graphics = try Graphics.new(std.testing.allocator, 320, 320);
    defer graphics.destroy();

    var root = Self.new(std.testing.allocator);
    defer root.destroy();

    try testing.expect(root.component.children.items.len == 0);

    var text = try ui.Text.new(std.testing.allocator, "Hello", .{});
    _ = try text.getComponent(std.testing.allocator, &root.component);

    try testing.expect(root.component.children.items.len == 1);

    // Get the Text object from the component
    const _text: *const ui.Text = @alignCast(@ptrCast(root.component.children.items[0].context));
    try testing.expect(std.mem.eql(u8, _text.text, "Hello"));

    try Self.update(&root.component);
    try Self.sync(&root.component, &graphics);
}
