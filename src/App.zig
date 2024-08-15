init: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
after_init: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
main_loop: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
deinit: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
after_deinit: ?fn(std.mem.Allocator, *Window) anyerror!void = null,

window: Window,

var arena: std.heap.ArenaAllocator = undefined;

pub fn init() !void {
    arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
}

pub fn deinit() !void {
    arena.deinit();
}

pub fn create(options:Options) Self {

    const window = Window.new(arena.allocator(), options.title);

    return .{
        .window = window,

        .init = options.init,    
        .after_init = options.after_init,    
        .main_loop = options.main_loop,    
        .deinit = options.deinit,    
        .after_deinit = options.after_deinit,    
    };
}

pub fn run(self:Self) !void {
    if(self.init) |init_cb| {
        init_cb(arena, &self.window);
    }

    if(self.after_init) |after_init_cb| {
        after_init_cb(arena, &self.window);
    }
    
    if(self.main_loop) |main_loop_cb| {
        main_loop_cb(arena, &self.window);
    }
    
    if(self.deinit) |deinit_cb| {
        deinit_cb(arena, &self.window);
    }
    
    if(self.after_deinit) |after_deinit_cb| {
        after_deinit_cb(arena, &self.window);
    }
}

const std = @import("std");

const Self = @This();
const Window = @import("Window.zig");
const Options = struct {
    title: []const u8,

    init: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
    after_init: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
    main_loop: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
    deinit: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
    after_deinit: ?fn(std.mem.Allocator, *Window) anyerror!void = null,
};
