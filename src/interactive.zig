const std = @import("std");
const ui = @import("ui/ui.zig");
const Size = ui.Size;
const Position = ui.Position;
const Component = ui.Component;
const GenericComponent = ui.GenericComponent;
const Graphics = @import("graphics.zig").Graphics;

pub const Interactive = struct {
    size: Size(f32) = .{ .width = 100, .height = 100},
    vtable: *const VTable,

    pub fn sync(component: *GenericComponent, graphics: *Graphics) anyerror!void {
        const self = component.getContext(Self);
        // TODO implement hit testing
        _ = graphics;
    }

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
};
