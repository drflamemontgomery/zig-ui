const std = @import("std");
const zigui = @import("zig-ui");
const App = zigui.App;
const Text = zigui.ui.Text;

pub fn main() !void {
    try App.init();
    defer App.deinit();

    var app = try App.create(.{
        .title = "Hello World!",
        .width = 320,
        .height = 320,

        .init = init,
        .main_loop = mainLoop,
    });
    defer app.destroy();

    try app.run();
}

fn init(app: *App) anyerror!void {
    app.state.text = try Text.new(App.arena, "Hello World!", .{});
    try app.window.ctx.addChild(&app.state.text.component);
}

fn mainLoop(app: *App) anyerror!void {
    _ = app;
}
