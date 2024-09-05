parent: ?*Self = null,
children: std.ArrayList(*Self),
invalid: bool = true,

pos: Position(f32) = .{ .x = 0, .y = 0 },
calculated_size: Size(f32) = .{ .width = 0, .height = 0 },

vtable: *const VTable,

pub fn addChild(self: *Self, child: *Self) !void {
    try self.children.append(child);
}

pub fn addChildAt(self: *Self, child: *Self, i: usize) void {
    self.children.insert(i, child);
}

pub fn removeChild(self: *Self, c: *Self) bool {
    for (self.children.items, 0..) |child, i| {
        if (c == child) {
            _ = self.children.orderedRemove(i);
            return true;
        }
    }
    return false;
}

pub fn destroy(self: *Self) void {
    if (self.parent) |p| {
        _ = p.removeChild(self);
    }

    for (self.children.items) |child| {
        child.destroy();
    }
    self.children.deinit();

    self.vtable.remove(self) catch |err| {
        std.debug.print("Component Context failed to destroy due to '{}'", .{err});
    };
}

pub fn invalidate(self: *Self) void {
    if (self.parent) |parent| {
        parent.invalid = true;
    }
    self.invalid = true;
    for (self.children.items) |child| {
        child.invalidate();
    }
}

pub fn getStruct(self: *Self, T: type) *T {
    return @fieldParentPtr("component", self);
}

pub fn getAbsPos(self: *Self) Position(f32) {
    var pos = self.pos;
    var current = self;
    while(current.parent) |parent| {
        current = parent;
        pos.x += current.x;
        pos.y += current.y;
    }
    return pos;
}

const std = @import("std");
const gfx = @import("../graphics.zig");
const Position = @import("ui.zig").Position;
const Size = @import("ui.zig").Size;
const App = @import("../App.zig");

const Self = @This();
const VTable = struct {
    update: *const fn (*Self, *App) anyerror!void,
    sync: *const fn (*Self, *App, *gfx.Graphics) anyerror!void,
    remove: *const fn (*Self) anyerror!void,
};
