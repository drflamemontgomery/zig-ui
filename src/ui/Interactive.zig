size: Size(f32) = .{ .width = 100, .height = 100 },
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

pub fn sync(component: *Component, graphics: *Graphics) anyerror!void {
    _ = graphics;

    const self = component.getStruct(Self);
    const abs_pos = component.getAbsPos();
    const mouse_pos = Position(f32){ .x = 0, .y = 0 }; // TODO Get Mouse Position

    if(ui.AABB(f32).fromStructs(abs_pos, self.size).contains(mouse_pos)) {
    }
}

pub fn update(component: *Component) anyerror!void {
    const self = component.getStruct(Self);
    _ = self;
    // TODO implement update
}

pub fn remove(component: *Component) anyerror!void {
    const self  = component.getStruct(Self);
    _ = self;
}

const std = @import("std");
const ui = @import("ui.zig");
const Size = ui.Size;
const Position = ui.Position;
const Component = ui.Component;
const Graphics = @import("../graphics.zig").Graphics;

const VTable = struct {
    handleEvent: fn (*Event) void,
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
    relX: f32 = 0,
    relY: f32 = 0,
    relZ: f32 = 0,
    touchId: i32 = 0,
    wheelDelta: f32 = 0,
};
const Self = @This();
