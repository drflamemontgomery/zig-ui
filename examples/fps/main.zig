const std = @import("std");
const zigui = @import("zig-ui");
const App = zigui.App(AppState);
const Text = zigui.ui.Text;
const Component = zigui.ui.Component;

const AppState = struct {
    text: Component(Text) = undefined,
    fps: []u8 = undefined,
};

pub fn main() !void {
    try App.init();
    defer App.deinit();

    var app = try App.create(.{
        .title = "FPS",
        .width = 320,
        .height = 320,

        .init = init,
        .main_loop = mainLoop,
    });
    defer app.destroy();

    try app.run();
}

fn init(app: *App) anyerror!void {
    app.state.fps = try App.arena.alloc(u8, 16);
    app.state.fps[0] = 0;

    app.state.text = Component(Text).new(App.arena, try Text.new(App.arena, "Hello World!", .{ .size = 30 }));
    app.state.text.initialize();
    try app.window.ctx.addChild(&app.state.text.component);
}

fn mainLoop(app: *App) anyerror!void {
    const fps: i128 = @intFromFloat(@floor(1.0 / app.dt));
    const fps_text: []u8 = try std.fmt.bufPrint(app.state.fps, "{}FPS", .{fps});
    app.state.text.context.setText(@ptrCast(fps_text));
    app.window.ctx.invalidate();
}