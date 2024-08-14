const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/tests.zig"),
        .target = target,
        .optimize = optimize,
    });

    const mach_freetype_dep = b.dependency("mach_freetype", .{
        .target = target,
        .optimize = optimize,
    });

    exe_unit_tests.root_module.addImport("mach-freetype", mach_freetype_dep.module("mach-freetype"));

    exe_unit_tests.linkSystemLibrary("cairo");
    exe_unit_tests.linkSystemLibrary("freetype");
    exe_unit_tests.linkSystemLibrary("fontconfig");
    exe_unit_tests.linkLibC();

    const run_exe_unit_tests = b.addRunArtifact(exe_unit_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_exe_unit_tests.step);
}
