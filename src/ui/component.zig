const std = @import("std");
const gfx = @import("../graphics.zig");
const Position = @import("ui.zig").Position;
const Size = @import("ui.zig").Size;

pub const GenericComponent = struct {
    context: *anyopaque,
    parent: ?*Self = null,
    children: std.ArrayList(*Self),
    invalid: bool = true,

    pos: Position(f32) = .{ .x = 0, .y = 0 },
    size: ?Size(f32) = null,
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

    pub fn getContext(self: Self, T:type) *T {
        return @alignCast(@ptrCast(self.context));
    }

    const Self = @This();
    const VTable = struct {
        update: *const fn (*Self) anyerror!void,
        sync: *const fn (*Self, *gfx.Graphics) anyerror!void,
        remove: *const fn (*Self) anyerror!void,
    };
};

pub fn Component(T: type) type {
    return struct {
        const Type = T;

        context: T,
        component: GenericComponent,

        pub fn new(allocator: std.mem.Allocator, context: T) Self {
            return .{
                .context = context,
                .component = .{
                    .parent = null,
                    .children = std.ArrayList(*GenericComponent).init(allocator),

                    .context = undefined,

                    .vtable = &.{
                        .update = T.update,
                        .sync = T.sync,
                        .remove = T.remove,
                    },
                },
            };
        }

        pub fn initialize(self: *Self) void {
            self.component.context = @ptrCast(&self.context);
        }

        pub fn addChild(self: *Self, child: *GenericComponent) !void {
            try self.component.addChild(child);
        }

        pub fn addChildAt(self: *Self, child: *GenericComponent, i: usize) void {
            self.component.addChildAt(child, i);
        }

        pub fn removeChild(self: *Self, c: *GenericComponent) bool {
            return self.component.removeChild(c);
        }

        pub fn destroy(self: *Self) void {
            self.component.destroy();
        }

        pub fn invalidate(self: *Self) void {
            self.component.invalidate();
        }

        const Self = @This();
    };
}
