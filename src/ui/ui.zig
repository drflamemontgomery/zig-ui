const std = @import("std");
const Graphics = @import("../graphics.zig").Graphics;

pub fn Position(comptime T: type) type {
    return struct {
        x: T,
        y: T,
    };
}

pub fn Size(comptime T: type) type {
    return struct {
        width: T,
        height: T,
    };
}

pub const Color = struct {
    r: f32,
    g: f32,
    b: f32,

    pub fn fromRGB(r: f32, g: f32, b: f32) Self {
        return Self{ .r = r, .g = g, .b = b };
    }

    pub fn fromHSV(h: i32, s: f32, v: f32) Self {
        const chroma = v * s;
        const match = v - chroma;
        return fromHueChroma(h, chroma, match);
    }

    pub fn fromHSL(h: i32, s: f32, l: f32) Self {
        const chroma = (1 - @abs(2 * l - 1)) * s;
        const match = l - chroma/2;
        return fromHueChroma(h, chroma, match);
    }

    fn fromHueChroma(h: i32, chroma: f32, match: f32) Self {
        const hue = @mod(h, 360);
        const hueD:f32 = @as(f32, @floatFromInt(hue)) / 60;
        const mid = chroma * (1.0 - @abs(@mod(hueD, 2) - 1)) + match;
        const c = chroma + match;

        if (0 <= hue and hue < 60) {
            return Self{ .r = c, .g = mid, .b = match };
        } else if (60 <= hue and hue < 120) {
            return Self{ .r = mid, .g = c, .b = match };
        } else if (120 <= hue and hue < 180) {
            return Self{ .r = match, .g = c, .b = mid };
        } else if (180 <= hue and hue < 240) {
            return Self{ .r = match, .g = mid, .b = c };
        } else if (240 <= hue and hue < 300) {
            return Self{ .r = mid, .g = match, .b = c };
        }
        return Self{ .r = c, .g = match, .b = mid };
    }

    pub fn printHex(self: Self) void {
        std.debug.print("{} {} {}\n", .{ self.r, self.g, self.b });
        std.debug.print("#{X:0>2}{X:0>2}{X:0>2}\n", self.getBytes()); 
    }

    pub fn getBytes(self:Self) struct { u8, u8, u8 } {
        const r: u8 = @truncate(@min(0xFF, @as(u32, @intFromFloat(@trunc(@round(self.r * 255))))));
        const g: u8 = @truncate(@min(0xFF, @as(u32, @intFromFloat(@trunc(@round(self.g * 255))))));
        const b: u8 = @truncate(@min(0xFF, @as(u32, @intFromFloat(@trunc(@round(self.b * 255))))));
        return .{r, g, b};
    }

    const Self = @This();

    const testing = std.testing;
    test "RGB values" {
        const val1 = fromRGB(1.0, 0.0, 1.0).getBytes();
        try testing.expectEqual(255, val1[0]);
        try testing.expectEqual(0, val1[1]);
        try testing.expectEqual(255, val1[2]);

        const val2 = fromRGB(0.25, 0.5, 0.75).getBytes();
        try testing.expectEqual(64, val2[0]);
        try testing.expectEqual(128, val2[1]);
        try testing.expectEqual(191, val2[2]);
    }

    test "HSV values" {   
        const val1 = fromHSV(47, 0.12, 0.95).getBytes();
        try testing.expectEqual(242, val1[0]);
        try testing.expectEqual(236, val1[1]);
        try testing.expectEqual(213, val1[2]);

        const val2 = fromHSV(79, 0.64, 0.73).getBytes();
        try testing.expectEqual(148, val2[0]);
        try testing.expectEqual(186, val2[1]);
        try testing.expectEqual(67, val2[2]);

        const val3 = fromHSV(150, 0.28, 0.54).getBytes();
        try testing.expectEqual(99, val3[0]);
        try testing.expectEqual(138, val3[1]);
        try testing.expectEqual(118, val3[2]);

        const val4 = fromHSV(201, 0.89, 0.1).getBytes();
        try testing.expectEqual(3, val4[0]);
        try testing.expectEqual(18, val4[1]);
        try testing.expectEqual(26, val4[2]);

        const val5 = fromHSV(285, 0.55, 0.55).getBytes();
        try testing.expectEqual(121, val5[0]);
        try testing.expectEqual(63, val5[1]);
        try testing.expectEqual(140, val5[2]);
        
        const val6 = fromHSV(343, 0.22, 0.77).getBytes();
        try testing.expectEqual(196, val6[0]);
        try testing.expectEqual(153, val6[1]);
        try testing.expectEqual(165, val6[2]);
    }

    test "HSL values" {
        const val1 = fromHSL(47, 0.12, 0.95).getBytes();
        try testing.expectEqual(244, val1[0]);
        try testing.expectEqual(243, val1[1]);
        try testing.expectEqual(241, val1[2]);

        const val2 = fromHSL(79, 0.64, 0.73).getBytes();
        try testing.expectEqual(202, val2[0]);
        try testing.expectEqual(230, val2[1]);
        try testing.expectEqual(142, val2[2]);

        const val3 = fromHSL(150, 0.28, 0.54).getBytes();
        try testing.expectEqual(105, val3[0]);
        try testing.expectEqual(171, val3[1]);
        try testing.expectEqual(138, val3[2]);

        const val4 = fromHSL(201, 0.89, 0.1).getBytes();
        try testing.expectEqual(3, val4[0]);
        try testing.expectEqual(32, val4[1]);
        try testing.expectEqual(48, val4[2]);

        const val5 = fromHSL(285, 0.55, 0.55).getBytes();
        try testing.expectEqual(172, val5[0]);
        try testing.expectEqual(77, val5[1]);
        try testing.expectEqual(203, val5[2]);
        
        const val6 = fromHSL(343, 0.22, 0.77).getBytes();
        try testing.expectEqual(209, val6[0]);
        try testing.expectEqual(183, val6[1]);
        try testing.expectEqual(191, val6[2]);
    }
};

pub const Component = @import("Component.zig");
pub const Text = @import("Text.zig");
