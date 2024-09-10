pub var events: std.ArrayList(WindowEvent) = undefined;

pub fn init(allocator: std.mem.Allocator) void {
    events = std.ArrayList(WindowEvent).init(allocator);
}
pub fn setupEvents(window: glfw.Window) void {
    window.setCursorPosCallback(cursorPosCallback);
    window.setMouseButtonCallback(mouseButtonCallback);
    window.setScrollCallback(scrollCallback);
    window.setKeyCallback(keyCallback);
    window.setCharCallback(charCallback);
}

pub fn deinit() void {
    events.deinit();
}

pub fn cursorPosCallback(window: glfw.Window, x: f64, y: f64) void {
    _ = window;
    events.append(.{
        .cursor_pos = .{
            .x = x,
            .y = y,
        },
    }) catch |err| {
        std.log.err("[{}] Unable to push cursor pos event\n", .{err});
    };
}

pub fn mouseButtonCallback(window: glfw.Window, button: glfw.MouseButton, action: glfw.Action, mods: glfw.Mods) void {
    _ = window;
    events.append(.{
        .mouse_button = .{
            .button = button,
            .action = action,
            .mods = mods,
        },
    }) catch |err| {
        std.log.err("[{}] Unable to push mouse button event\n", .{err});
    };
}

pub fn scrollCallback(window: glfw.Window, x: f64, y: f64) void {
    _ = window;
    events.append(.{
        .scroll = .{
            .x = x,
            .y = y,
        },
    }) catch |err| {
        std.log.err("[{}] Unable to push scroll event\n", .{err});
    };
}

pub fn keyCallback(window: glfw.Window, key: glfw.Key, scancode: i32, action: glfw.Action, mods: glfw.Mods) void {
    _ = window;
    events.append(.{
        .key = .{
            .key = key,
            .scancode = scancode,
            .action = action,
            .mods = mods,
        },
    }) catch |err| {
        std.log.err("[{}] Unable to push key event\n", .{err});
    };
}

pub fn charCallback(window: glfw.Window, codepoint: u21) void {
    _ = window;
    events.append(.{
        .char = .{
            .codepoint = codepoint,
        },
    }) catch |err| {
        std.log.err("[{}] Unable to push char event\n", .{err});
    };
}

pub const WindowEventKind = enum {
    cursor_pos,
    mouse_button,
    scroll,
    key,
    char,
};
pub const WindowEvent = union(WindowEventKind) {
    cursor_pos: Position(f64),
    mouse_button: struct {
        button: glfw.MouseButton,
        action: glfw.Action,
        mods: glfw.Mods,
    },
    scroll: Position(f64),
    key: struct {
        key: glfw.Key,
        scancode: i32,
        action: glfw.Action,
        mods: glfw.Mods,
    },
    char: struct {
        codepoint: u21,
    },
};

const std = @import("std");
const glfw = @import("glfw");
const Position = @import("ui/ui.zig").Position;
