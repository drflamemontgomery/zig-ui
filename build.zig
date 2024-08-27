const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const glfw_dep = b.dependency("mach_glfw", .{
        .target = target,
        .optimize = optimize,
    });

    const gl_bindings = @import("zigglgen").generateBindingsModule(b, .{
        .api = .gl,
        .version = .@"2.0",
        .extensions = &.{ .ARB_multi_bind, .ARB_compatibility, .ARB_multitexture, .EXT_texture, .ARB_texture_rectangle },
    });

    const zigui_module = b.addModule("zig-ui", .{
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("src/root.zig"),
    });

    zigui_module.addImport("glfw", glfw_dep.module("mach-glfw"));
    zigui_module.addImport("gl", gl_bindings);

    zigui_module.linkSystemLibrary("glfw", .{});
    zigui_module.linkSystemLibrary("GL", .{});
    zigui_module.linkSystemLibrary("cairo", .{});
    zigui_module.linkSystemLibrary("freetype", .{});
    zigui_module.linkSystemLibrary("fontconfig", .{});

    const zigui_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/tests.zig"),
        .target = target,
        .optimize = optimize,
    });

    zigui_unit_tests.linkSystemLibrary("cairo");
    zigui_unit_tests.linkSystemLibrary("freetype");
    zigui_unit_tests.linkSystemLibrary("fontconfig");
    zigui_unit_tests.linkLibC();

    const run_zigui_unit_tests = b.addRunArtifact(zigui_unit_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_zigui_unit_tests.step);

    const examples_step = b.step("examples", "Run examples");
    const example_files = .{
        "hello_world",
        "fps",
    };
    inline for (example_files) |example| {
        const example_step = b.addExecutable(.{
            .name = example,
            .root_source_file = b.path("examples/" ++ example ++ "/main.zig"),
            .target = target,
            .optimize = optimize,
        });
        example_step.root_module.addImport("zig-ui", zigui_module);
        example_step.linkLibC();
        const example_install = b.addInstallArtifact(example_step, .{
            .dest_dir = .{ .override = .prefix },
        });
        examples_step.dependOn(&example_install.step);
    }
}
