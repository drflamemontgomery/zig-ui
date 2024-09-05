/// Root node for UI trees.
/// It handles all the updating and syncing of
/// `Component`s
pub fn emptyFn(component: *Component, app: *App) anyerror!void {
    _ = component;
    _ = app;
}
pub fn emptySync(component: *Component, app: *App, graphics: *Graphics) anyerror!void {
    _ = component;
    _ = app;
    _ = graphics;
}
pub fn emptyRemoveFn(component: *Component) anyerror!void {
    _ = component;
}

pub fn new(allocator: std.mem.Allocator) Component {
    return .{
        .parent = null,
        .children = std.ArrayList(*Component).init(allocator),

        .vtable = &.{
            .update = emptyFn,
            .sync = emptySync,
            .remove = emptyRemoveFn,
        },
    };
}

/// Update all the components in the Context Tree
pub fn update(component: *Component, app: *App) !void {
    for (component.children.items) |child| {
        try update(child, app);
        try child.vtable.update(child, app);
    }
}

/// Sync occurs after updating. Use to update the graphics rendering
pub fn sync(component: *Component, app: *App, graphics: *Graphics) anyerror!void {
    if (component.invalid) {
        graphics.setSourceRGB(0, 0, 0);
        graphics.clear();
        component.invalid = false;
    }

    try _sync(component, app, graphics);
}

fn _sync(component: *Component, app: *App, graphics: *Graphics) anyerror!void {
    for (component.children.items) |child| {
        try child.vtable.sync(child, app, graphics);
        try _sync(child, app, graphics);
    }
}

pub fn syncAndCalculateSize(component: *Component, app: *App, graphics: *Graphics) anyerror!void {
    component.calculated_size = .{
        .width = @floatFromInt(graphics.surface.width),
        .height = @floatFromInt(graphics.surface.height),
    };
    try sync(component, app, graphics);
}

const std = @import("std");
const ui = @import("ui/ui.zig");
const Component = ui.Component;
const Graphics = @import("graphics.zig").Graphics;
const App = @import("App.zig");

const Self = @This();

//================================
// TESTING
//================================

const testing = @import("std").testing;
const ft = @import("ft.zig");
const ContextComponent = ui.Component(Self);
// Test creation of a Root Context
test "create_root_component" {
    try App.init();
    defer App.deinit();

    var app = try App.create(.{ .title = "" });
    defer app.destroy();

    const root = &app.window.ctx;
    const graphics = &app.window.graphics;
    try testing.expect(app.window.ctx.children.items.len == 0);

    try update(root, &app);
    try sync(root, &app, graphics);
}

test "create_text_components" {
    try App.init();
    defer App.deinit();

    var app = try App.create(.{ .title = "" });
    defer app.destroy();
    var root = &app.window.ctx;
    const graphics = &app.window.graphics;

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

    try update(root, &app);
    try sync(root, &app, graphics);
}
