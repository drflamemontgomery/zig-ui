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

var text: Text = undefined;

fn init(app: *App) anyerror!void {
    text = try Text.new(App.arena, "Hello World!", .{});
    _ = try text.getComponent(App.arena, &app.window.ctx.component);
}

fn mainLoop(app: *App) anyerror!void {
    _ = app;
}
