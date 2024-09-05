var _internal_texture_id: c_uint = 0;
var gl_procs: gl.ProcTable = undefined;

pub var current: ?*Self = null;

window: blk: {
    if (builtin.is_test) {
        break :blk EmptyStruct;
    } else {
        break :blk glfw.Window;
    }
},
ctx: Component,
graphics: gfx.Graphics,
font_lib: ft.Library,

/// Call `Window.init()` before using the Window API
pub fn init() Err!void {
    if(builtin.is_test) {
        return;
    }
    if (!glfw.init(.{})) return Err.FAILED_TO_INITIALIZE_GLFW;
}

pub fn new(allocator: std.mem.Allocator, title: [*:0]const u8, width: u32, height: u32) !Self {
    const window = blk: {
        if (builtin.is_test) {
            break :blk EmptyStruct{};
        } else {
            break :blk glfw.Window.create(width, height, title, null, null, .{
                .decorated = false,
                .context_version_major = 2,
                .context_version_minor = 0,
                .samples = 4,
                .auto_iconify = true,
            }) orelse return Err.FAILED_TO_CREATE_WINDOW;
        }
    };
    if (!builtin.is_test) {
        errdefer window.destroy();

        glfw.makeContextCurrent(window);
        window.setInputModeStickyKeys(true);

        if (!gl_procs.init(glfw.getProcAddress)) return error.FAILED_TO_INITIALIZE_OPENGL;
        gl.makeProcTableCurrent(&gl_procs);

        gl.Disable(gl.DEPTH_TEST);
        gl.Enable(gl.BLEND);
        gl.BlendFunc(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA);
        gl.Enable(gl.TEXTURE_RECTANGLE_ARB);
    }
    const graphics = try gfx.Graphics.new(allocator, width, height);
    errdefer graphics.destroy();

    const ctx = Context.new(allocator);

    const font_lib = try ft.Library.init();
    errdefer font_lib.destroy();

    const self = Self{
        .window = window,
        .ctx = ctx,
        .graphics = graphics,
        .font_lib = font_lib,
    };

    return self;
}

pub fn resize(self: *Self, width: u32, height: u32) !void {
    if (!builtin.is_test) {
        gl.Viewport(0, 0, @intCast(width), @intCast(height));
        gl.MatrixMode(gl.PROJECTION);
        gl.LoadIdentity();
        gl.Ortho(0.0, 1.0, 0.0, 1.0, -1.0, 1.0);

        gl.Clear(gl.COLOR_BUFFER_BIT);

        gl.DeleteTextures(1, @ptrCast(&_internal_texture_id));
        gl.GenTextures(1, @ptrCast(&_internal_texture_id));
        gl.BindTexture(gl.TEXTURE_RECTANGLE_ARB, _internal_texture_id);
        gl.TexImage2D(gl.TEXTURE_RECTANGLE_ARB, 0, gl.RGBA, @intCast(width), @intCast(height), 0, gl.BGRA, gl.UNSIGNED_BYTE, null);
        gl.TexEnvi(gl.TEXTURE_ENV, gl.TEXTURE_ENV_MODE, gl.DECAL);
    }
    try self.graphics.resize(width, height);
}

/// Render the Window and update the UI
pub fn update(self: *Self, app: *App) !void {
    if (!builtin.is_test) {
        gl.MatrixMode(gl.MODELVIEW);
        gl.LoadIdentity();
        gl.Clear(gl.COLOR_BUFFER_BIT);

        gl.PushMatrix();

        gl.BindTexture(gl.TEXTURE_RECTANGLE_ARB, _internal_texture_id);
        gl.TexImage2D(gl.TEXTURE_RECTANGLE_ARB, 0, gl.RGBA, @intCast(self.graphics.surface.width), @intCast(self.graphics.surface.height), 0, gl.BGRA, gl.UNSIGNED_BYTE, @ptrCast(&self.graphics.surface.data[0]));

        gl.Color3f(0, 1, 0);
        gl.Begin(gl.QUADS);

        gl.TexCoord2f(0, @floatFromInt(self.graphics.surface.height));
        gl.Vertex2f(0, 0);

        gl.TexCoord2f(@floatFromInt(self.graphics.surface.width), @floatFromInt(self.graphics.surface.height));
        gl.Vertex2f(1, 0);

        gl.TexCoord2f(@floatFromInt(self.graphics.surface.width), 0);
        gl.Vertex2f(1, 1);

        gl.TexCoord2f(0, 0);
        gl.Vertex2f(0, 1);

        gl.End();

        gl.PopMatrix();
        self.window.swapBuffers();
        glfw.pollEvents();

        const frame_size = self.window.getFramebufferSize();
        if (frame_size.width != self.graphics.surface.width or frame_size.height != self.graphics.surface.height) {
            try self.resize(frame_size.width, frame_size.height);

            self.ctx.invalidate();
        }
    }
    try Context.update(&self.ctx, app);
    try Context.syncAndCalculateSize(&self.ctx, app, &self.graphics);
}

pub fn shouldClose(self: Self) bool {
    return self.window.shouldClose();
}

pub fn destroy(self: Self) void {
    if(builtin.is_test) {
        return;
    }
    self.window.destroy();
}

/// Call `Window.terminate()` to clear resources
pub fn terminate() void {
    if(builtin.is_test) {
        return;
    }
    glfw.terminate();
}

fn onGlfwError(code: c_int, message: [*c]const u8) callconv(.C) void {
    _ = code;
    std.debug.print("{s}\n", .{message});
}

const Self = @This();
const Err = error{
    FAILED_TO_INITIALIZE_GLFW,
    FAILED_TO_CREATE_WINDOW,
    FAILED_TO_INITIALIZE_OPENGL,
};

const std = @import("std");
const builtin = @import("builtin");
const glfw = blk: {
    if (builtin.is_test) {
        break :blk EmptyStruct;
    } else {
        break :blk @import("glfw");
    }
};
const gl = blk: {
    if (builtin.is_test) {
        break :blk EmptyStruct;
    } else {
        break :blk @import("gl");
    }
};
const gfx = @import("graphics.zig");
const ft = @import("ft.zig");
const Context = @import("Context.zig");
const Component = @import("ui/ui.zig").Component;
const App = @import("App.zig");
const EmptyStruct = @import("testing.zig").EmptyStruct;
