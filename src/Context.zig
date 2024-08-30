/// Root node for UI trees.
/// It handles all the updating and syncing of
/// `Component`s

pub fn emptyFn(component:*Component) anyerror!void {
    _ = component;
}
pub fn emptySync(component:*Component, graphics:*Graphics) anyerror!void {
    _ = component;
    _ = graphics;
}

pub fn new(allocator:std.mem.Allocator) Component {
    return .{
        .parent = null,
        .children = std.ArrayList(*Component).init(allocator),

        .vtable = &.{
            .update = emptyFn,
            .sync = emptySync,
            .remove = emptyFn,
        },
    };
}

/// Update all the components in the Context Tree
pub fn update(component: *Component) !void {
    for (component.children.items) |child| {
        try update(child);
        try child.vtable.update(child);
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

fn _sync(component: *Component, graphics: *Graphics) anyerror!void {
    for (component.children.items) |child| {
        try child.vtable.sync(child, graphics);
        try _sync(child, graphics);
    }
}

pub fn syncAndCalculateSize(component: *Component, graphics: *Graphics) anyerror!void {
    component.size = .{
        .width = @floatFromInt(graphics.surface.width),
        .height = @floatFromInt(graphics.surface.height),
    };
    try sync(component, graphics);
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
const ContextComponent = ui.Component(Self);
// Test creation of a Root Context
test "create_root_component" {
    var graphics = try Graphics.new(std.testing.allocator, 320, 320);
    defer graphics.destroy();

    var root = new(std.testing.allocator);
    defer root.destroy();

    try testing.expect(root.children.items.len == 0);

    try update(&root);
    try sync(&root, &graphics);
}

test "create_text_components" {
    // We need to initialize Font Libraries for Text objects to be created
    const ScaledFont = @import("graphics.zig").ScaledFont;
    _ = try ft.Library.init();

    ScaledFont.init(std.testing.allocator);
    defer ScaledFont.deinit();

    var graphics = try Graphics.new(std.testing.allocator, 320, 320);
    defer graphics.destroy();

    var root = new(std.testing.allocator);
    defer root.destroy();

    try testing.expect(root.children.items.len == 0);

    var text = try ui.Text.new(std.testing.allocator, "Hello", .{});
    try root.addChild(&text.component);

    defer text.destroy();

    try testing.expect(root.children.items.len == 1);

    // Get the Text object from the component
    const _text: *ui.Text = root.children.items[0].getStruct(ui.Text);
    try testing.expect(std.mem.eql(u8, _text.text, "Hello"));

    text.setText("World!");
    try testing.expect(std.mem.eql(u8, _text.text, "World!"));
    

    try update(&root);
    try sync(&root, &graphics);
}
