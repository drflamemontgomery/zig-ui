size: Size(f32) = .{ .width = 100, .height = 100 },
is_active: bool = false,
vtable: *const VTable,
component: Component,

pub fn new(allocator: std.mem.Allocator, vtable: *const VTable) Self {
    return .{
        .vtable = vtable,
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

pub fn sync(component: *Component, app:*App, graphics: *Graphics) anyerror!void {
    _ = graphics;
    _ = app;
    _ = component;
}

pub fn update(component: *Component, app:*App) anyerror!void {
    _ = app;
    _ = component;
}

pub fn remove(component: *Component) anyerror!void {
    const self  = component.getStruct(Self);
    if(self.is_active) {
       App.active_app.window.setActiveInteractive(null); 
    }
}

const std = @import("std");
const ui = @import("ui.zig");
const App = @import("../App.zig");
const Size = ui.Size;
const Position = ui.Position;
const Component = ui.Component;
const Graphics = @import("../graphics.zig").Graphics;

const VTable = struct {
    handleEvent: *const fn (*Event) void,
};

const EventKind = enum {
    Push,
    Release,
    Move,
    Over,
    Out,
    Wheel,
    Focus,
    FocusLost,
    KeyDown,
    KeyUp,
    ReleaseOutside,
    Check,
};
const Event = struct {
    kind: EventKind,
    button: i32 = 0,
    cancel: bool = false,
    char_code: i32 = 0,
    key_code: i32 = 0,
    propagate: bool = true,
    relX: f64 = 0,
    relY: f64 = 0,
    relZ: f64 = 0,
    touchId: i32 = 0,
    wheelDelta: f32 = 0,
};
const Self = @This();

fn testHandleEvent(event:*Event) void {
    _ = event;
}
const testVTable: *const VTable = &.{
    .handleEvent = testHandleEvent,
};

test "create_interactive" {
    try App.init();
    defer App.deinit();

    var app = try App.create(.{ .title = "" });
    defer app.destroy();

    var interactive = Self.new(App.arena, testVTable);
    try app.window.ctx.addChild(&interactive.component);
    app.window.setActiveInteractive(&interactive);
}
