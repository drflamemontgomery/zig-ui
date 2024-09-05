const State = @import("AppState");
pub const App = struct {
    init: ?*const fn (*Self) anyerror!void = null,
    after_init: ?*const fn (*Self) anyerror!void = null,
    main_loop: ?*const fn (*Self) anyerror!void = null,
    deinit: ?*const fn (*Self) anyerror!void = null,
    after_deinit: ?*const fn (*Self) anyerror!void = null,

    dt: f128 = 1.0 / 60.0,

    window: *Window,
    state: State,

    var arena_state: std.heap.ArenaAllocator = undefined;
    pub var arena: std.mem.Allocator = undefined;

    pub fn init() !void {
        try Window.init();

        arena_state = std.heap.ArenaAllocator.init(std.heap.page_allocator);
        arena = arena_state.allocator();

        ScaledFont.init(arena);
    }

    pub fn deinit() void {
        Window.terminate();
        ScaledFont.deinit();

        arena_state.deinit();
    }

    pub fn create(options: Options) !Self {
        const window: *Window = &(try arena.alloc(Window, 1))[0];
        window.* = try Window.new(arena, options.title, options.width, options.height);
        try window.resize(options.width, options.height);
        return .{
            .window = window,

            .state = std.mem.zeroInit(State, .{}),

            .init = options.init,
            .after_init = options.after_init,
            .main_loop = options.main_loop,
            .deinit = options.deinit,
            .after_deinit = options.after_deinit,
        };
    }

    pub fn destroy(self: Self) void {
        self.window.destroy();
    }

    pub fn run(self: *Self) !void {
        Window.current = self.window;
        defer Window.current = null;

        if (self.init) |init_cb| {
            try init_cb(self);
        }

        if (self.after_init) |after_init_cb| {
            try after_init_cb(self);
        }

        if (self.main_loop) |main_loop_cb| {
            while (!self.window.shouldClose()) {
                const stamp = std.time.nanoTimestamp();
                try self.window.update();
                try main_loop_cb(self);
                const end_stamp = std.time.nanoTimestamp();
                self.dt = @as(f128, @floatFromInt(end_stamp - stamp)) / 1000000000.0;
            }
        }

        if (self.deinit) |deinit_cb| {
            try deinit_cb(self);
        }

        if (self.after_deinit) |after_deinit_cb| {
            try after_deinit_cb(self);
        }
    }

    const std = @import("std");

    const Self = @This();
    const Window = @import("Window.zig");
    const ScaledFont = @import("graphics.zig").ScaledFont;
    const Options = struct {
        title: [*:0]const u8,
        width: u32 = 1024,
        height: u32 = 768,

        init: ?*const fn (*Self) anyerror!void = null,
        after_init: ?*const fn (*Self) anyerror!void = null,
        main_loop: ?*const fn (*Self) anyerror!void = null,
        deinit: ?*const fn (*Self) anyerror!void = null,
        after_deinit: ?*const fn (*Self) anyerror!void = null,
    };
};
