pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub extern fn cairo_version() c_int;
pub extern fn cairo_version_string() [*c]const u8;
pub const cairo_bool_t = c_int;
pub const struct__cairo = opaque {};
pub const cairo_t = struct__cairo;
pub const struct__cairo_surface = opaque {};
pub const cairo_surface_t = struct__cairo_surface;
pub const struct__cairo_device = opaque {};
pub const cairo_device_t = struct__cairo_device;
pub const struct__cairo_matrix = extern struct {
    xx: f64 = @import("std").mem.zeroes(f64),
    yx: f64 = @import("std").mem.zeroes(f64),
    xy: f64 = @import("std").mem.zeroes(f64),
    yy: f64 = @import("std").mem.zeroes(f64),
    x0: f64 = @import("std").mem.zeroes(f64),
    y0: f64 = @import("std").mem.zeroes(f64),
};
pub const cairo_matrix_t = struct__cairo_matrix;
pub const struct__cairo_pattern = opaque {};
pub const cairo_pattern_t = struct__cairo_pattern;
pub const cairo_destroy_func_t = ?*const fn (?*anyopaque) callconv(.C) void;
pub const struct__cairo_user_data_key = extern struct {
    unused: c_int = @import("std").mem.zeroes(c_int),
};
pub const cairo_user_data_key_t = struct__cairo_user_data_key;
pub const CAIRO_STATUS_SUCCESS: c_int = 0;
pub const CAIRO_STATUS_NO_MEMORY: c_int = 1;
pub const CAIRO_STATUS_INVALID_RESTORE: c_int = 2;
pub const CAIRO_STATUS_INVALID_POP_GROUP: c_int = 3;
pub const CAIRO_STATUS_NO_CURRENT_POINT: c_int = 4;
pub const CAIRO_STATUS_INVALID_MATRIX: c_int = 5;
pub const CAIRO_STATUS_INVALID_STATUS: c_int = 6;
pub const CAIRO_STATUS_NULL_POINTER: c_int = 7;
pub const CAIRO_STATUS_INVALID_STRING: c_int = 8;
pub const CAIRO_STATUS_INVALID_PATH_DATA: c_int = 9;
pub const CAIRO_STATUS_READ_ERROR: c_int = 10;
pub const CAIRO_STATUS_WRITE_ERROR: c_int = 11;
pub const CAIRO_STATUS_SURFACE_FINISHED: c_int = 12;
pub const CAIRO_STATUS_SURFACE_TYPE_MISMATCH: c_int = 13;
pub const CAIRO_STATUS_PATTERN_TYPE_MISMATCH: c_int = 14;
pub const CAIRO_STATUS_INVALID_CONTENT: c_int = 15;
pub const CAIRO_STATUS_INVALID_FORMAT: c_int = 16;
pub const CAIRO_STATUS_INVALID_VISUAL: c_int = 17;
pub const CAIRO_STATUS_FILE_NOT_FOUND: c_int = 18;
pub const CAIRO_STATUS_INVALID_DASH: c_int = 19;
pub const CAIRO_STATUS_INVALID_DSC_COMMENT: c_int = 20;
pub const CAIRO_STATUS_INVALID_INDEX: c_int = 21;
pub const CAIRO_STATUS_CLIP_NOT_REPRESENTABLE: c_int = 22;
pub const CAIRO_STATUS_TEMP_FILE_ERROR: c_int = 23;
pub const CAIRO_STATUS_INVALID_STRIDE: c_int = 24;
pub const CAIRO_STATUS_FONT_TYPE_MISMATCH: c_int = 25;
pub const CAIRO_STATUS_USER_FONT_IMMUTABLE: c_int = 26;
pub const CAIRO_STATUS_USER_FONT_ERROR: c_int = 27;
pub const CAIRO_STATUS_NEGATIVE_COUNT: c_int = 28;
pub const CAIRO_STATUS_INVALID_CLUSTERS: c_int = 29;
pub const CAIRO_STATUS_INVALID_SLANT: c_int = 30;
pub const CAIRO_STATUS_INVALID_WEIGHT: c_int = 31;
pub const CAIRO_STATUS_INVALID_SIZE: c_int = 32;
pub const CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED: c_int = 33;
pub const CAIRO_STATUS_DEVICE_TYPE_MISMATCH: c_int = 34;
pub const CAIRO_STATUS_DEVICE_ERROR: c_int = 35;
pub const CAIRO_STATUS_INVALID_MESH_CONSTRUCTION: c_int = 36;
pub const CAIRO_STATUS_DEVICE_FINISHED: c_int = 37;
pub const CAIRO_STATUS_JBIG2_GLOBAL_MISSING: c_int = 38;
pub const CAIRO_STATUS_PNG_ERROR: c_int = 39;
pub const CAIRO_STATUS_FREETYPE_ERROR: c_int = 40;
pub const CAIRO_STATUS_WIN32_GDI_ERROR: c_int = 41;
pub const CAIRO_STATUS_TAG_ERROR: c_int = 42;
pub const CAIRO_STATUS_DWRITE_ERROR: c_int = 43;
pub const CAIRO_STATUS_SVG_FONT_ERROR: c_int = 44;
pub const CAIRO_STATUS_LAST_STATUS: c_int = 45;
pub const enum__cairo_status = c_uint;
pub const cairo_status_t = enum__cairo_status;
pub const CAIRO_CONTENT_COLOR: c_int = 4096;
pub const CAIRO_CONTENT_ALPHA: c_int = 8192;
pub const CAIRO_CONTENT_COLOR_ALPHA: c_int = 12288;
pub const enum__cairo_content = c_uint;
pub const cairo_content_t = enum__cairo_content;
pub const CAIRO_FORMAT_INVALID: c_int = -1;
pub const CAIRO_FORMAT_ARGB32: c_int = 0;
pub const CAIRO_FORMAT_RGB24: c_int = 1;
pub const CAIRO_FORMAT_A8: c_int = 2;
pub const CAIRO_FORMAT_A1: c_int = 3;
pub const CAIRO_FORMAT_RGB16_565: c_int = 4;
pub const CAIRO_FORMAT_RGB30: c_int = 5;
pub const CAIRO_FORMAT_RGB96F: c_int = 6;
pub const CAIRO_FORMAT_RGBA128F: c_int = 7;
pub const enum__cairo_format = c_int;
pub const cairo_format_t = enum__cairo_format;
pub const CAIRO_DITHER_NONE: c_int = 0;
pub const CAIRO_DITHER_DEFAULT: c_int = 1;
pub const CAIRO_DITHER_FAST: c_int = 2;
pub const CAIRO_DITHER_GOOD: c_int = 3;
pub const CAIRO_DITHER_BEST: c_int = 4;
pub const enum__cairo_dither = c_uint;
pub const cairo_dither_t = enum__cairo_dither;
pub extern fn cairo_pattern_set_dither(pattern: ?*cairo_pattern_t, dither: cairo_dither_t) void;
pub extern fn cairo_pattern_get_dither(pattern: ?*cairo_pattern_t) cairo_dither_t;
pub const cairo_write_func_t = ?*const fn (?*anyopaque, [*c]const u8, c_uint) callconv(.C) cairo_status_t;
pub const cairo_read_func_t = ?*const fn (?*anyopaque, [*c]u8, c_uint) callconv(.C) cairo_status_t;
pub const struct__cairo_rectangle_int = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
};
pub const cairo_rectangle_int_t = struct__cairo_rectangle_int;
pub extern fn cairo_create(target: ?*cairo_surface_t) ?*cairo_t;
pub extern fn cairo_reference(cr: ?*cairo_t) ?*cairo_t;
pub extern fn cairo_destroy(cr: ?*cairo_t) void;
pub extern fn cairo_get_reference_count(cr: ?*cairo_t) c_uint;
pub extern fn cairo_get_user_data(cr: ?*cairo_t, key: [*c]const cairo_user_data_key_t) ?*anyopaque;
pub extern fn cairo_set_user_data(cr: ?*cairo_t, key: [*c]const cairo_user_data_key_t, user_data: ?*anyopaque, destroy: cairo_destroy_func_t) cairo_status_t;
pub extern fn cairo_save(cr: ?*cairo_t) void;
pub extern fn cairo_restore(cr: ?*cairo_t) void;
pub extern fn cairo_push_group(cr: ?*cairo_t) void;
pub extern fn cairo_push_group_with_content(cr: ?*cairo_t, content: cairo_content_t) void;
pub extern fn cairo_pop_group(cr: ?*cairo_t) ?*cairo_pattern_t;
pub extern fn cairo_pop_group_to_source(cr: ?*cairo_t) void;
pub const CAIRO_OPERATOR_CLEAR: c_int = 0;
pub const CAIRO_OPERATOR_SOURCE: c_int = 1;
pub const CAIRO_OPERATOR_OVER: c_int = 2;
pub const CAIRO_OPERATOR_IN: c_int = 3;
pub const CAIRO_OPERATOR_OUT: c_int = 4;
pub const CAIRO_OPERATOR_ATOP: c_int = 5;
pub const CAIRO_OPERATOR_DEST: c_int = 6;
pub const CAIRO_OPERATOR_DEST_OVER: c_int = 7;
pub const CAIRO_OPERATOR_DEST_IN: c_int = 8;
pub const CAIRO_OPERATOR_DEST_OUT: c_int = 9;
pub const CAIRO_OPERATOR_DEST_ATOP: c_int = 10;
pub const CAIRO_OPERATOR_XOR: c_int = 11;
pub const CAIRO_OPERATOR_ADD: c_int = 12;
pub const CAIRO_OPERATOR_SATURATE: c_int = 13;
pub const CAIRO_OPERATOR_MULTIPLY: c_int = 14;
pub const CAIRO_OPERATOR_SCREEN: c_int = 15;
pub const CAIRO_OPERATOR_OVERLAY: c_int = 16;
pub const CAIRO_OPERATOR_DARKEN: c_int = 17;
pub const CAIRO_OPERATOR_LIGHTEN: c_int = 18;
pub const CAIRO_OPERATOR_COLOR_DODGE: c_int = 19;
pub const CAIRO_OPERATOR_COLOR_BURN: c_int = 20;
pub const CAIRO_OPERATOR_HARD_LIGHT: c_int = 21;
pub const CAIRO_OPERATOR_SOFT_LIGHT: c_int = 22;
pub const CAIRO_OPERATOR_DIFFERENCE: c_int = 23;
pub const CAIRO_OPERATOR_EXCLUSION: c_int = 24;
pub const CAIRO_OPERATOR_HSL_HUE: c_int = 25;
pub const CAIRO_OPERATOR_HSL_SATURATION: c_int = 26;
pub const CAIRO_OPERATOR_HSL_COLOR: c_int = 27;
pub const CAIRO_OPERATOR_HSL_LUMINOSITY: c_int = 28;
pub const enum__cairo_operator = c_uint;
pub const cairo_operator_t = enum__cairo_operator;
pub extern fn cairo_set_operator(cr: ?*cairo_t, op: cairo_operator_t) void;
pub extern fn cairo_set_source(cr: ?*cairo_t, source: ?*cairo_pattern_t) void;
pub extern fn cairo_set_source_rgb(cr: ?*cairo_t, red: f64, green: f64, blue: f64) void;
pub extern fn cairo_set_source_rgba(cr: ?*cairo_t, red: f64, green: f64, blue: f64, alpha: f64) void;
pub extern fn cairo_set_source_surface(cr: ?*cairo_t, surface: ?*cairo_surface_t, x: f64, y: f64) void;
pub extern fn cairo_set_tolerance(cr: ?*cairo_t, tolerance: f64) void;
pub const CAIRO_ANTIALIAS_DEFAULT: c_int = 0;
pub const CAIRO_ANTIALIAS_NONE: c_int = 1;
pub const CAIRO_ANTIALIAS_GRAY: c_int = 2;
pub const CAIRO_ANTIALIAS_SUBPIXEL: c_int = 3;
pub const CAIRO_ANTIALIAS_FAST: c_int = 4;
pub const CAIRO_ANTIALIAS_GOOD: c_int = 5;
pub const CAIRO_ANTIALIAS_BEST: c_int = 6;
pub const enum__cairo_antialias = c_uint;
pub const cairo_antialias_t = enum__cairo_antialias;
pub extern fn cairo_set_antialias(cr: ?*cairo_t, antialias: cairo_antialias_t) void;
pub const CAIRO_FILL_RULE_WINDING: c_int = 0;
pub const CAIRO_FILL_RULE_EVEN_ODD: c_int = 1;
pub const enum__cairo_fill_rule = c_uint;
pub const cairo_fill_rule_t = enum__cairo_fill_rule;
pub extern fn cairo_set_fill_rule(cr: ?*cairo_t, fill_rule: cairo_fill_rule_t) void;
pub extern fn cairo_set_line_width(cr: ?*cairo_t, width: f64) void;
pub extern fn cairo_set_hairline(cr: ?*cairo_t, set_hairline: cairo_bool_t) void;
pub const CAIRO_LINE_CAP_BUTT: c_int = 0;
pub const CAIRO_LINE_CAP_ROUND: c_int = 1;
pub const CAIRO_LINE_CAP_SQUARE: c_int = 2;
pub const enum__cairo_line_cap = c_uint;
pub const cairo_line_cap_t = enum__cairo_line_cap;
pub extern fn cairo_set_line_cap(cr: ?*cairo_t, line_cap: cairo_line_cap_t) void;
pub const CAIRO_LINE_JOIN_MITER: c_int = 0;
pub const CAIRO_LINE_JOIN_ROUND: c_int = 1;
pub const CAIRO_LINE_JOIN_BEVEL: c_int = 2;
pub const enum__cairo_line_join = c_uint;
pub const cairo_line_join_t = enum__cairo_line_join;
pub extern fn cairo_set_line_join(cr: ?*cairo_t, line_join: cairo_line_join_t) void;
pub extern fn cairo_set_dash(cr: ?*cairo_t, dashes: [*c]const f64, num_dashes: c_int, offset: f64) void;
pub extern fn cairo_set_miter_limit(cr: ?*cairo_t, limit: f64) void;
pub extern fn cairo_translate(cr: ?*cairo_t, tx: f64, ty: f64) void;
pub extern fn cairo_scale(cr: ?*cairo_t, sx: f64, sy: f64) void;
pub extern fn cairo_rotate(cr: ?*cairo_t, angle: f64) void;
pub extern fn cairo_transform(cr: ?*cairo_t, matrix: [*c]const cairo_matrix_t) void;
pub extern fn cairo_set_matrix(cr: ?*cairo_t, matrix: [*c]const cairo_matrix_t) void;
pub extern fn cairo_identity_matrix(cr: ?*cairo_t) void;
pub extern fn cairo_user_to_device(cr: ?*cairo_t, x: [*c]f64, y: [*c]f64) void;
pub extern fn cairo_user_to_device_distance(cr: ?*cairo_t, dx: [*c]f64, dy: [*c]f64) void;
pub extern fn cairo_device_to_user(cr: ?*cairo_t, x: [*c]f64, y: [*c]f64) void;
pub extern fn cairo_device_to_user_distance(cr: ?*cairo_t, dx: [*c]f64, dy: [*c]f64) void;
pub extern fn cairo_new_path(cr: ?*cairo_t) void;
pub extern fn cairo_move_to(cr: ?*cairo_t, x: f64, y: f64) void;
pub extern fn cairo_new_sub_path(cr: ?*cairo_t) void;
pub extern fn cairo_line_to(cr: ?*cairo_t, x: f64, y: f64) void;
pub extern fn cairo_curve_to(cr: ?*cairo_t, x1: f64, y1: f64, x2: f64, y2: f64, x3: f64, y3: f64) void;
pub extern fn cairo_arc(cr: ?*cairo_t, xc: f64, yc: f64, radius: f64, angle1: f64, angle2: f64) void;
pub extern fn cairo_arc_negative(cr: ?*cairo_t, xc: f64, yc: f64, radius: f64, angle1: f64, angle2: f64) void;
pub extern fn cairo_rel_move_to(cr: ?*cairo_t, dx: f64, dy: f64) void;
pub extern fn cairo_rel_line_to(cr: ?*cairo_t, dx: f64, dy: f64) void;
pub extern fn cairo_rel_curve_to(cr: ?*cairo_t, dx1: f64, dy1: f64, dx2: f64, dy2: f64, dx3: f64, dy3: f64) void;
pub extern fn cairo_rectangle(cr: ?*cairo_t, x: f64, y: f64, width: f64, height: f64) void;
pub extern fn cairo_close_path(cr: ?*cairo_t) void;
pub extern fn cairo_path_extents(cr: ?*cairo_t, x1: [*c]f64, y1: [*c]f64, x2: [*c]f64, y2: [*c]f64) void;
pub extern fn cairo_paint(cr: ?*cairo_t) void;
pub extern fn cairo_paint_with_alpha(cr: ?*cairo_t, alpha: f64) void;
pub extern fn cairo_mask(cr: ?*cairo_t, pattern: ?*cairo_pattern_t) void;
pub extern fn cairo_mask_surface(cr: ?*cairo_t, surface: ?*cairo_surface_t, surface_x: f64, surface_y: f64) void;
pub extern fn cairo_stroke(cr: ?*cairo_t) void;
pub extern fn cairo_stroke_preserve(cr: ?*cairo_t) void;
pub extern fn cairo_fill(cr: ?*cairo_t) void;
pub extern fn cairo_fill_preserve(cr: ?*cairo_t) void;
pub extern fn cairo_copy_page(cr: ?*cairo_t) void;
pub extern fn cairo_show_page(cr: ?*cairo_t) void;
pub extern fn cairo_in_stroke(cr: ?*cairo_t, x: f64, y: f64) cairo_bool_t;
pub extern fn cairo_in_fill(cr: ?*cairo_t, x: f64, y: f64) cairo_bool_t;
pub extern fn cairo_in_clip(cr: ?*cairo_t, x: f64, y: f64) cairo_bool_t;
pub extern fn cairo_stroke_extents(cr: ?*cairo_t, x1: [*c]f64, y1: [*c]f64, x2: [*c]f64, y2: [*c]f64) void;
pub extern fn cairo_fill_extents(cr: ?*cairo_t, x1: [*c]f64, y1: [*c]f64, x2: [*c]f64, y2: [*c]f64) void;
pub extern fn cairo_reset_clip(cr: ?*cairo_t) void;
pub extern fn cairo_clip(cr: ?*cairo_t) void;
pub extern fn cairo_clip_preserve(cr: ?*cairo_t) void;
pub extern fn cairo_clip_extents(cr: ?*cairo_t, x1: [*c]f64, y1: [*c]f64, x2: [*c]f64, y2: [*c]f64) void;
pub const struct__cairo_rectangle = extern struct {
    x: f64 = @import("std").mem.zeroes(f64),
    y: f64 = @import("std").mem.zeroes(f64),
    width: f64 = @import("std").mem.zeroes(f64),
    height: f64 = @import("std").mem.zeroes(f64),
};
pub const cairo_rectangle_t = struct__cairo_rectangle;
pub const struct__cairo_rectangle_list = extern struct {
    status: cairo_status_t = @import("std").mem.zeroes(cairo_status_t),
    rectangles: [*c]cairo_rectangle_t = @import("std").mem.zeroes([*c]cairo_rectangle_t),
    num_rectangles: c_int = @import("std").mem.zeroes(c_int),
};
pub const cairo_rectangle_list_t = struct__cairo_rectangle_list;
pub extern fn cairo_copy_clip_rectangle_list(cr: ?*cairo_t) [*c]cairo_rectangle_list_t;
pub extern fn cairo_rectangle_list_destroy(rectangle_list: [*c]cairo_rectangle_list_t) void;
pub extern fn cairo_tag_begin(cr: ?*cairo_t, tag_name: [*c]const u8, attributes: [*c]const u8) void;
pub extern fn cairo_tag_end(cr: ?*cairo_t, tag_name: [*c]const u8) void;
pub const struct__cairo_scaled_font = opaque {};
pub const cairo_scaled_font_t = struct__cairo_scaled_font;
pub const struct__cairo_font_face = opaque {};
pub const cairo_font_face_t = struct__cairo_font_face;
pub const cairo_glyph_t = extern struct {
    index: c_ulong = @import("std").mem.zeroes(c_ulong),
    x: f64 = @import("std").mem.zeroes(f64),
    y: f64 = @import("std").mem.zeroes(f64),
};
pub extern fn cairo_glyph_allocate(num_glyphs: c_int) [*c]cairo_glyph_t;
pub extern fn cairo_glyph_free(glyphs: [*c]cairo_glyph_t) void;
pub const cairo_text_cluster_t = extern struct {
    num_bytes: c_int = @import("std").mem.zeroes(c_int),
    num_glyphs: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn cairo_text_cluster_allocate(num_clusters: c_int) [*c]cairo_text_cluster_t;
pub extern fn cairo_text_cluster_free(clusters: [*c]cairo_text_cluster_t) void;
pub const CAIRO_TEXT_CLUSTER_FLAG_BACKWARD: c_int = 1;
pub const enum__cairo_text_cluster_flags = c_uint;
pub const cairo_text_cluster_flags_t = enum__cairo_text_cluster_flags;
pub const cairo_text_extents_t = extern struct {
    x_bearing: f64 = @import("std").mem.zeroes(f64),
    y_bearing: f64 = @import("std").mem.zeroes(f64),
    width: f64 = @import("std").mem.zeroes(f64),
    height: f64 = @import("std").mem.zeroes(f64),
    x_advance: f64 = @import("std").mem.zeroes(f64),
    y_advance: f64 = @import("std").mem.zeroes(f64),
};
pub const cairo_font_extents_t = extern struct {
    ascent: f64 = @import("std").mem.zeroes(f64),
    descent: f64 = @import("std").mem.zeroes(f64),
    height: f64 = @import("std").mem.zeroes(f64),
    max_x_advance: f64 = @import("std").mem.zeroes(f64),
    max_y_advance: f64 = @import("std").mem.zeroes(f64),
};
pub const CAIRO_FONT_SLANT_NORMAL: c_int = 0;
pub const CAIRO_FONT_SLANT_ITALIC: c_int = 1;
pub const CAIRO_FONT_SLANT_OBLIQUE: c_int = 2;
pub const enum__cairo_font_slant = c_uint;
pub const cairo_font_slant_t = enum__cairo_font_slant;
pub const CAIRO_FONT_WEIGHT_NORMAL: c_int = 0;
pub const CAIRO_FONT_WEIGHT_BOLD: c_int = 1;
pub const enum__cairo_font_weight = c_uint;
pub const cairo_font_weight_t = enum__cairo_font_weight;
pub const CAIRO_SUBPIXEL_ORDER_DEFAULT: c_int = 0;
pub const CAIRO_SUBPIXEL_ORDER_RGB: c_int = 1;
pub const CAIRO_SUBPIXEL_ORDER_BGR: c_int = 2;
pub const CAIRO_SUBPIXEL_ORDER_VRGB: c_int = 3;
pub const CAIRO_SUBPIXEL_ORDER_VBGR: c_int = 4;
pub const enum__cairo_subpixel_order = c_uint;
pub const cairo_subpixel_order_t = enum__cairo_subpixel_order;
pub const CAIRO_HINT_STYLE_DEFAULT: c_int = 0;
pub const CAIRO_HINT_STYLE_NONE: c_int = 1;
pub const CAIRO_HINT_STYLE_SLIGHT: c_int = 2;
pub const CAIRO_HINT_STYLE_MEDIUM: c_int = 3;
pub const CAIRO_HINT_STYLE_FULL: c_int = 4;
pub const enum__cairo_hint_style = c_uint;
pub const cairo_hint_style_t = enum__cairo_hint_style;
pub const CAIRO_HINT_METRICS_DEFAULT: c_int = 0;
pub const CAIRO_HINT_METRICS_OFF: c_int = 1;
pub const CAIRO_HINT_METRICS_ON: c_int = 2;
pub const enum__cairo_hint_metrics = c_uint;
pub const cairo_hint_metrics_t = enum__cairo_hint_metrics;
pub const CAIRO_COLOR_MODE_DEFAULT: c_int = 0;
pub const CAIRO_COLOR_MODE_NO_COLOR: c_int = 1;
pub const CAIRO_COLOR_MODE_COLOR: c_int = 2;
pub const enum__cairo_color_mode = c_uint;
pub const cairo_color_mode_t = enum__cairo_color_mode;
pub const struct__cairo_font_options = opaque {};
pub const cairo_font_options_t = struct__cairo_font_options;
pub extern fn cairo_font_options_create() ?*cairo_font_options_t;
pub extern fn cairo_font_options_copy(original: ?*const cairo_font_options_t) ?*cairo_font_options_t;
pub extern fn cairo_font_options_destroy(options: ?*cairo_font_options_t) void;
pub extern fn cairo_font_options_status(options: ?*cairo_font_options_t) cairo_status_t;
pub extern fn cairo_font_options_merge(options: ?*cairo_font_options_t, other: ?*const cairo_font_options_t) void;
pub extern fn cairo_font_options_equal(options: ?*const cairo_font_options_t, other: ?*const cairo_font_options_t) cairo_bool_t;
pub extern fn cairo_font_options_hash(options: ?*const cairo_font_options_t) c_ulong;
pub extern fn cairo_font_options_set_antialias(options: ?*cairo_font_options_t, antialias: cairo_antialias_t) void;
pub extern fn cairo_font_options_get_antialias(options: ?*const cairo_font_options_t) cairo_antialias_t;
pub extern fn cairo_font_options_set_subpixel_order(options: ?*cairo_font_options_t, subpixel_order: cairo_subpixel_order_t) void;
pub extern fn cairo_font_options_get_subpixel_order(options: ?*const cairo_font_options_t) cairo_subpixel_order_t;
pub extern fn cairo_font_options_set_hint_style(options: ?*cairo_font_options_t, hint_style: cairo_hint_style_t) void;
pub extern fn cairo_font_options_get_hint_style(options: ?*const cairo_font_options_t) cairo_hint_style_t;
pub extern fn cairo_font_options_set_hint_metrics(options: ?*cairo_font_options_t, hint_metrics: cairo_hint_metrics_t) void;
pub extern fn cairo_font_options_get_hint_metrics(options: ?*const cairo_font_options_t) cairo_hint_metrics_t;
pub extern fn cairo_font_options_get_variations(options: ?*cairo_font_options_t) [*c]const u8;
pub extern fn cairo_font_options_set_variations(options: ?*cairo_font_options_t, variations: [*c]const u8) void;
pub extern fn cairo_font_options_set_color_mode(options: ?*cairo_font_options_t, color_mode: cairo_color_mode_t) void;
pub extern fn cairo_font_options_get_color_mode(options: ?*const cairo_font_options_t) cairo_color_mode_t;
pub extern fn cairo_font_options_get_color_palette(options: ?*const cairo_font_options_t) c_uint;
pub extern fn cairo_font_options_set_color_palette(options: ?*cairo_font_options_t, palette_index: c_uint) void;
pub extern fn cairo_font_options_set_custom_palette_color(options: ?*cairo_font_options_t, index: c_uint, red: f64, green: f64, blue: f64, alpha: f64) void;
pub extern fn cairo_font_options_get_custom_palette_color(options: ?*cairo_font_options_t, index: c_uint, red: [*c]f64, green: [*c]f64, blue: [*c]f64, alpha: [*c]f64) cairo_status_t;
pub extern fn cairo_select_font_face(cr: ?*cairo_t, family: [*c]const u8, slant: cairo_font_slant_t, weight: cairo_font_weight_t) void;
pub extern fn cairo_set_font_size(cr: ?*cairo_t, size: f64) void;
pub extern fn cairo_set_font_matrix(cr: ?*cairo_t, matrix: [*c]const cairo_matrix_t) void;
pub extern fn cairo_get_font_matrix(cr: ?*cairo_t, matrix: [*c]cairo_matrix_t) void;
pub extern fn cairo_set_font_options(cr: ?*cairo_t, options: ?*const cairo_font_options_t) void;
pub extern fn cairo_get_font_options(cr: ?*cairo_t, options: ?*cairo_font_options_t) void;
pub extern fn cairo_set_font_face(cr: ?*cairo_t, font_face: ?*cairo_font_face_t) void;
pub extern fn cairo_get_font_face(cr: ?*cairo_t) ?*cairo_font_face_t;
pub extern fn cairo_set_scaled_font(cr: ?*cairo_t, scaled_font: ?*const cairo_scaled_font_t) void;
pub extern fn cairo_get_scaled_font(cr: ?*cairo_t) ?*cairo_scaled_font_t;
pub extern fn cairo_show_text(cr: ?*cairo_t, utf8: [*c]const u8) void;
pub extern fn cairo_show_glyphs(cr: ?*cairo_t, glyphs: [*c]const cairo_glyph_t, num_glyphs: c_int) void;
pub extern fn cairo_show_text_glyphs(cr: ?*cairo_t, utf8: [*c]const u8, utf8_len: c_int, glyphs: [*c]const cairo_glyph_t, num_glyphs: c_int, clusters: [*c]const cairo_text_cluster_t, num_clusters: c_int, cluster_flags: cairo_text_cluster_flags_t) void;
pub extern fn cairo_text_path(cr: ?*cairo_t, utf8: [*c]const u8) void;
pub extern fn cairo_glyph_path(cr: ?*cairo_t, glyphs: [*c]const cairo_glyph_t, num_glyphs: c_int) void;
pub extern fn cairo_text_extents(cr: ?*cairo_t, utf8: [*c]const u8, extents: [*c]cairo_text_extents_t) void;
pub extern fn cairo_glyph_extents(cr: ?*cairo_t, glyphs: [*c]const cairo_glyph_t, num_glyphs: c_int, extents: [*c]cairo_text_extents_t) void;
pub extern fn cairo_font_extents(cr: ?*cairo_t, extents: [*c]cairo_font_extents_t) void;
pub extern fn cairo_font_face_reference(font_face: ?*cairo_font_face_t) ?*cairo_font_face_t;
pub extern fn cairo_font_face_destroy(font_face: ?*cairo_font_face_t) void;
pub extern fn cairo_font_face_get_reference_count(font_face: ?*cairo_font_face_t) c_uint;
pub extern fn cairo_font_face_status(font_face: ?*cairo_font_face_t) cairo_status_t;
pub const CAIRO_FONT_TYPE_TOY: c_int = 0;
pub const CAIRO_FONT_TYPE_FT: c_int = 1;
pub const CAIRO_FONT_TYPE_WIN32: c_int = 2;
pub const CAIRO_FONT_TYPE_QUARTZ: c_int = 3;
pub const CAIRO_FONT_TYPE_USER: c_int = 4;
pub const CAIRO_FONT_TYPE_DWRITE: c_int = 5;
pub const enum__cairo_font_type = c_uint;
pub const cairo_font_type_t = enum__cairo_font_type;
pub extern fn cairo_font_face_get_type(font_face: ?*cairo_font_face_t) cairo_font_type_t;
pub extern fn cairo_font_face_get_user_data(font_face: ?*cairo_font_face_t, key: [*c]const cairo_user_data_key_t) ?*anyopaque;
pub extern fn cairo_font_face_set_user_data(font_face: ?*cairo_font_face_t, key: [*c]const cairo_user_data_key_t, user_data: ?*anyopaque, destroy: cairo_destroy_func_t) cairo_status_t;
pub extern fn cairo_scaled_font_create(font_face: ?*cairo_font_face_t, font_matrix: [*c]const cairo_matrix_t, ctm: [*c]const cairo_matrix_t, options: ?*const cairo_font_options_t) ?*cairo_scaled_font_t;
pub extern fn cairo_scaled_font_reference(scaled_font: ?*cairo_scaled_font_t) ?*cairo_scaled_font_t;
pub extern fn cairo_scaled_font_destroy(scaled_font: ?*cairo_scaled_font_t) void;
pub extern fn cairo_scaled_font_get_reference_count(scaled_font: ?*cairo_scaled_font_t) c_uint;
pub extern fn cairo_scaled_font_status(scaled_font: ?*cairo_scaled_font_t) cairo_status_t;
pub extern fn cairo_scaled_font_get_type(scaled_font: ?*cairo_scaled_font_t) cairo_font_type_t;
pub extern fn cairo_scaled_font_get_user_data(scaled_font: ?*cairo_scaled_font_t, key: [*c]const cairo_user_data_key_t) ?*anyopaque;
pub extern fn cairo_scaled_font_set_user_data(scaled_font: ?*cairo_scaled_font_t, key: [*c]const cairo_user_data_key_t, user_data: ?*anyopaque, destroy: cairo_destroy_func_t) cairo_status_t;
pub extern fn cairo_scaled_font_extents(scaled_font: ?*cairo_scaled_font_t, extents: [*c]cairo_font_extents_t) void;
pub extern fn cairo_scaled_font_text_extents(scaled_font: ?*cairo_scaled_font_t, utf8: [*c]const u8, extents: [*c]cairo_text_extents_t) void;
pub extern fn cairo_scaled_font_glyph_extents(scaled_font: ?*cairo_scaled_font_t, glyphs: [*c]const cairo_glyph_t, num_glyphs: c_int, extents: [*c]cairo_text_extents_t) void;
pub extern fn cairo_scaled_font_text_to_glyphs(scaled_font: ?*cairo_scaled_font_t, x: f64, y: f64, utf8: [*c]const u8, utf8_len: c_int, glyphs: [*c][*c]cairo_glyph_t, num_glyphs: [*c]c_int, clusters: [*c][*c]cairo_text_cluster_t, num_clusters: [*c]c_int, cluster_flags: [*c]cairo_text_cluster_flags_t) cairo_status_t;
pub extern fn cairo_scaled_font_get_font_face(scaled_font: ?*cairo_scaled_font_t) ?*cairo_font_face_t;
pub extern fn cairo_scaled_font_get_font_matrix(scaled_font: ?*cairo_scaled_font_t, font_matrix: [*c]cairo_matrix_t) void;
pub extern fn cairo_scaled_font_get_ctm(scaled_font: ?*cairo_scaled_font_t, ctm: [*c]cairo_matrix_t) void;
pub extern fn cairo_scaled_font_get_scale_matrix(scaled_font: ?*cairo_scaled_font_t, scale_matrix: [*c]cairo_matrix_t) void;
pub extern fn cairo_scaled_font_get_font_options(scaled_font: ?*cairo_scaled_font_t, options: ?*cairo_font_options_t) void;
pub extern fn cairo_toy_font_face_create(family: [*c]const u8, slant: cairo_font_slant_t, weight: cairo_font_weight_t) ?*cairo_font_face_t;
pub extern fn cairo_toy_font_face_get_family(font_face: ?*cairo_font_face_t) [*c]const u8;
pub extern fn cairo_toy_font_face_get_slant(font_face: ?*cairo_font_face_t) cairo_font_slant_t;
pub extern fn cairo_toy_font_face_get_weight(font_face: ?*cairo_font_face_t) cairo_font_weight_t;
pub extern fn cairo_user_font_face_create() ?*cairo_font_face_t;
pub const cairo_user_scaled_font_init_func_t = ?*const fn (?*cairo_scaled_font_t, ?*cairo_t, [*c]cairo_font_extents_t) callconv(.C) cairo_status_t;
pub const cairo_user_scaled_font_render_glyph_func_t = ?*const fn (?*cairo_scaled_font_t, c_ulong, ?*cairo_t, [*c]cairo_text_extents_t) callconv(.C) cairo_status_t;
pub const cairo_user_scaled_font_text_to_glyphs_func_t = ?*const fn (?*cairo_scaled_font_t, [*c]const u8, c_int, [*c][*c]cairo_glyph_t, [*c]c_int, [*c][*c]cairo_text_cluster_t, [*c]c_int, [*c]cairo_text_cluster_flags_t) callconv(.C) cairo_status_t;
pub const cairo_user_scaled_font_unicode_to_glyph_func_t = ?*const fn (?*cairo_scaled_font_t, c_ulong, [*c]c_ulong) callconv(.C) cairo_status_t;
pub extern fn cairo_user_font_face_set_init_func(font_face: ?*cairo_font_face_t, init_func: cairo_user_scaled_font_init_func_t) void;
pub extern fn cairo_user_font_face_set_render_glyph_func(font_face: ?*cairo_font_face_t, render_glyph_func: cairo_user_scaled_font_render_glyph_func_t) void;
pub extern fn cairo_user_font_face_set_render_color_glyph_func(font_face: ?*cairo_font_face_t, render_glyph_func: cairo_user_scaled_font_render_glyph_func_t) void;
pub extern fn cairo_user_font_face_set_text_to_glyphs_func(font_face: ?*cairo_font_face_t, text_to_glyphs_func: cairo_user_scaled_font_text_to_glyphs_func_t) void;
pub extern fn cairo_user_font_face_set_unicode_to_glyph_func(font_face: ?*cairo_font_face_t, unicode_to_glyph_func: cairo_user_scaled_font_unicode_to_glyph_func_t) void;
pub extern fn cairo_user_font_face_get_init_func(font_face: ?*cairo_font_face_t) cairo_user_scaled_font_init_func_t;
pub extern fn cairo_user_font_face_get_render_glyph_func(font_face: ?*cairo_font_face_t) cairo_user_scaled_font_render_glyph_func_t;
pub extern fn cairo_user_font_face_get_render_color_glyph_func(font_face: ?*cairo_font_face_t) cairo_user_scaled_font_render_glyph_func_t;
pub extern fn cairo_user_font_face_get_text_to_glyphs_func(font_face: ?*cairo_font_face_t) cairo_user_scaled_font_text_to_glyphs_func_t;
pub extern fn cairo_user_font_face_get_unicode_to_glyph_func(font_face: ?*cairo_font_face_t) cairo_user_scaled_font_unicode_to_glyph_func_t;
pub extern fn cairo_user_scaled_font_get_foreground_marker(scaled_font: ?*cairo_scaled_font_t) ?*cairo_pattern_t;
pub extern fn cairo_user_scaled_font_get_foreground_source(scaled_font: ?*cairo_scaled_font_t) ?*cairo_pattern_t;
pub extern fn cairo_get_operator(cr: ?*cairo_t) cairo_operator_t;
pub extern fn cairo_get_source(cr: ?*cairo_t) ?*cairo_pattern_t;
pub extern fn cairo_get_tolerance(cr: ?*cairo_t) f64;
pub extern fn cairo_get_antialias(cr: ?*cairo_t) cairo_antialias_t;
pub extern fn cairo_has_current_point(cr: ?*cairo_t) cairo_bool_t;
pub extern fn cairo_get_current_point(cr: ?*cairo_t, x: [*c]f64, y: [*c]f64) void;
pub extern fn cairo_get_fill_rule(cr: ?*cairo_t) cairo_fill_rule_t;
pub extern fn cairo_get_line_width(cr: ?*cairo_t) f64;
pub extern fn cairo_get_hairline(cr: ?*cairo_t) cairo_bool_t;
pub extern fn cairo_get_line_cap(cr: ?*cairo_t) cairo_line_cap_t;
pub extern fn cairo_get_line_join(cr: ?*cairo_t) cairo_line_join_t;
pub extern fn cairo_get_miter_limit(cr: ?*cairo_t) f64;
pub extern fn cairo_get_dash_count(cr: ?*cairo_t) c_int;
pub extern fn cairo_get_dash(cr: ?*cairo_t, dashes: [*c]f64, offset: [*c]f64) void;
pub extern fn cairo_get_matrix(cr: ?*cairo_t, matrix: [*c]cairo_matrix_t) void;
pub extern fn cairo_get_target(cr: ?*cairo_t) ?*cairo_surface_t;
pub extern fn cairo_get_group_target(cr: ?*cairo_t) ?*cairo_surface_t;
pub const CAIRO_PATH_MOVE_TO: c_int = 0;
pub const CAIRO_PATH_LINE_TO: c_int = 1;
pub const CAIRO_PATH_CURVE_TO: c_int = 2;
pub const CAIRO_PATH_CLOSE_PATH: c_int = 3;
pub const enum__cairo_path_data_type = c_uint;
pub const cairo_path_data_type_t = enum__cairo_path_data_type;
const struct_unnamed_1 = extern struct {
    type: cairo_path_data_type_t = @import("std").mem.zeroes(cairo_path_data_type_t),
    length: c_int = @import("std").mem.zeroes(c_int),
};
const struct_unnamed_2 = extern struct {
    x: f64 = @import("std").mem.zeroes(f64),
    y: f64 = @import("std").mem.zeroes(f64),
};
pub const union__cairo_path_data_t = extern union {
    header: struct_unnamed_1,
    point: struct_unnamed_2,
};
pub const cairo_path_data_t = union__cairo_path_data_t;
pub const struct_cairo_path = extern struct {
    status: cairo_status_t = @import("std").mem.zeroes(cairo_status_t),
    data: [*c]cairo_path_data_t = @import("std").mem.zeroes([*c]cairo_path_data_t),
    num_data: c_int = @import("std").mem.zeroes(c_int),
};
pub const cairo_path_t = struct_cairo_path;
pub extern fn cairo_copy_path(cr: ?*cairo_t) [*c]cairo_path_t;
pub extern fn cairo_copy_path_flat(cr: ?*cairo_t) [*c]cairo_path_t;
pub extern fn cairo_append_path(cr: ?*cairo_t, path: [*c]const cairo_path_t) void;
pub extern fn cairo_path_destroy(path: [*c]cairo_path_t) void;
pub extern fn cairo_status(cr: ?*cairo_t) cairo_status_t;
pub extern fn cairo_status_to_string(status: cairo_status_t) [*c]const u8;
pub extern fn cairo_device_reference(device: ?*cairo_device_t) ?*cairo_device_t;
pub const CAIRO_DEVICE_TYPE_DRM: c_int = 0;
pub const CAIRO_DEVICE_TYPE_GL: c_int = 1;
pub const CAIRO_DEVICE_TYPE_SCRIPT: c_int = 2;
pub const CAIRO_DEVICE_TYPE_XCB: c_int = 3;
pub const CAIRO_DEVICE_TYPE_XLIB: c_int = 4;
pub const CAIRO_DEVICE_TYPE_XML: c_int = 5;
pub const CAIRO_DEVICE_TYPE_COGL: c_int = 6;
pub const CAIRO_DEVICE_TYPE_WIN32: c_int = 7;
pub const CAIRO_DEVICE_TYPE_INVALID: c_int = -1;
pub const enum__cairo_device_type = c_int;
pub const cairo_device_type_t = enum__cairo_device_type;
pub extern fn cairo_device_get_type(device: ?*cairo_device_t) cairo_device_type_t;
pub extern fn cairo_device_status(device: ?*cairo_device_t) cairo_status_t;
pub extern fn cairo_device_acquire(device: ?*cairo_device_t) cairo_status_t;
pub extern fn cairo_device_release(device: ?*cairo_device_t) void;
pub extern fn cairo_device_flush(device: ?*cairo_device_t) void;
pub extern fn cairo_device_finish(device: ?*cairo_device_t) void;
pub extern fn cairo_device_destroy(device: ?*cairo_device_t) void;
pub extern fn cairo_device_get_reference_count(device: ?*cairo_device_t) c_uint;
pub extern fn cairo_device_get_user_data(device: ?*cairo_device_t, key: [*c]const cairo_user_data_key_t) ?*anyopaque;
pub extern fn cairo_device_set_user_data(device: ?*cairo_device_t, key: [*c]const cairo_user_data_key_t, user_data: ?*anyopaque, destroy: cairo_destroy_func_t) cairo_status_t;
pub extern fn cairo_surface_create_similar(other: ?*cairo_surface_t, content: cairo_content_t, width: c_int, height: c_int) ?*cairo_surface_t;
pub extern fn cairo_surface_create_similar_image(other: ?*cairo_surface_t, format: cairo_format_t, width: c_int, height: c_int) ?*cairo_surface_t;
pub extern fn cairo_surface_map_to_image(surface: ?*cairo_surface_t, extents: [*c]const cairo_rectangle_int_t) ?*cairo_surface_t;
pub extern fn cairo_surface_unmap_image(surface: ?*cairo_surface_t, image: ?*cairo_surface_t) void;
pub extern fn cairo_surface_create_for_rectangle(target: ?*cairo_surface_t, x: f64, y: f64, width: f64, height: f64) ?*cairo_surface_t;
pub const CAIRO_SURFACE_OBSERVER_NORMAL: c_int = 0;
pub const CAIRO_SURFACE_OBSERVER_RECORD_OPERATIONS: c_int = 1;
pub const cairo_surface_observer_mode_t = c_uint;
pub extern fn cairo_surface_create_observer(target: ?*cairo_surface_t, mode: cairo_surface_observer_mode_t) ?*cairo_surface_t;
pub const cairo_surface_observer_callback_t = ?*const fn (?*cairo_surface_t, ?*cairo_surface_t, ?*anyopaque) callconv(.C) void;
pub extern fn cairo_surface_observer_add_paint_callback(abstract_surface: ?*cairo_surface_t, func: cairo_surface_observer_callback_t, data: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_observer_add_mask_callback(abstract_surface: ?*cairo_surface_t, func: cairo_surface_observer_callback_t, data: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_observer_add_fill_callback(abstract_surface: ?*cairo_surface_t, func: cairo_surface_observer_callback_t, data: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_observer_add_stroke_callback(abstract_surface: ?*cairo_surface_t, func: cairo_surface_observer_callback_t, data: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_observer_add_glyphs_callback(abstract_surface: ?*cairo_surface_t, func: cairo_surface_observer_callback_t, data: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_observer_add_flush_callback(abstract_surface: ?*cairo_surface_t, func: cairo_surface_observer_callback_t, data: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_observer_add_finish_callback(abstract_surface: ?*cairo_surface_t, func: cairo_surface_observer_callback_t, data: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_observer_print(abstract_surface: ?*cairo_surface_t, write_func: cairo_write_func_t, closure: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_observer_elapsed(abstract_surface: ?*cairo_surface_t) f64;
pub extern fn cairo_device_observer_print(abstract_device: ?*cairo_device_t, write_func: cairo_write_func_t, closure: ?*anyopaque) cairo_status_t;
pub extern fn cairo_device_observer_elapsed(abstract_device: ?*cairo_device_t) f64;
pub extern fn cairo_device_observer_paint_elapsed(abstract_device: ?*cairo_device_t) f64;
pub extern fn cairo_device_observer_mask_elapsed(abstract_device: ?*cairo_device_t) f64;
pub extern fn cairo_device_observer_fill_elapsed(abstract_device: ?*cairo_device_t) f64;
pub extern fn cairo_device_observer_stroke_elapsed(abstract_device: ?*cairo_device_t) f64;
pub extern fn cairo_device_observer_glyphs_elapsed(abstract_device: ?*cairo_device_t) f64;
pub extern fn cairo_surface_reference(surface: ?*cairo_surface_t) ?*cairo_surface_t;
pub extern fn cairo_surface_finish(surface: ?*cairo_surface_t) void;
pub extern fn cairo_surface_destroy(surface: ?*cairo_surface_t) void;
pub extern fn cairo_surface_get_device(surface: ?*cairo_surface_t) ?*cairo_device_t;
pub extern fn cairo_surface_get_reference_count(surface: ?*cairo_surface_t) c_uint;
pub extern fn cairo_surface_status(surface: ?*cairo_surface_t) cairo_status_t;
pub const CAIRO_SURFACE_TYPE_IMAGE: c_int = 0;
pub const CAIRO_SURFACE_TYPE_PDF: c_int = 1;
pub const CAIRO_SURFACE_TYPE_PS: c_int = 2;
pub const CAIRO_SURFACE_TYPE_XLIB: c_int = 3;
pub const CAIRO_SURFACE_TYPE_XCB: c_int = 4;
pub const CAIRO_SURFACE_TYPE_GLITZ: c_int = 5;
pub const CAIRO_SURFACE_TYPE_QUARTZ: c_int = 6;
pub const CAIRO_SURFACE_TYPE_WIN32: c_int = 7;
pub const CAIRO_SURFACE_TYPE_BEOS: c_int = 8;
pub const CAIRO_SURFACE_TYPE_DIRECTFB: c_int = 9;
pub const CAIRO_SURFACE_TYPE_SVG: c_int = 10;
pub const CAIRO_SURFACE_TYPE_OS2: c_int = 11;
pub const CAIRO_SURFACE_TYPE_WIN32_PRINTING: c_int = 12;
pub const CAIRO_SURFACE_TYPE_QUARTZ_IMAGE: c_int = 13;
pub const CAIRO_SURFACE_TYPE_SCRIPT: c_int = 14;
pub const CAIRO_SURFACE_TYPE_QT: c_int = 15;
pub const CAIRO_SURFACE_TYPE_RECORDING: c_int = 16;
pub const CAIRO_SURFACE_TYPE_VG: c_int = 17;
pub const CAIRO_SURFACE_TYPE_GL: c_int = 18;
pub const CAIRO_SURFACE_TYPE_DRM: c_int = 19;
pub const CAIRO_SURFACE_TYPE_TEE: c_int = 20;
pub const CAIRO_SURFACE_TYPE_XML: c_int = 21;
pub const CAIRO_SURFACE_TYPE_SKIA: c_int = 22;
pub const CAIRO_SURFACE_TYPE_SUBSURFACE: c_int = 23;
pub const CAIRO_SURFACE_TYPE_COGL: c_int = 24;
pub const enum__cairo_surface_type = c_uint;
pub const cairo_surface_type_t = enum__cairo_surface_type;
pub extern fn cairo_surface_get_type(surface: ?*cairo_surface_t) cairo_surface_type_t;
pub extern fn cairo_surface_get_content(surface: ?*cairo_surface_t) cairo_content_t;
pub extern fn cairo_surface_write_to_png(surface: ?*cairo_surface_t, filename: [*c]const u8) cairo_status_t;
pub extern fn cairo_surface_write_to_png_stream(surface: ?*cairo_surface_t, write_func: cairo_write_func_t, closure: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_get_user_data(surface: ?*cairo_surface_t, key: [*c]const cairo_user_data_key_t) ?*anyopaque;
pub extern fn cairo_surface_set_user_data(surface: ?*cairo_surface_t, key: [*c]const cairo_user_data_key_t, user_data: ?*anyopaque, destroy: cairo_destroy_func_t) cairo_status_t;
pub extern fn cairo_surface_get_mime_data(surface: ?*cairo_surface_t, mime_type: [*c]const u8, data: [*c][*c]const u8, length: [*c]c_ulong) void;
pub extern fn cairo_surface_set_mime_data(surface: ?*cairo_surface_t, mime_type: [*c]const u8, data: [*c]const u8, length: c_ulong, destroy: cairo_destroy_func_t, closure: ?*anyopaque) cairo_status_t;
pub extern fn cairo_surface_supports_mime_type(surface: ?*cairo_surface_t, mime_type: [*c]const u8) cairo_bool_t;
pub extern fn cairo_surface_get_font_options(surface: ?*cairo_surface_t, options: ?*cairo_font_options_t) void;
pub extern fn cairo_surface_flush(surface: ?*cairo_surface_t) void;
pub extern fn cairo_surface_mark_dirty(surface: ?*cairo_surface_t) void;
pub extern fn cairo_surface_mark_dirty_rectangle(surface: ?*cairo_surface_t, x: c_int, y: c_int, width: c_int, height: c_int) void;
pub extern fn cairo_surface_set_device_scale(surface: ?*cairo_surface_t, x_scale: f64, y_scale: f64) void;
pub extern fn cairo_surface_get_device_scale(surface: ?*cairo_surface_t, x_scale: [*c]f64, y_scale: [*c]f64) void;
pub extern fn cairo_surface_set_device_offset(surface: ?*cairo_surface_t, x_offset: f64, y_offset: f64) void;
pub extern fn cairo_surface_get_device_offset(surface: ?*cairo_surface_t, x_offset: [*c]f64, y_offset: [*c]f64) void;
pub extern fn cairo_surface_set_fallback_resolution(surface: ?*cairo_surface_t, x_pixels_per_inch: f64, y_pixels_per_inch: f64) void;
pub extern fn cairo_surface_get_fallback_resolution(surface: ?*cairo_surface_t, x_pixels_per_inch: [*c]f64, y_pixels_per_inch: [*c]f64) void;
pub extern fn cairo_surface_copy_page(surface: ?*cairo_surface_t) void;
pub extern fn cairo_surface_show_page(surface: ?*cairo_surface_t) void;
pub extern fn cairo_surface_has_show_text_glyphs(surface: ?*cairo_surface_t) cairo_bool_t;
pub extern fn cairo_image_surface_create(format: cairo_format_t, width: c_int, height: c_int) ?*cairo_surface_t;
pub extern fn cairo_format_stride_for_width(format: cairo_format_t, width: c_int) c_int;
pub extern fn cairo_image_surface_create_for_data(data: [*c]u8, format: cairo_format_t, width: c_int, height: c_int, stride: c_int) ?*cairo_surface_t;
pub extern fn cairo_image_surface_get_data(surface: ?*cairo_surface_t) [*c]u8;
pub extern fn cairo_image_surface_get_format(surface: ?*cairo_surface_t) cairo_format_t;
pub extern fn cairo_image_surface_get_width(surface: ?*cairo_surface_t) c_int;
pub extern fn cairo_image_surface_get_height(surface: ?*cairo_surface_t) c_int;
pub extern fn cairo_image_surface_get_stride(surface: ?*cairo_surface_t) c_int;
pub extern fn cairo_image_surface_create_from_png(filename: [*c]const u8) ?*cairo_surface_t;
pub extern fn cairo_image_surface_create_from_png_stream(read_func: cairo_read_func_t, closure: ?*anyopaque) ?*cairo_surface_t;
pub extern fn cairo_recording_surface_create(content: cairo_content_t, extents: [*c]const cairo_rectangle_t) ?*cairo_surface_t;
pub extern fn cairo_recording_surface_ink_extents(surface: ?*cairo_surface_t, x0: [*c]f64, y0: [*c]f64, width: [*c]f64, height: [*c]f64) void;
pub extern fn cairo_recording_surface_get_extents(surface: ?*cairo_surface_t, extents: [*c]cairo_rectangle_t) cairo_bool_t;
pub const cairo_raster_source_acquire_func_t = ?*const fn (?*cairo_pattern_t, ?*anyopaque, ?*cairo_surface_t, [*c]const cairo_rectangle_int_t) callconv(.C) ?*cairo_surface_t;
pub const cairo_raster_source_release_func_t = ?*const fn (?*cairo_pattern_t, ?*anyopaque, ?*cairo_surface_t) callconv(.C) void;
pub const cairo_raster_source_snapshot_func_t = ?*const fn (?*cairo_pattern_t, ?*anyopaque) callconv(.C) cairo_status_t;
pub const cairo_raster_source_copy_func_t = ?*const fn (?*cairo_pattern_t, ?*anyopaque, ?*const cairo_pattern_t) callconv(.C) cairo_status_t;
pub const cairo_raster_source_finish_func_t = ?*const fn (?*cairo_pattern_t, ?*anyopaque) callconv(.C) void;
pub extern fn cairo_pattern_create_raster_source(user_data: ?*anyopaque, content: cairo_content_t, width: c_int, height: c_int) ?*cairo_pattern_t;
pub extern fn cairo_raster_source_pattern_set_callback_data(pattern: ?*cairo_pattern_t, data: ?*anyopaque) void;
pub extern fn cairo_raster_source_pattern_get_callback_data(pattern: ?*cairo_pattern_t) ?*anyopaque;
pub extern fn cairo_raster_source_pattern_set_acquire(pattern: ?*cairo_pattern_t, acquire: cairo_raster_source_acquire_func_t, release: cairo_raster_source_release_func_t) void;
pub extern fn cairo_raster_source_pattern_get_acquire(pattern: ?*cairo_pattern_t, acquire: [*c]cairo_raster_source_acquire_func_t, release: [*c]cairo_raster_source_release_func_t) void;
pub extern fn cairo_raster_source_pattern_set_snapshot(pattern: ?*cairo_pattern_t, snapshot: cairo_raster_source_snapshot_func_t) void;
pub extern fn cairo_raster_source_pattern_get_snapshot(pattern: ?*cairo_pattern_t) cairo_raster_source_snapshot_func_t;
pub extern fn cairo_raster_source_pattern_set_copy(pattern: ?*cairo_pattern_t, copy: cairo_raster_source_copy_func_t) void;
pub extern fn cairo_raster_source_pattern_get_copy(pattern: ?*cairo_pattern_t) cairo_raster_source_copy_func_t;
pub extern fn cairo_raster_source_pattern_set_finish(pattern: ?*cairo_pattern_t, finish: cairo_raster_source_finish_func_t) void;
pub extern fn cairo_raster_source_pattern_get_finish(pattern: ?*cairo_pattern_t) cairo_raster_source_finish_func_t;
pub extern fn cairo_pattern_create_rgb(red: f64, green: f64, blue: f64) ?*cairo_pattern_t;
pub extern fn cairo_pattern_create_rgba(red: f64, green: f64, blue: f64, alpha: f64) ?*cairo_pattern_t;
pub extern fn cairo_pattern_create_for_surface(surface: ?*cairo_surface_t) ?*cairo_pattern_t;
pub extern fn cairo_pattern_create_linear(x0: f64, y0: f64, x1: f64, y1: f64) ?*cairo_pattern_t;
pub extern fn cairo_pattern_create_radial(cx0: f64, cy0: f64, radius0: f64, cx1: f64, cy1: f64, radius1: f64) ?*cairo_pattern_t;
pub extern fn cairo_pattern_create_mesh() ?*cairo_pattern_t;
pub extern fn cairo_pattern_reference(pattern: ?*cairo_pattern_t) ?*cairo_pattern_t;
pub extern fn cairo_pattern_destroy(pattern: ?*cairo_pattern_t) void;
pub extern fn cairo_pattern_get_reference_count(pattern: ?*cairo_pattern_t) c_uint;
pub extern fn cairo_pattern_status(pattern: ?*cairo_pattern_t) cairo_status_t;
pub extern fn cairo_pattern_get_user_data(pattern: ?*cairo_pattern_t, key: [*c]const cairo_user_data_key_t) ?*anyopaque;
pub extern fn cairo_pattern_set_user_data(pattern: ?*cairo_pattern_t, key: [*c]const cairo_user_data_key_t, user_data: ?*anyopaque, destroy: cairo_destroy_func_t) cairo_status_t;
pub const CAIRO_PATTERN_TYPE_SOLID: c_int = 0;
pub const CAIRO_PATTERN_TYPE_SURFACE: c_int = 1;
pub const CAIRO_PATTERN_TYPE_LINEAR: c_int = 2;
pub const CAIRO_PATTERN_TYPE_RADIAL: c_int = 3;
pub const CAIRO_PATTERN_TYPE_MESH: c_int = 4;
pub const CAIRO_PATTERN_TYPE_RASTER_SOURCE: c_int = 5;
pub const enum__cairo_pattern_type = c_uint;
pub const cairo_pattern_type_t = enum__cairo_pattern_type;
pub extern fn cairo_pattern_get_type(pattern: ?*cairo_pattern_t) cairo_pattern_type_t;
pub extern fn cairo_pattern_add_color_stop_rgb(pattern: ?*cairo_pattern_t, offset: f64, red: f64, green: f64, blue: f64) void;
pub extern fn cairo_pattern_add_color_stop_rgba(pattern: ?*cairo_pattern_t, offset: f64, red: f64, green: f64, blue: f64, alpha: f64) void;
pub extern fn cairo_mesh_pattern_begin_patch(pattern: ?*cairo_pattern_t) void;
pub extern fn cairo_mesh_pattern_end_patch(pattern: ?*cairo_pattern_t) void;
pub extern fn cairo_mesh_pattern_curve_to(pattern: ?*cairo_pattern_t, x1: f64, y1: f64, x2: f64, y2: f64, x3: f64, y3: f64) void;
pub extern fn cairo_mesh_pattern_line_to(pattern: ?*cairo_pattern_t, x: f64, y: f64) void;
pub extern fn cairo_mesh_pattern_move_to(pattern: ?*cairo_pattern_t, x: f64, y: f64) void;
pub extern fn cairo_mesh_pattern_set_control_point(pattern: ?*cairo_pattern_t, point_num: c_uint, x: f64, y: f64) void;
pub extern fn cairo_mesh_pattern_set_corner_color_rgb(pattern: ?*cairo_pattern_t, corner_num: c_uint, red: f64, green: f64, blue: f64) void;
pub extern fn cairo_mesh_pattern_set_corner_color_rgba(pattern: ?*cairo_pattern_t, corner_num: c_uint, red: f64, green: f64, blue: f64, alpha: f64) void;
pub extern fn cairo_pattern_set_matrix(pattern: ?*cairo_pattern_t, matrix: [*c]const cairo_matrix_t) void;
pub extern fn cairo_pattern_get_matrix(pattern: ?*cairo_pattern_t, matrix: [*c]cairo_matrix_t) void;
pub const CAIRO_EXTEND_NONE: c_int = 0;
pub const CAIRO_EXTEND_REPEAT: c_int = 1;
pub const CAIRO_EXTEND_REFLECT: c_int = 2;
pub const CAIRO_EXTEND_PAD: c_int = 3;
pub const enum__cairo_extend = c_uint;
pub const cairo_extend_t = enum__cairo_extend;
pub extern fn cairo_pattern_set_extend(pattern: ?*cairo_pattern_t, extend: cairo_extend_t) void;
pub extern fn cairo_pattern_get_extend(pattern: ?*cairo_pattern_t) cairo_extend_t;
pub const CAIRO_FILTER_FAST: c_int = 0;
pub const CAIRO_FILTER_GOOD: c_int = 1;
pub const CAIRO_FILTER_BEST: c_int = 2;
pub const CAIRO_FILTER_NEAREST: c_int = 3;
pub const CAIRO_FILTER_BILINEAR: c_int = 4;
pub const CAIRO_FILTER_GAUSSIAN: c_int = 5;
pub const enum__cairo_filter = c_uint;
pub const cairo_filter_t = enum__cairo_filter;
pub extern fn cairo_pattern_set_filter(pattern: ?*cairo_pattern_t, filter: cairo_filter_t) void;
pub extern fn cairo_pattern_get_filter(pattern: ?*cairo_pattern_t) cairo_filter_t;
pub extern fn cairo_pattern_get_rgba(pattern: ?*cairo_pattern_t, red: [*c]f64, green: [*c]f64, blue: [*c]f64, alpha: [*c]f64) cairo_status_t;
pub extern fn cairo_pattern_get_surface(pattern: ?*cairo_pattern_t, surface: [*c]?*cairo_surface_t) cairo_status_t;
pub extern fn cairo_pattern_get_color_stop_rgba(pattern: ?*cairo_pattern_t, index: c_int, offset: [*c]f64, red: [*c]f64, green: [*c]f64, blue: [*c]f64, alpha: [*c]f64) cairo_status_t;
pub extern fn cairo_pattern_get_color_stop_count(pattern: ?*cairo_pattern_t, count: [*c]c_int) cairo_status_t;
pub extern fn cairo_pattern_get_linear_points(pattern: ?*cairo_pattern_t, x0: [*c]f64, y0: [*c]f64, x1: [*c]f64, y1: [*c]f64) cairo_status_t;
pub extern fn cairo_pattern_get_radial_circles(pattern: ?*cairo_pattern_t, x0: [*c]f64, y0: [*c]f64, r0: [*c]f64, x1: [*c]f64, y1: [*c]f64, r1: [*c]f64) cairo_status_t;
pub extern fn cairo_mesh_pattern_get_patch_count(pattern: ?*cairo_pattern_t, count: [*c]c_uint) cairo_status_t;
pub extern fn cairo_mesh_pattern_get_path(pattern: ?*cairo_pattern_t, patch_num: c_uint) [*c]cairo_path_t;
pub extern fn cairo_mesh_pattern_get_corner_color_rgba(pattern: ?*cairo_pattern_t, patch_num: c_uint, corner_num: c_uint, red: [*c]f64, green: [*c]f64, blue: [*c]f64, alpha: [*c]f64) cairo_status_t;
pub extern fn cairo_mesh_pattern_get_control_point(pattern: ?*cairo_pattern_t, patch_num: c_uint, point_num: c_uint, x: [*c]f64, y: [*c]f64) cairo_status_t;
pub extern fn cairo_matrix_init(matrix: [*c]cairo_matrix_t, xx: f64, yx: f64, xy: f64, yy: f64, x0: f64, y0: f64) void;
pub extern fn cairo_matrix_init_identity(matrix: [*c]cairo_matrix_t) void;
pub extern fn cairo_matrix_init_translate(matrix: [*c]cairo_matrix_t, tx: f64, ty: f64) void;
pub extern fn cairo_matrix_init_scale(matrix: [*c]cairo_matrix_t, sx: f64, sy: f64) void;
pub extern fn cairo_matrix_init_rotate(matrix: [*c]cairo_matrix_t, radians: f64) void;
pub extern fn cairo_matrix_translate(matrix: [*c]cairo_matrix_t, tx: f64, ty: f64) void;
pub extern fn cairo_matrix_scale(matrix: [*c]cairo_matrix_t, sx: f64, sy: f64) void;
pub extern fn cairo_matrix_rotate(matrix: [*c]cairo_matrix_t, radians: f64) void;
pub extern fn cairo_matrix_invert(matrix: [*c]cairo_matrix_t) cairo_status_t;
pub extern fn cairo_matrix_multiply(result: [*c]cairo_matrix_t, a: [*c]const cairo_matrix_t, b: [*c]const cairo_matrix_t) void;
pub extern fn cairo_matrix_transform_distance(matrix: [*c]const cairo_matrix_t, dx: [*c]f64, dy: [*c]f64) void;
pub extern fn cairo_matrix_transform_point(matrix: [*c]const cairo_matrix_t, x: [*c]f64, y: [*c]f64) void;
pub const struct__cairo_region = opaque {};
pub const cairo_region_t = struct__cairo_region;
pub const CAIRO_REGION_OVERLAP_IN: c_int = 0;
pub const CAIRO_REGION_OVERLAP_OUT: c_int = 1;
pub const CAIRO_REGION_OVERLAP_PART: c_int = 2;
pub const enum__cairo_region_overlap = c_uint;
pub const cairo_region_overlap_t = enum__cairo_region_overlap;
pub extern fn cairo_region_create() ?*cairo_region_t;
pub extern fn cairo_region_create_rectangle(rectangle: [*c]const cairo_rectangle_int_t) ?*cairo_region_t;
pub extern fn cairo_region_create_rectangles(rects: [*c]const cairo_rectangle_int_t, count: c_int) ?*cairo_region_t;
pub extern fn cairo_region_copy(original: ?*const cairo_region_t) ?*cairo_region_t;
pub extern fn cairo_region_reference(region: ?*cairo_region_t) ?*cairo_region_t;
pub extern fn cairo_region_destroy(region: ?*cairo_region_t) void;
pub extern fn cairo_region_equal(a: ?*const cairo_region_t, b: ?*const cairo_region_t) cairo_bool_t;
pub extern fn cairo_region_status(region: ?*const cairo_region_t) cairo_status_t;
pub extern fn cairo_region_get_extents(region: ?*const cairo_region_t, extents: [*c]cairo_rectangle_int_t) void;
pub extern fn cairo_region_num_rectangles(region: ?*const cairo_region_t) c_int;
pub extern fn cairo_region_get_rectangle(region: ?*const cairo_region_t, nth: c_int, rectangle: [*c]cairo_rectangle_int_t) void;
pub extern fn cairo_region_is_empty(region: ?*const cairo_region_t) cairo_bool_t;
pub extern fn cairo_region_contains_rectangle(region: ?*const cairo_region_t, rectangle: [*c]const cairo_rectangle_int_t) cairo_region_overlap_t;
pub extern fn cairo_region_contains_point(region: ?*const cairo_region_t, x: c_int, y: c_int) cairo_bool_t;
pub extern fn cairo_region_translate(region: ?*cairo_region_t, dx: c_int, dy: c_int) void;
pub extern fn cairo_region_subtract(dst: ?*cairo_region_t, other: ?*const cairo_region_t) cairo_status_t;
pub extern fn cairo_region_subtract_rectangle(dst: ?*cairo_region_t, rectangle: [*c]const cairo_rectangle_int_t) cairo_status_t;
pub extern fn cairo_region_intersect(dst: ?*cairo_region_t, other: ?*const cairo_region_t) cairo_status_t;
pub extern fn cairo_region_intersect_rectangle(dst: ?*cairo_region_t, rectangle: [*c]const cairo_rectangle_int_t) cairo_status_t;
pub extern fn cairo_region_union(dst: ?*cairo_region_t, other: ?*const cairo_region_t) cairo_status_t;
pub extern fn cairo_region_union_rectangle(dst: ?*cairo_region_t, rectangle: [*c]const cairo_rectangle_int_t) cairo_status_t;
pub extern fn cairo_region_xor(dst: ?*cairo_region_t, other: ?*const cairo_region_t) cairo_status_t;
pub extern fn cairo_region_xor_rectangle(dst: ?*cairo_region_t, rectangle: [*c]const cairo_rectangle_int_t) cairo_status_t;
pub extern fn cairo_debug_reset_static_data() void;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data_3 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_3 = @import("std").mem.zeroes([13]?*struct___locale_data_3),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
pub extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strlcpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strlcat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___va_list_tag_4 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_4;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_5 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_5 = @import("std").mem.zeroes(union_unnamed_5),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int = @import("std").mem.zeroes(c_int),
    _IO_read_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_backup_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _markers: ?*struct__IO_marker = @import("std").mem.zeroes(?*struct__IO_marker),
    _chain: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _fileno: c_int = @import("std").mem.zeroes(c_int),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
    _old_offset: __off_t = @import("std").mem.zeroes(__off_t),
    _cur_column: c_ushort = @import("std").mem.zeroes(c_ushort),
    _vtable_offset: i8 = @import("std").mem.zeroes(i8),
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = @import("std").mem.zeroes(?*_IO_lock_t),
    _offset: __off64_t = @import("std").mem.zeroes(__off64_t),
    _codecvt: ?*struct__IO_codecvt = @import("std").mem.zeroes(?*struct__IO_codecvt),
    _wide_data: ?*struct__IO_wide_data = @import("std").mem.zeroes(?*struct__IO_wide_data),
    _freeres_list: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _freeres_buf: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __pad5: usize = @import("std").mem.zeroes(usize),
    _mode: c_int = @import("std").mem.zeroes(c_int),
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const cookie_read_function_t = fn (?*anyopaque, [*c]u8, usize) callconv(.C) __ssize_t;
pub const cookie_write_function_t = fn (?*anyopaque, [*c]const u8, usize) callconv(.C) __ssize_t;
pub const cookie_seek_function_t = fn (?*anyopaque, [*c]__off64_t, c_int) callconv(.C) c_int;
pub const cookie_close_function_t = fn (?*anyopaque) callconv(.C) c_int;
pub const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = @import("std").mem.zeroes(?*const cookie_read_function_t),
    write: ?*const cookie_write_function_t = @import("std").mem.zeroes(?*const cookie_write_function_t),
    seek: ?*const cookie_seek_function_t = @import("std").mem.zeroes(?*const cookie_seek_function_t),
    close: ?*const cookie_close_function_t = @import("std").mem.zeroes(?*const cookie_close_function_t),
};
pub const cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const va_list = __gnuc_va_list;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn vprintf(__format: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_4) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_6 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_6,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn arc4random() __uint32_t;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __size: usize) void;
pub extern fn arc4random_uniform(__upper_bound: __uint32_t) __uint32_t;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const __jmp_buf = [8]c_long;
pub const struct___jmp_buf_tag = extern struct {
    __jmpbuf: __jmp_buf = @import("std").mem.zeroes(__jmp_buf),
    __mask_was_saved: c_int = @import("std").mem.zeroes(c_int),
    __saved_mask: __sigset_t = @import("std").mem.zeroes(__sigset_t),
};
pub const jmp_buf = [1]struct___jmp_buf_tag;
pub extern fn setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn __sigsetjmp(__env: [*c]struct___jmp_buf_tag, __savemask: c_int) c_int;
pub extern fn _setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub extern fn _longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const sigjmp_buf = [1]struct___jmp_buf_tag;
pub extern fn siglongjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const FT_Int16 = c_short;
pub const FT_UInt16 = c_ushort;
pub const FT_Int32 = c_int;
pub const FT_UInt32 = c_uint;
pub const FT_Fast = c_int;
pub const FT_UFast = c_uint;
pub const FT_Int64 = c_long;
pub const FT_UInt64 = c_ulong;
pub const FT_Memory = [*c]struct_FT_MemoryRec_;
pub const FT_Alloc_Func = ?*const fn (FT_Memory, c_long) callconv(.C) ?*anyopaque;
pub const FT_Free_Func = ?*const fn (FT_Memory, ?*anyopaque) callconv(.C) void;
pub const FT_Realloc_Func = ?*const fn (FT_Memory, c_long, c_long, ?*anyopaque) callconv(.C) ?*anyopaque;
pub const struct_FT_MemoryRec_ = extern struct {
    user: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    alloc: FT_Alloc_Func = @import("std").mem.zeroes(FT_Alloc_Func),
    free: FT_Free_Func = @import("std").mem.zeroes(FT_Free_Func),
    realloc: FT_Realloc_Func = @import("std").mem.zeroes(FT_Realloc_Func),
};
pub const union_FT_StreamDesc_ = extern union {
    value: c_long,
    pointer: ?*anyopaque,
};
pub const FT_StreamDesc = union_FT_StreamDesc_;
pub const FT_Stream = [*c]struct_FT_StreamRec_;
pub const FT_Stream_IoFunc = ?*const fn (FT_Stream, c_ulong, [*c]u8, c_ulong) callconv(.C) c_ulong;
pub const FT_Stream_CloseFunc = ?*const fn (FT_Stream) callconv(.C) void;
pub const struct_FT_StreamRec_ = extern struct {
    base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: c_ulong = @import("std").mem.zeroes(c_ulong),
    pos: c_ulong = @import("std").mem.zeroes(c_ulong),
    descriptor: FT_StreamDesc = @import("std").mem.zeroes(FT_StreamDesc),
    pathname: FT_StreamDesc = @import("std").mem.zeroes(FT_StreamDesc),
    read: FT_Stream_IoFunc = @import("std").mem.zeroes(FT_Stream_IoFunc),
    close: FT_Stream_CloseFunc = @import("std").mem.zeroes(FT_Stream_CloseFunc),
    memory: FT_Memory = @import("std").mem.zeroes(FT_Memory),
    cursor: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    limit: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const FT_StreamRec = struct_FT_StreamRec_;
pub const FT_Pos = c_long;
pub const struct_FT_Vector_ = extern struct {
    x: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    y: FT_Pos = @import("std").mem.zeroes(FT_Pos),
};
pub const FT_Vector = struct_FT_Vector_;
pub const struct_FT_BBox_ = extern struct {
    xMin: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    yMin: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    xMax: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    yMax: FT_Pos = @import("std").mem.zeroes(FT_Pos),
};
pub const FT_BBox = struct_FT_BBox_;
pub const FT_PIXEL_MODE_NONE: c_int = 0;
pub const FT_PIXEL_MODE_MONO: c_int = 1;
pub const FT_PIXEL_MODE_GRAY: c_int = 2;
pub const FT_PIXEL_MODE_GRAY2: c_int = 3;
pub const FT_PIXEL_MODE_GRAY4: c_int = 4;
pub const FT_PIXEL_MODE_LCD: c_int = 5;
pub const FT_PIXEL_MODE_LCD_V: c_int = 6;
pub const FT_PIXEL_MODE_BGRA: c_int = 7;
pub const FT_PIXEL_MODE_MAX: c_int = 8;
pub const enum_FT_Pixel_Mode_ = c_uint;
pub const FT_Pixel_Mode = enum_FT_Pixel_Mode_;
pub const struct_FT_Bitmap_ = extern struct {
    rows: c_uint = @import("std").mem.zeroes(c_uint),
    width: c_uint = @import("std").mem.zeroes(c_uint),
    pitch: c_int = @import("std").mem.zeroes(c_int),
    buffer: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    num_grays: c_ushort = @import("std").mem.zeroes(c_ushort),
    pixel_mode: u8 = @import("std").mem.zeroes(u8),
    palette_mode: u8 = @import("std").mem.zeroes(u8),
    palette: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const FT_Bitmap = struct_FT_Bitmap_;
pub const struct_FT_Outline_ = extern struct {
    n_contours: c_short = @import("std").mem.zeroes(c_short),
    n_points: c_short = @import("std").mem.zeroes(c_short),
    points: [*c]FT_Vector = @import("std").mem.zeroes([*c]FT_Vector),
    tags: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    contours: [*c]c_short = @import("std").mem.zeroes([*c]c_short),
    flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const FT_Outline = struct_FT_Outline_;
pub const FT_Outline_MoveToFunc = ?*const fn ([*c]const FT_Vector, ?*anyopaque) callconv(.C) c_int;
pub const FT_Outline_LineToFunc = ?*const fn ([*c]const FT_Vector, ?*anyopaque) callconv(.C) c_int;
pub const FT_Outline_ConicToFunc = ?*const fn ([*c]const FT_Vector, [*c]const FT_Vector, ?*anyopaque) callconv(.C) c_int;
pub const FT_Outline_CubicToFunc = ?*const fn ([*c]const FT_Vector, [*c]const FT_Vector, [*c]const FT_Vector, ?*anyopaque) callconv(.C) c_int;
pub const struct_FT_Outline_Funcs_ = extern struct {
    move_to: FT_Outline_MoveToFunc = @import("std").mem.zeroes(FT_Outline_MoveToFunc),
    line_to: FT_Outline_LineToFunc = @import("std").mem.zeroes(FT_Outline_LineToFunc),
    conic_to: FT_Outline_ConicToFunc = @import("std").mem.zeroes(FT_Outline_ConicToFunc),
    cubic_to: FT_Outline_CubicToFunc = @import("std").mem.zeroes(FT_Outline_CubicToFunc),
    shift: c_int = @import("std").mem.zeroes(c_int),
    delta: FT_Pos = @import("std").mem.zeroes(FT_Pos),
};
pub const FT_Outline_Funcs = struct_FT_Outline_Funcs_;
pub const FT_GLYPH_FORMAT_NONE: c_int = 0;
pub const FT_GLYPH_FORMAT_COMPOSITE: c_int = 1668246896;
pub const FT_GLYPH_FORMAT_BITMAP: c_int = 1651078259;
pub const FT_GLYPH_FORMAT_OUTLINE: c_int = 1869968492;
pub const FT_GLYPH_FORMAT_PLOTTER: c_int = 1886154612;
pub const FT_GLYPH_FORMAT_SVG: c_int = 1398163232;
pub const enum_FT_Glyph_Format_ = c_uint;
pub const FT_Glyph_Format = enum_FT_Glyph_Format_;
pub const struct_FT_Span_ = extern struct {
    x: c_short = @import("std").mem.zeroes(c_short),
    len: c_ushort = @import("std").mem.zeroes(c_ushort),
    coverage: u8 = @import("std").mem.zeroes(u8),
};
pub const FT_Span = struct_FT_Span_;
pub const FT_SpanFunc = ?*const fn (c_int, c_int, [*c]const FT_Span, ?*anyopaque) callconv(.C) void;
pub const FT_Raster_BitTest_Func = ?*const fn (c_int, c_int, ?*anyopaque) callconv(.C) c_int;
pub const FT_Raster_BitSet_Func = ?*const fn (c_int, c_int, ?*anyopaque) callconv(.C) void;
pub const struct_FT_Raster_Params_ = extern struct {
    target: [*c]const FT_Bitmap = @import("std").mem.zeroes([*c]const FT_Bitmap),
    source: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    flags: c_int = @import("std").mem.zeroes(c_int),
    gray_spans: FT_SpanFunc = @import("std").mem.zeroes(FT_SpanFunc),
    black_spans: FT_SpanFunc = @import("std").mem.zeroes(FT_SpanFunc),
    bit_test: FT_Raster_BitTest_Func = @import("std").mem.zeroes(FT_Raster_BitTest_Func),
    bit_set: FT_Raster_BitSet_Func = @import("std").mem.zeroes(FT_Raster_BitSet_Func),
    user: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    clip_box: FT_BBox = @import("std").mem.zeroes(FT_BBox),
};
pub const FT_Raster_Params = struct_FT_Raster_Params_;
pub const struct_FT_RasterRec_ = opaque {};
pub const FT_Raster = ?*struct_FT_RasterRec_;
pub const FT_Raster_NewFunc = ?*const fn (?*anyopaque, [*c]FT_Raster) callconv(.C) c_int;
pub const FT_Raster_DoneFunc = ?*const fn (FT_Raster) callconv(.C) void;
pub const FT_Raster_ResetFunc = ?*const fn (FT_Raster, [*c]u8, c_ulong) callconv(.C) void;
pub const FT_Raster_SetModeFunc = ?*const fn (FT_Raster, c_ulong, ?*anyopaque) callconv(.C) c_int;
pub const FT_Raster_RenderFunc = ?*const fn (FT_Raster, [*c]const FT_Raster_Params) callconv(.C) c_int;
pub const struct_FT_Raster_Funcs_ = extern struct {
    glyph_format: FT_Glyph_Format = @import("std").mem.zeroes(FT_Glyph_Format),
    raster_new: FT_Raster_NewFunc = @import("std").mem.zeroes(FT_Raster_NewFunc),
    raster_reset: FT_Raster_ResetFunc = @import("std").mem.zeroes(FT_Raster_ResetFunc),
    raster_set_mode: FT_Raster_SetModeFunc = @import("std").mem.zeroes(FT_Raster_SetModeFunc),
    raster_render: FT_Raster_RenderFunc = @import("std").mem.zeroes(FT_Raster_RenderFunc),
    raster_done: FT_Raster_DoneFunc = @import("std").mem.zeroes(FT_Raster_DoneFunc),
};
pub const FT_Raster_Funcs = struct_FT_Raster_Funcs_;
pub const FT_Bool = u8;
pub const FT_FWord = c_short;
pub const FT_UFWord = c_ushort;
pub const FT_Char = i8;
pub const FT_Byte = u8;
pub const FT_Bytes = [*c]const FT_Byte;
pub const FT_Tag = FT_UInt32;
pub const FT_String = u8;
pub const FT_Short = c_short;
pub const FT_UShort = c_ushort;
pub const FT_Int = c_int;
pub const FT_UInt = c_uint;
pub const FT_Long = c_long;
pub const FT_ULong = c_ulong;
pub const FT_F2Dot14 = c_short;
pub const FT_F26Dot6 = c_long;
pub const FT_Fixed = c_long;
pub const FT_Error = c_int;
pub const FT_Pointer = ?*anyopaque;
pub const FT_Offset = usize;
pub const FT_PtrDist = ptrdiff_t;
pub const struct_FT_UnitVector_ = extern struct {
    x: FT_F2Dot14 = @import("std").mem.zeroes(FT_F2Dot14),
    y: FT_F2Dot14 = @import("std").mem.zeroes(FT_F2Dot14),
};
pub const FT_UnitVector = struct_FT_UnitVector_;
pub const struct_FT_Matrix_ = extern struct {
    xx: FT_Fixed = @import("std").mem.zeroes(FT_Fixed),
    xy: FT_Fixed = @import("std").mem.zeroes(FT_Fixed),
    yx: FT_Fixed = @import("std").mem.zeroes(FT_Fixed),
    yy: FT_Fixed = @import("std").mem.zeroes(FT_Fixed),
};
pub const FT_Matrix = struct_FT_Matrix_;
pub const struct_FT_Data_ = extern struct {
    pointer: [*c]const FT_Byte = @import("std").mem.zeroes([*c]const FT_Byte),
    length: FT_UInt = @import("std").mem.zeroes(FT_UInt),
};
pub const FT_Data = struct_FT_Data_;
pub const FT_Generic_Finalizer = ?*const fn (?*anyopaque) callconv(.C) void;
pub const struct_FT_Generic_ = extern struct {
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    finalizer: FT_Generic_Finalizer = @import("std").mem.zeroes(FT_Generic_Finalizer),
};
pub const FT_Generic = struct_FT_Generic_;
pub const FT_ListNode = [*c]struct_FT_ListNodeRec_;
pub const struct_FT_ListNodeRec_ = extern struct {
    prev: FT_ListNode = @import("std").mem.zeroes(FT_ListNode),
    next: FT_ListNode = @import("std").mem.zeroes(FT_ListNode),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct_FT_ListRec_ = extern struct {
    head: FT_ListNode = @import("std").mem.zeroes(FT_ListNode),
    tail: FT_ListNode = @import("std").mem.zeroes(FT_ListNode),
};
pub const FT_List = [*c]struct_FT_ListRec_;
pub const FT_ListNodeRec = struct_FT_ListNodeRec_;
pub const FT_ListRec = struct_FT_ListRec_;
pub const FT_Mod_Err_Base: c_int = 0;
pub const FT_Mod_Err_Autofit: c_int = 0;
pub const FT_Mod_Err_BDF: c_int = 0;
pub const FT_Mod_Err_Bzip2: c_int = 0;
pub const FT_Mod_Err_Cache: c_int = 0;
pub const FT_Mod_Err_CFF: c_int = 0;
pub const FT_Mod_Err_CID: c_int = 0;
pub const FT_Mod_Err_Gzip: c_int = 0;
pub const FT_Mod_Err_LZW: c_int = 0;
pub const FT_Mod_Err_OTvalid: c_int = 0;
pub const FT_Mod_Err_PCF: c_int = 0;
pub const FT_Mod_Err_PFR: c_int = 0;
pub const FT_Mod_Err_PSaux: c_int = 0;
pub const FT_Mod_Err_PShinter: c_int = 0;
pub const FT_Mod_Err_PSnames: c_int = 0;
pub const FT_Mod_Err_Raster: c_int = 0;
pub const FT_Mod_Err_SFNT: c_int = 0;
pub const FT_Mod_Err_Smooth: c_int = 0;
pub const FT_Mod_Err_TrueType: c_int = 0;
pub const FT_Mod_Err_Type1: c_int = 0;
pub const FT_Mod_Err_Type42: c_int = 0;
pub const FT_Mod_Err_Winfonts: c_int = 0;
pub const FT_Mod_Err_GXvalid: c_int = 0;
pub const FT_Mod_Err_Sdf: c_int = 0;
pub const FT_Mod_Err_Max: c_int = 1;
const enum_unnamed_7 = c_uint;
pub const FT_Err_Ok: c_int = 0;
pub const FT_Err_Cannot_Open_Resource: c_int = 1;
pub const FT_Err_Unknown_File_Format: c_int = 2;
pub const FT_Err_Invalid_File_Format: c_int = 3;
pub const FT_Err_Invalid_Version: c_int = 4;
pub const FT_Err_Lower_Module_Version: c_int = 5;
pub const FT_Err_Invalid_Argument: c_int = 6;
pub const FT_Err_Unimplemented_Feature: c_int = 7;
pub const FT_Err_Invalid_Table: c_int = 8;
pub const FT_Err_Invalid_Offset: c_int = 9;
pub const FT_Err_Array_Too_Large: c_int = 10;
pub const FT_Err_Missing_Module: c_int = 11;
pub const FT_Err_Missing_Property: c_int = 12;
pub const FT_Err_Invalid_Glyph_Index: c_int = 16;
pub const FT_Err_Invalid_Character_Code: c_int = 17;
pub const FT_Err_Invalid_Glyph_Format: c_int = 18;
pub const FT_Err_Cannot_Render_Glyph: c_int = 19;
pub const FT_Err_Invalid_Outline: c_int = 20;
pub const FT_Err_Invalid_Composite: c_int = 21;
pub const FT_Err_Too_Many_Hints: c_int = 22;
pub const FT_Err_Invalid_Pixel_Size: c_int = 23;
pub const FT_Err_Invalid_SVG_Document: c_int = 24;
pub const FT_Err_Invalid_Handle: c_int = 32;
pub const FT_Err_Invalid_Library_Handle: c_int = 33;
pub const FT_Err_Invalid_Driver_Handle: c_int = 34;
pub const FT_Err_Invalid_Face_Handle: c_int = 35;
pub const FT_Err_Invalid_Size_Handle: c_int = 36;
pub const FT_Err_Invalid_Slot_Handle: c_int = 37;
pub const FT_Err_Invalid_CharMap_Handle: c_int = 38;
pub const FT_Err_Invalid_Cache_Handle: c_int = 39;
pub const FT_Err_Invalid_Stream_Handle: c_int = 40;
pub const FT_Err_Too_Many_Drivers: c_int = 48;
pub const FT_Err_Too_Many_Extensions: c_int = 49;
pub const FT_Err_Out_Of_Memory: c_int = 64;
pub const FT_Err_Unlisted_Object: c_int = 65;
pub const FT_Err_Cannot_Open_Stream: c_int = 81;
pub const FT_Err_Invalid_Stream_Seek: c_int = 82;
pub const FT_Err_Invalid_Stream_Skip: c_int = 83;
pub const FT_Err_Invalid_Stream_Read: c_int = 84;
pub const FT_Err_Invalid_Stream_Operation: c_int = 85;
pub const FT_Err_Invalid_Frame_Operation: c_int = 86;
pub const FT_Err_Nested_Frame_Access: c_int = 87;
pub const FT_Err_Invalid_Frame_Read: c_int = 88;
pub const FT_Err_Raster_Uninitialized: c_int = 96;
pub const FT_Err_Raster_Corrupted: c_int = 97;
pub const FT_Err_Raster_Overflow: c_int = 98;
pub const FT_Err_Raster_Negative_Height: c_int = 99;
pub const FT_Err_Too_Many_Caches: c_int = 112;
pub const FT_Err_Invalid_Opcode: c_int = 128;
pub const FT_Err_Too_Few_Arguments: c_int = 129;
pub const FT_Err_Stack_Overflow: c_int = 130;
pub const FT_Err_Code_Overflow: c_int = 131;
pub const FT_Err_Bad_Argument: c_int = 132;
pub const FT_Err_Divide_By_Zero: c_int = 133;
pub const FT_Err_Invalid_Reference: c_int = 134;
pub const FT_Err_Debug_OpCode: c_int = 135;
pub const FT_Err_ENDF_In_Exec_Stream: c_int = 136;
pub const FT_Err_Nested_DEFS: c_int = 137;
pub const FT_Err_Invalid_CodeRange: c_int = 138;
pub const FT_Err_Execution_Too_Long: c_int = 139;
pub const FT_Err_Too_Many_Function_Defs: c_int = 140;
pub const FT_Err_Too_Many_Instruction_Defs: c_int = 141;
pub const FT_Err_Table_Missing: c_int = 142;
pub const FT_Err_Horiz_Header_Missing: c_int = 143;
pub const FT_Err_Locations_Missing: c_int = 144;
pub const FT_Err_Name_Table_Missing: c_int = 145;
pub const FT_Err_CMap_Table_Missing: c_int = 146;
pub const FT_Err_Hmtx_Table_Missing: c_int = 147;
pub const FT_Err_Post_Table_Missing: c_int = 148;
pub const FT_Err_Invalid_Horiz_Metrics: c_int = 149;
pub const FT_Err_Invalid_CharMap_Format: c_int = 150;
pub const FT_Err_Invalid_PPem: c_int = 151;
pub const FT_Err_Invalid_Vert_Metrics: c_int = 152;
pub const FT_Err_Could_Not_Find_Context: c_int = 153;
pub const FT_Err_Invalid_Post_Table_Format: c_int = 154;
pub const FT_Err_Invalid_Post_Table: c_int = 155;
pub const FT_Err_DEF_In_Glyf_Bytecode: c_int = 156;
pub const FT_Err_Missing_Bitmap: c_int = 157;
pub const FT_Err_Missing_SVG_Hooks: c_int = 158;
pub const FT_Err_Syntax_Error: c_int = 160;
pub const FT_Err_Stack_Underflow: c_int = 161;
pub const FT_Err_Ignore: c_int = 162;
pub const FT_Err_No_Unicode_Glyph_Name: c_int = 163;
pub const FT_Err_Glyph_Too_Big: c_int = 164;
pub const FT_Err_Missing_Startfont_Field: c_int = 176;
pub const FT_Err_Missing_Font_Field: c_int = 177;
pub const FT_Err_Missing_Size_Field: c_int = 178;
pub const FT_Err_Missing_Fontboundingbox_Field: c_int = 179;
pub const FT_Err_Missing_Chars_Field: c_int = 180;
pub const FT_Err_Missing_Startchar_Field: c_int = 181;
pub const FT_Err_Missing_Encoding_Field: c_int = 182;
pub const FT_Err_Missing_Bbx_Field: c_int = 183;
pub const FT_Err_Bbx_Too_Big: c_int = 184;
pub const FT_Err_Corrupted_Font_Header: c_int = 185;
pub const FT_Err_Corrupted_Font_Glyphs: c_int = 186;
pub const FT_Err_Max: c_int = 187;
const enum_unnamed_8 = c_uint;
pub extern fn FT_Error_String(error_code: FT_Error) [*c]const u8;
pub const struct_FT_Glyph_Metrics_ = extern struct {
    width: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    height: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    horiBearingX: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    horiBearingY: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    horiAdvance: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    vertBearingX: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    vertBearingY: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    vertAdvance: FT_Pos = @import("std").mem.zeroes(FT_Pos),
};
pub const FT_Glyph_Metrics = struct_FT_Glyph_Metrics_;
pub const struct_FT_Bitmap_Size_ = extern struct {
    height: FT_Short = @import("std").mem.zeroes(FT_Short),
    width: FT_Short = @import("std").mem.zeroes(FT_Short),
    size: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    x_ppem: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    y_ppem: FT_Pos = @import("std").mem.zeroes(FT_Pos),
};
pub const FT_Bitmap_Size = struct_FT_Bitmap_Size_;
pub const struct_FT_LibraryRec_ = opaque {};
pub const FT_Library = ?*struct_FT_LibraryRec_;
pub const struct_FT_ModuleRec_ = opaque {};
pub const FT_Module = ?*struct_FT_ModuleRec_;
pub const struct_FT_DriverRec_ = opaque {};
pub const FT_Driver = ?*struct_FT_DriverRec_;
pub const struct_FT_RendererRec_ = opaque {};
pub const FT_Renderer = ?*struct_FT_RendererRec_;
pub const FT_Face = [*c]struct_FT_FaceRec_;
pub const FT_ENCODING_NONE: c_int = 0;
pub const FT_ENCODING_MS_SYMBOL: c_int = 1937337698;
pub const FT_ENCODING_UNICODE: c_int = 1970170211;
pub const FT_ENCODING_SJIS: c_int = 1936353651;
pub const FT_ENCODING_PRC: c_int = 1734484000;
pub const FT_ENCODING_BIG5: c_int = 1651074869;
pub const FT_ENCODING_WANSUNG: c_int = 2002873971;
pub const FT_ENCODING_JOHAB: c_int = 1785686113;
pub const FT_ENCODING_GB2312: c_int = 1734484000;
pub const FT_ENCODING_MS_SJIS: c_int = 1936353651;
pub const FT_ENCODING_MS_GB2312: c_int = 1734484000;
pub const FT_ENCODING_MS_BIG5: c_int = 1651074869;
pub const FT_ENCODING_MS_WANSUNG: c_int = 2002873971;
pub const FT_ENCODING_MS_JOHAB: c_int = 1785686113;
pub const FT_ENCODING_ADOBE_STANDARD: c_int = 1094995778;
pub const FT_ENCODING_ADOBE_EXPERT: c_int = 1094992453;
pub const FT_ENCODING_ADOBE_CUSTOM: c_int = 1094992451;
pub const FT_ENCODING_ADOBE_LATIN_1: c_int = 1818326065;
pub const FT_ENCODING_OLD_LATIN_2: c_int = 1818326066;
pub const FT_ENCODING_APPLE_ROMAN: c_int = 1634889070;
pub const enum_FT_Encoding_ = c_uint;
pub const FT_Encoding = enum_FT_Encoding_;
pub const struct_FT_CharMapRec_ = extern struct {
    face: FT_Face = @import("std").mem.zeroes(FT_Face),
    encoding: FT_Encoding = @import("std").mem.zeroes(FT_Encoding),
    platform_id: FT_UShort = @import("std").mem.zeroes(FT_UShort),
    encoding_id: FT_UShort = @import("std").mem.zeroes(FT_UShort),
};
pub const FT_CharMap = [*c]struct_FT_CharMapRec_;
pub const struct_FT_SubGlyphRec_ = opaque {};
pub const FT_SubGlyph = ?*struct_FT_SubGlyphRec_;
pub const struct_FT_Slot_InternalRec_ = opaque {};
pub const FT_Slot_Internal = ?*struct_FT_Slot_InternalRec_;
pub const struct_FT_GlyphSlotRec_ = extern struct {
    library: FT_Library = @import("std").mem.zeroes(FT_Library),
    face: FT_Face = @import("std").mem.zeroes(FT_Face),
    next: FT_GlyphSlot = @import("std").mem.zeroes(FT_GlyphSlot),
    glyph_index: FT_UInt = @import("std").mem.zeroes(FT_UInt),
    generic: FT_Generic = @import("std").mem.zeroes(FT_Generic),
    metrics: FT_Glyph_Metrics = @import("std").mem.zeroes(FT_Glyph_Metrics),
    linearHoriAdvance: FT_Fixed = @import("std").mem.zeroes(FT_Fixed),
    linearVertAdvance: FT_Fixed = @import("std").mem.zeroes(FT_Fixed),
    advance: FT_Vector = @import("std").mem.zeroes(FT_Vector),
    format: FT_Glyph_Format = @import("std").mem.zeroes(FT_Glyph_Format),
    bitmap: FT_Bitmap = @import("std").mem.zeroes(FT_Bitmap),
    bitmap_left: FT_Int = @import("std").mem.zeroes(FT_Int),
    bitmap_top: FT_Int = @import("std").mem.zeroes(FT_Int),
    outline: FT_Outline = @import("std").mem.zeroes(FT_Outline),
    num_subglyphs: FT_UInt = @import("std").mem.zeroes(FT_UInt),
    subglyphs: FT_SubGlyph = @import("std").mem.zeroes(FT_SubGlyph),
    control_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    control_len: c_long = @import("std").mem.zeroes(c_long),
    lsb_delta: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    rsb_delta: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    other: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    internal: FT_Slot_Internal = @import("std").mem.zeroes(FT_Slot_Internal),
};
pub const FT_GlyphSlot = [*c]struct_FT_GlyphSlotRec_;
pub const struct_FT_Size_Metrics_ = extern struct {
    x_ppem: FT_UShort = @import("std").mem.zeroes(FT_UShort),
    y_ppem: FT_UShort = @import("std").mem.zeroes(FT_UShort),
    x_scale: FT_Fixed = @import("std").mem.zeroes(FT_Fixed),
    y_scale: FT_Fixed = @import("std").mem.zeroes(FT_Fixed),
    ascender: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    descender: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    height: FT_Pos = @import("std").mem.zeroes(FT_Pos),
    max_advance: FT_Pos = @import("std").mem.zeroes(FT_Pos),
};
pub const FT_Size_Metrics = struct_FT_Size_Metrics_;
pub const struct_FT_Size_InternalRec_ = opaque {};
pub const FT_Size_Internal = ?*struct_FT_Size_InternalRec_;
pub const struct_FT_SizeRec_ = extern struct {
    face: FT_Face = @import("std").mem.zeroes(FT_Face),
    generic: FT_Generic = @import("std").mem.zeroes(FT_Generic),
    metrics: FT_Size_Metrics = @import("std").mem.zeroes(FT_Size_Metrics),
    internal: FT_Size_Internal = @import("std").mem.zeroes(FT_Size_Internal),
};
pub const FT_Size = [*c]struct_FT_SizeRec_;
pub const struct_FT_Face_InternalRec_ = opaque {};
pub const FT_Face_Internal = ?*struct_FT_Face_InternalRec_;
pub const struct_FT_FaceRec_ = extern struct {
    num_faces: FT_Long = @import("std").mem.zeroes(FT_Long),
    face_index: FT_Long = @import("std").mem.zeroes(FT_Long),
    face_flags: FT_Long = @import("std").mem.zeroes(FT_Long),
    style_flags: FT_Long = @import("std").mem.zeroes(FT_Long),
    num_glyphs: FT_Long = @import("std").mem.zeroes(FT_Long),
    family_name: [*c]FT_String = @import("std").mem.zeroes([*c]FT_String),
    style_name: [*c]FT_String = @import("std").mem.zeroes([*c]FT_String),
    num_fixed_sizes: FT_Int = @import("std").mem.zeroes(FT_Int),
    available_sizes: [*c]FT_Bitmap_Size = @import("std").mem.zeroes([*c]FT_Bitmap_Size),
    num_charmaps: FT_Int = @import("std").mem.zeroes(FT_Int),
    charmaps: [*c]FT_CharMap = @import("std").mem.zeroes([*c]FT_CharMap),
    generic: FT_Generic = @import("std").mem.zeroes(FT_Generic),
    bbox: FT_BBox = @import("std").mem.zeroes(FT_BBox),
    units_per_EM: FT_UShort = @import("std").mem.zeroes(FT_UShort),
    ascender: FT_Short = @import("std").mem.zeroes(FT_Short),
    descender: FT_Short = @import("std").mem.zeroes(FT_Short),
    height: FT_Short = @import("std").mem.zeroes(FT_Short),
    max_advance_width: FT_Short = @import("std").mem.zeroes(FT_Short),
    max_advance_height: FT_Short = @import("std").mem.zeroes(FT_Short),
    underline_position: FT_Short = @import("std").mem.zeroes(FT_Short),
    underline_thickness: FT_Short = @import("std").mem.zeroes(FT_Short),
    glyph: FT_GlyphSlot = @import("std").mem.zeroes(FT_GlyphSlot),
    size: FT_Size = @import("std").mem.zeroes(FT_Size),
    charmap: FT_CharMap = @import("std").mem.zeroes(FT_CharMap),
    driver: FT_Driver = @import("std").mem.zeroes(FT_Driver),
    memory: FT_Memory = @import("std").mem.zeroes(FT_Memory),
    stream: FT_Stream = @import("std").mem.zeroes(FT_Stream),
    sizes_list: FT_ListRec = @import("std").mem.zeroes(FT_ListRec),
    autohint: FT_Generic = @import("std").mem.zeroes(FT_Generic),
    extensions: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    internal: FT_Face_Internal = @import("std").mem.zeroes(FT_Face_Internal),
};
pub const FT_CharMapRec = struct_FT_CharMapRec_;
pub const FT_FaceRec = struct_FT_FaceRec_;
pub const FT_SizeRec = struct_FT_SizeRec_;
pub const FT_GlyphSlotRec = struct_FT_GlyphSlotRec_;
pub extern fn FT_Init_FreeType(alibrary: [*c]FT_Library) FT_Error;
pub extern fn FT_Done_FreeType(library: FT_Library) FT_Error;
pub const struct_FT_Parameter_ = extern struct {
    tag: FT_ULong = @import("std").mem.zeroes(FT_ULong),
    data: FT_Pointer = @import("std").mem.zeroes(FT_Pointer),
};
pub const FT_Parameter = struct_FT_Parameter_;
pub const struct_FT_Open_Args_ = extern struct {
    flags: FT_UInt = @import("std").mem.zeroes(FT_UInt),
    memory_base: [*c]const FT_Byte = @import("std").mem.zeroes([*c]const FT_Byte),
    memory_size: FT_Long = @import("std").mem.zeroes(FT_Long),
    pathname: [*c]FT_String = @import("std").mem.zeroes([*c]FT_String),
    stream: FT_Stream = @import("std").mem.zeroes(FT_Stream),
    driver: FT_Module = @import("std").mem.zeroes(FT_Module),
    num_params: FT_Int = @import("std").mem.zeroes(FT_Int),
    params: [*c]FT_Parameter = @import("std").mem.zeroes([*c]FT_Parameter),
};
pub const FT_Open_Args = struct_FT_Open_Args_;
pub extern fn FT_New_Face(library: FT_Library, filepathname: [*c]const u8, face_index: FT_Long, aface: [*c]FT_Face) FT_Error;
pub extern fn FT_New_Memory_Face(library: FT_Library, file_base: [*c]const FT_Byte, file_size: FT_Long, face_index: FT_Long, aface: [*c]FT_Face) FT_Error;
pub extern fn FT_Open_Face(library: FT_Library, args: [*c]const FT_Open_Args, face_index: FT_Long, aface: [*c]FT_Face) FT_Error;
pub extern fn FT_Attach_File(face: FT_Face, filepathname: [*c]const u8) FT_Error;
pub extern fn FT_Attach_Stream(face: FT_Face, parameters: [*c]const FT_Open_Args) FT_Error;
pub extern fn FT_Reference_Face(face: FT_Face) FT_Error;
pub extern fn FT_Done_Face(face: FT_Face) FT_Error;
pub extern fn FT_Select_Size(face: FT_Face, strike_index: FT_Int) FT_Error;
pub const FT_SIZE_REQUEST_TYPE_NOMINAL: c_int = 0;
pub const FT_SIZE_REQUEST_TYPE_REAL_DIM: c_int = 1;
pub const FT_SIZE_REQUEST_TYPE_BBOX: c_int = 2;
pub const FT_SIZE_REQUEST_TYPE_CELL: c_int = 3;
pub const FT_SIZE_REQUEST_TYPE_SCALES: c_int = 4;
pub const FT_SIZE_REQUEST_TYPE_MAX: c_int = 5;
pub const enum_FT_Size_Request_Type_ = c_uint;
pub const FT_Size_Request_Type = enum_FT_Size_Request_Type_;
pub const struct_FT_Size_RequestRec_ = extern struct {
    type: FT_Size_Request_Type = @import("std").mem.zeroes(FT_Size_Request_Type),
    width: FT_Long = @import("std").mem.zeroes(FT_Long),
    height: FT_Long = @import("std").mem.zeroes(FT_Long),
    horiResolution: FT_UInt = @import("std").mem.zeroes(FT_UInt),
    vertResolution: FT_UInt = @import("std").mem.zeroes(FT_UInt),
};
pub const FT_Size_RequestRec = struct_FT_Size_RequestRec_;
pub const FT_Size_Request = [*c]struct_FT_Size_RequestRec_;
pub extern fn FT_Request_Size(face: FT_Face, req: FT_Size_Request) FT_Error;
pub extern fn FT_Set_Char_Size(face: FT_Face, char_width: FT_F26Dot6, char_height: FT_F26Dot6, horz_resolution: FT_UInt, vert_resolution: FT_UInt) FT_Error;
pub extern fn FT_Set_Pixel_Sizes(face: FT_Face, pixel_width: FT_UInt, pixel_height: FT_UInt) FT_Error;
pub extern fn FT_Load_Glyph(face: FT_Face, glyph_index: FT_UInt, load_flags: FT_Int32) FT_Error;
pub extern fn FT_Load_Char(face: FT_Face, char_code: FT_ULong, load_flags: FT_Int32) FT_Error;
pub extern fn FT_Set_Transform(face: FT_Face, matrix: [*c]FT_Matrix, delta: [*c]FT_Vector) void;
pub extern fn FT_Get_Transform(face: FT_Face, matrix: [*c]FT_Matrix, delta: [*c]FT_Vector) void;
pub const FT_RENDER_MODE_NORMAL: c_int = 0;
pub const FT_RENDER_MODE_LIGHT: c_int = 1;
pub const FT_RENDER_MODE_MONO: c_int = 2;
pub const FT_RENDER_MODE_LCD: c_int = 3;
pub const FT_RENDER_MODE_LCD_V: c_int = 4;
pub const FT_RENDER_MODE_SDF: c_int = 5;
pub const FT_RENDER_MODE_MAX: c_int = 6;
pub const enum_FT_Render_Mode_ = c_uint;
pub const FT_Render_Mode = enum_FT_Render_Mode_;
pub extern fn FT_Render_Glyph(slot: FT_GlyphSlot, render_mode: FT_Render_Mode) FT_Error;
pub const FT_KERNING_DEFAULT: c_int = 0;
pub const FT_KERNING_UNFITTED: c_int = 1;
pub const FT_KERNING_UNSCALED: c_int = 2;
pub const enum_FT_Kerning_Mode_ = enum(c_uint) {
    DEFAULT = 0,
    UNFITTED,
    UNSCALED,
};
pub const FT_Kerning_Mode = enum_FT_Kerning_Mode_;
pub extern fn FT_Get_Kerning(face: FT_Face, left_glyph: FT_UInt, right_glyph: FT_UInt, kern_mode: FT_UInt, akerning: [*c]FT_Vector) FT_Error;
pub extern fn FT_Get_Track_Kerning(face: FT_Face, point_size: FT_Fixed, degree: FT_Int, akerning: [*c]FT_Fixed) FT_Error;
pub extern fn FT_Select_Charmap(face: FT_Face, encoding: FT_Encoding) FT_Error;
pub extern fn FT_Set_Charmap(face: FT_Face, charmap: FT_CharMap) FT_Error;
pub extern fn FT_Get_Charmap_Index(charmap: FT_CharMap) FT_Int;
pub extern fn FT_Get_Char_Index(face: FT_Face, charcode: FT_ULong) FT_UInt;
pub extern fn FT_Get_First_Char(face: FT_Face, agindex: [*c]FT_UInt) FT_ULong;
pub extern fn FT_Get_Next_Char(face: FT_Face, char_code: FT_ULong, agindex: [*c]FT_UInt) FT_ULong;
pub extern fn FT_Face_Properties(face: FT_Face, num_properties: FT_UInt, properties: [*c]FT_Parameter) FT_Error;
pub extern fn FT_Get_Name_Index(face: FT_Face, glyph_name: [*c]const FT_String) FT_UInt;
pub extern fn FT_Get_Glyph_Name(face: FT_Face, glyph_index: FT_UInt, buffer: FT_Pointer, buffer_max: FT_UInt) FT_Error;
pub extern fn FT_Get_Postscript_Name(face: FT_Face) [*c]const u8;
pub extern fn FT_Get_SubGlyph_Info(glyph: FT_GlyphSlot, sub_index: FT_UInt, p_index: [*c]FT_Int, p_flags: [*c]FT_UInt, p_arg1: [*c]FT_Int, p_arg2: [*c]FT_Int, p_transform: [*c]FT_Matrix) FT_Error;
pub extern fn FT_Get_FSType_Flags(face: FT_Face) FT_UShort;
pub extern fn FT_Face_GetCharVariantIndex(face: FT_Face, charcode: FT_ULong, variantSelector: FT_ULong) FT_UInt;
pub extern fn FT_Face_GetCharVariantIsDefault(face: FT_Face, charcode: FT_ULong, variantSelector: FT_ULong) FT_Int;
pub extern fn FT_Face_GetVariantSelectors(face: FT_Face) [*c]FT_UInt32;
pub extern fn FT_Face_GetVariantsOfChar(face: FT_Face, charcode: FT_ULong) [*c]FT_UInt32;
pub extern fn FT_Face_GetCharsOfVariant(face: FT_Face, variantSelector: FT_ULong) [*c]FT_UInt32;
pub extern fn FT_MulDiv(a: FT_Long, b: FT_Long, c: FT_Long) FT_Long;
pub extern fn FT_MulFix(a: FT_Long, b: FT_Long) FT_Long;
pub extern fn FT_DivFix(a: FT_Long, b: FT_Long) FT_Long;
pub extern fn FT_RoundFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_CeilFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_FloorFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_Vector_Transform(vector: [*c]FT_Vector, matrix: [*c]const FT_Matrix) void;
pub extern fn FT_Library_Version(library: FT_Library, amajor: [*c]FT_Int, aminor: [*c]FT_Int, apatch: [*c]FT_Int) void;
pub extern fn FT_Face_CheckTrueTypePatents(face: FT_Face) FT_Bool;
pub extern fn FT_Face_SetUnpatentedHinting(face: FT_Face, value: FT_Bool) FT_Bool;
pub const struct_stat = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt_t = @import("std").mem.zeroes(__blkcnt_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};
pub extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn fstat(__fd: c_int, __buf: [*c]struct_stat) c_int;
pub extern fn fstatat(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat, __flag: c_int) c_int;
pub extern fn lstat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn chmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn lchmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn fchmod(__fd: c_int, __mode: __mode_t) c_int;
pub extern fn fchmodat(__fd: c_int, __file: [*c]const u8, __mode: __mode_t, __flag: c_int) c_int;
pub extern fn umask(__mask: __mode_t) __mode_t;
pub extern fn mkdir(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkdirat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mknod(__path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mknodat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mkfifo(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkfifoat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn utimensat(__fd: c_int, __path: [*c]const u8, __times: [*c]const struct_timespec, __flags: c_int) c_int;
pub extern fn futimens(__fd: c_int, __times: [*c]const struct_timespec) c_int;
pub const FcChar8 = u8;
pub const FcChar16 = c_ushort;
pub const FcChar32 = c_uint;
pub const FcBool = c_int;
pub const FcTypeUnknown: c_int = -1;
pub const FcTypeVoid: c_int = 0;
pub const FcTypeInteger: c_int = 1;
pub const FcTypeDouble: c_int = 2;
pub const FcTypeString: c_int = 3;
pub const FcTypeBool: c_int = 4;
pub const FcTypeMatrix: c_int = 5;
pub const FcTypeCharSet: c_int = 6;
pub const FcTypeFTFace: c_int = 7;
pub const FcTypeLangSet: c_int = 8;
pub const FcTypeRange: c_int = 9;
pub const enum__FcType = c_int;
pub const FcType = enum__FcType;
pub const struct__FcMatrix = extern struct {
    xx: f64 = @import("std").mem.zeroes(f64),
    xy: f64 = @import("std").mem.zeroes(f64),
    yx: f64 = @import("std").mem.zeroes(f64),
    yy: f64 = @import("std").mem.zeroes(f64),
};
pub const FcMatrix = struct__FcMatrix;
pub const struct__FcCharSet = opaque {};
pub const FcCharSet = struct__FcCharSet;
pub const struct__FcObjectType = extern struct {
    object: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    type: FcType = @import("std").mem.zeroes(FcType),
};
pub const FcObjectType = struct__FcObjectType;
pub const struct__FcConstant = extern struct {
    name: [*c]const FcChar8 = @import("std").mem.zeroes([*c]const FcChar8),
    object: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    value: c_int = @import("std").mem.zeroes(c_int),
};
pub const FcConstant = struct__FcConstant;
pub const FcResultMatch: c_int = 0;
pub const FcResultNoMatch: c_int = 1;
pub const FcResultTypeMismatch: c_int = 2;
pub const FcResultNoId: c_int = 3;
pub const FcResultOutOfMemory: c_int = 4;
pub const enum__FcResult = c_uint;
pub const FcResult = enum__FcResult;
pub const FcValueBindingWeak: c_int = 0;
pub const FcValueBindingStrong: c_int = 1;
pub const FcValueBindingSame: c_int = 2;
pub const FcValueBindingEnd: c_int = 2147483647;
pub const enum__FcValueBinding = c_uint;
pub const FcValueBinding = enum__FcValueBinding;
pub const struct__FcPattern = opaque {};
pub const FcPattern = struct__FcPattern;
pub const struct__FcPatternIter = extern struct {
    dummy1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    dummy2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const FcPatternIter = struct__FcPatternIter;
pub const struct__FcLangSet = opaque {};
pub const FcLangSet = struct__FcLangSet;
pub const struct__FcRange = opaque {};
pub const FcRange = struct__FcRange;
const union_unnamed_9 = extern union {
    s: [*c]const FcChar8,
    i: c_int,
    b: FcBool,
    d: f64,
    m: [*c]const FcMatrix,
    c: ?*const FcCharSet,
    f: ?*anyopaque,
    l: ?*const FcLangSet,
    r: ?*const FcRange,
};
pub const struct__FcValue = extern struct {
    type: FcType = @import("std").mem.zeroes(FcType),
    u: union_unnamed_9 = @import("std").mem.zeroes(union_unnamed_9),
};
pub const FcValue = struct__FcValue;
pub const struct__FcFontSet = extern struct {
    nfont: c_int = @import("std").mem.zeroes(c_int),
    sfont: c_int = @import("std").mem.zeroes(c_int),
    fonts: [*c]?*FcPattern = @import("std").mem.zeroes([*c]?*FcPattern),
};
pub const FcFontSet = struct__FcFontSet;
pub const struct__FcObjectSet = extern struct {
    nobject: c_int = @import("std").mem.zeroes(c_int),
    sobject: c_int = @import("std").mem.zeroes(c_int),
    objects: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
};
pub const FcObjectSet = struct__FcObjectSet;
pub const FcMatchPattern: c_int = 0;
pub const FcMatchFont: c_int = 1;
pub const FcMatchScan: c_int = 2;
pub const FcMatchKindEnd: c_int = 3;
pub const FcMatchKindBegin: c_int = 0;
pub const enum__FcMatchKind = c_uint;
pub const FcMatchKind = enum__FcMatchKind;
pub const FcLangEqual: c_int = 0;
pub const FcLangDifferentCountry: c_int = 1;
pub const FcLangDifferentTerritory: c_int = 1;
pub const FcLangDifferentLang: c_int = 2;
pub const enum__FcLangResult = c_uint;
pub const FcLangResult = enum__FcLangResult;
pub const FcSetSystem: c_int = 0;
pub const FcSetApplication: c_int = 1;
pub const enum__FcSetName = c_uint;
pub const FcSetName = enum__FcSetName;
pub const struct__FcConfigFileInfoIter = extern struct {
    dummy1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    dummy2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    dummy3: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const FcConfigFileInfoIter = struct__FcConfigFileInfoIter;
pub const struct__FcAtomic = opaque {};
pub const FcAtomic = struct__FcAtomic;
pub const FcEndianBig: c_int = 0;
pub const FcEndianLittle: c_int = 1;
pub const FcEndian = c_uint;
pub const struct__FcConfig = opaque {};
pub const FcConfig = struct__FcConfig;
pub const struct__FcGlobalCache = opaque {};
pub const FcFileCache = struct__FcGlobalCache;
pub const struct__FcBlanks = opaque {};
pub const FcBlanks = struct__FcBlanks;
pub const struct__FcStrList = opaque {};
pub const FcStrList = struct__FcStrList;
pub const struct__FcStrSet = opaque {};
pub const FcStrSet = struct__FcStrSet;
pub const struct__FcCache = opaque {};
pub const FcCache = struct__FcCache;
pub extern fn FcBlanksCreate() ?*FcBlanks;
pub extern fn FcBlanksDestroy(b: ?*FcBlanks) void;
pub extern fn FcBlanksAdd(b: ?*FcBlanks, ucs4: FcChar32) FcBool;
pub extern fn FcBlanksIsMember(b: ?*FcBlanks, ucs4: FcChar32) FcBool;
pub extern fn FcCacheDir(c: ?*const FcCache) [*c]const FcChar8;
pub extern fn FcCacheCopySet(c: ?*const FcCache) [*c]FcFontSet;
pub extern fn FcCacheSubdir(c: ?*const FcCache, i: c_int) [*c]const FcChar8;
pub extern fn FcCacheNumSubdir(c: ?*const FcCache) c_int;
pub extern fn FcCacheNumFont(c: ?*const FcCache) c_int;
pub extern fn FcDirCacheUnlink(dir: [*c]const FcChar8, config: ?*FcConfig) FcBool;
pub extern fn FcDirCacheValid(cache_file: [*c]const FcChar8) FcBool;
pub extern fn FcDirCacheClean(cache_dir: [*c]const FcChar8, verbose: FcBool) FcBool;
pub extern fn FcCacheCreateTagFile(config: ?*FcConfig) void;
pub extern fn FcDirCacheCreateUUID(dir: [*c]FcChar8, force: FcBool, config: ?*FcConfig) FcBool;
pub extern fn FcDirCacheDeleteUUID(dir: [*c]const FcChar8, config: ?*FcConfig) FcBool;
pub extern fn FcConfigHome() [*c]FcChar8;
pub extern fn FcConfigEnableHome(enable: FcBool) FcBool;
pub extern fn FcConfigGetFilename(config: ?*FcConfig, url: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcConfigFilename(url: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcConfigCreate() ?*FcConfig;
pub extern fn FcConfigReference(config: ?*FcConfig) ?*FcConfig;
pub extern fn FcConfigDestroy(config: ?*FcConfig) void;
pub extern fn FcConfigSetCurrent(config: ?*FcConfig) FcBool;
pub extern fn FcConfigGetCurrent() ?*FcConfig;
pub extern fn FcConfigUptoDate(config: ?*FcConfig) FcBool;
pub extern fn FcConfigBuildFonts(config: ?*FcConfig) FcBool;
pub extern fn FcConfigGetFontDirs(config: ?*FcConfig) ?*FcStrList;
pub extern fn FcConfigGetConfigDirs(config: ?*FcConfig) ?*FcStrList;
pub extern fn FcConfigGetConfigFiles(config: ?*FcConfig) ?*FcStrList;
pub extern fn FcConfigGetCache(config: ?*FcConfig) [*c]FcChar8;
pub extern fn FcConfigGetBlanks(config: ?*FcConfig) ?*FcBlanks;
pub extern fn FcConfigGetCacheDirs(config: ?*FcConfig) ?*FcStrList;
pub extern fn FcConfigGetRescanInterval(config: ?*FcConfig) c_int;
pub extern fn FcConfigSetRescanInterval(config: ?*FcConfig, rescanInterval: c_int) FcBool;
pub extern fn FcConfigGetFonts(config: ?*FcConfig, set: FcSetName) [*c]FcFontSet;
pub extern fn FcConfigAppFontAddFile(config: ?*FcConfig, file: [*c]const FcChar8) FcBool;
pub extern fn FcConfigAppFontAddDir(config: ?*FcConfig, dir: [*c]const FcChar8) FcBool;
pub extern fn FcConfigAppFontClear(config: ?*FcConfig) void;
pub extern fn FcConfigSubstituteWithPat(config: ?*FcConfig, p: ?*FcPattern, p_pat: ?*FcPattern, kind: FcMatchKind) FcBool;
pub extern fn FcConfigSubstitute(config: ?*FcConfig, p: ?*FcPattern, kind: FcMatchKind) FcBool;
pub extern fn FcConfigGetSysRoot(config: ?*const FcConfig) [*c]const FcChar8;
pub extern fn FcConfigSetSysRoot(config: ?*FcConfig, sysroot: [*c]const FcChar8) void;
pub extern fn FcConfigFileInfoIterInit(config: ?*FcConfig, iter: [*c]FcConfigFileInfoIter) void;
pub extern fn FcConfigFileInfoIterNext(config: ?*FcConfig, iter: [*c]FcConfigFileInfoIter) FcBool;
pub extern fn FcConfigFileInfoIterGet(config: ?*FcConfig, iter: [*c]FcConfigFileInfoIter, name: [*c][*c]FcChar8, description: [*c][*c]FcChar8, enabled: [*c]FcBool) FcBool;
pub extern fn FcCharSetCreate() ?*FcCharSet;
pub extern fn FcCharSetNew() ?*FcCharSet;
pub extern fn FcCharSetDestroy(fcs: ?*FcCharSet) void;
pub extern fn FcCharSetAddChar(fcs: ?*FcCharSet, ucs4: FcChar32) FcBool;
pub extern fn FcCharSetDelChar(fcs: ?*FcCharSet, ucs4: FcChar32) FcBool;
pub extern fn FcCharSetCopy(src: ?*FcCharSet) ?*FcCharSet;
pub extern fn FcCharSetEqual(a: ?*const FcCharSet, b: ?*const FcCharSet) FcBool;
pub extern fn FcCharSetIntersect(a: ?*const FcCharSet, b: ?*const FcCharSet) ?*FcCharSet;
pub extern fn FcCharSetUnion(a: ?*const FcCharSet, b: ?*const FcCharSet) ?*FcCharSet;
pub extern fn FcCharSetSubtract(a: ?*const FcCharSet, b: ?*const FcCharSet) ?*FcCharSet;
pub extern fn FcCharSetMerge(a: ?*FcCharSet, b: ?*const FcCharSet, changed: [*c]FcBool) FcBool;
pub extern fn FcCharSetHasChar(fcs: ?*const FcCharSet, ucs4: FcChar32) FcBool;
pub extern fn FcCharSetCount(a: ?*const FcCharSet) FcChar32;
pub extern fn FcCharSetIntersectCount(a: ?*const FcCharSet, b: ?*const FcCharSet) FcChar32;
pub extern fn FcCharSetSubtractCount(a: ?*const FcCharSet, b: ?*const FcCharSet) FcChar32;
pub extern fn FcCharSetIsSubset(a: ?*const FcCharSet, b: ?*const FcCharSet) FcBool;
pub extern fn FcCharSetFirstPage(a: ?*const FcCharSet, map: [*c]FcChar32, next: [*c]FcChar32) FcChar32;
pub extern fn FcCharSetNextPage(a: ?*const FcCharSet, map: [*c]FcChar32, next: [*c]FcChar32) FcChar32;
pub extern fn FcCharSetCoverage(a: ?*const FcCharSet, page: FcChar32, result: [*c]FcChar32) FcChar32;
pub extern fn FcValuePrint(v: FcValue) void;
pub extern fn FcPatternPrint(p: ?*const FcPattern) void;
pub extern fn FcFontSetPrint(s: [*c]const FcFontSet) void;
pub extern fn FcGetDefaultLangs() ?*FcStrSet;
pub extern fn FcDefaultSubstitute(pattern: ?*FcPattern) void;
pub extern fn FcFileIsDir(file: [*c]const FcChar8) FcBool;
pub extern fn FcFileScan(set: [*c]FcFontSet, dirs: ?*FcStrSet, cache: ?*FcFileCache, blanks: ?*FcBlanks, file: [*c]const FcChar8, force: FcBool) FcBool;
pub extern fn FcDirScan(set: [*c]FcFontSet, dirs: ?*FcStrSet, cache: ?*FcFileCache, blanks: ?*FcBlanks, dir: [*c]const FcChar8, force: FcBool) FcBool;
pub extern fn FcDirSave(set: [*c]FcFontSet, dirs: ?*FcStrSet, dir: [*c]const FcChar8) FcBool;
pub extern fn FcDirCacheLoad(dir: [*c]const FcChar8, config: ?*FcConfig, cache_file: [*c][*c]FcChar8) ?*FcCache;
pub extern fn FcDirCacheRescan(dir: [*c]const FcChar8, config: ?*FcConfig) ?*FcCache;
pub extern fn FcDirCacheRead(dir: [*c]const FcChar8, force: FcBool, config: ?*FcConfig) ?*FcCache;
pub extern fn FcDirCacheLoadFile(cache_file: [*c]const FcChar8, file_stat: [*c]struct_stat) ?*FcCache;
pub extern fn FcDirCacheUnload(cache: ?*FcCache) void;
pub extern fn FcFreeTypeQuery(file: [*c]const FcChar8, id: c_uint, blanks: ?*FcBlanks, count: [*c]c_int) ?*FcPattern;
pub extern fn FcFreeTypeQueryAll(file: [*c]const FcChar8, id: c_uint, blanks: ?*FcBlanks, count: [*c]c_int, set: [*c]FcFontSet) c_uint;
pub extern fn FcFontSetCreate() [*c]FcFontSet;
pub extern fn FcFontSetDestroy(s: [*c]FcFontSet) void;
pub extern fn FcFontSetAdd(s: [*c]FcFontSet, font: ?*FcPattern) FcBool;
pub extern fn FcInitLoadConfig() ?*FcConfig;
pub extern fn FcInitLoadConfigAndFonts() ?*FcConfig;
pub extern fn FcInit() FcBool;
pub extern fn FcFini() void;
pub extern fn FcGetVersion() c_int;
pub extern fn FcInitReinitialize() FcBool;
pub extern fn FcInitBringUptoDate() FcBool;
pub extern fn FcGetLangs() ?*FcStrSet;
pub extern fn FcLangNormalize(lang: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcLangGetCharSet(lang: [*c]const FcChar8) ?*const FcCharSet;
pub extern fn FcLangSetCreate() ?*FcLangSet;
pub extern fn FcLangSetDestroy(ls: ?*FcLangSet) void;
pub extern fn FcLangSetCopy(ls: ?*const FcLangSet) ?*FcLangSet;
pub extern fn FcLangSetAdd(ls: ?*FcLangSet, lang: [*c]const FcChar8) FcBool;
pub extern fn FcLangSetDel(ls: ?*FcLangSet, lang: [*c]const FcChar8) FcBool;
pub extern fn FcLangSetHasLang(ls: ?*const FcLangSet, lang: [*c]const FcChar8) FcLangResult;
pub extern fn FcLangSetCompare(lsa: ?*const FcLangSet, lsb: ?*const FcLangSet) FcLangResult;
pub extern fn FcLangSetContains(lsa: ?*const FcLangSet, lsb: ?*const FcLangSet) FcBool;
pub extern fn FcLangSetEqual(lsa: ?*const FcLangSet, lsb: ?*const FcLangSet) FcBool;
pub extern fn FcLangSetHash(ls: ?*const FcLangSet) FcChar32;
pub extern fn FcLangSetGetLangs(ls: ?*const FcLangSet) ?*FcStrSet;
pub extern fn FcLangSetUnion(a: ?*const FcLangSet, b: ?*const FcLangSet) ?*FcLangSet;
pub extern fn FcLangSetSubtract(a: ?*const FcLangSet, b: ?*const FcLangSet) ?*FcLangSet;
pub extern fn FcObjectSetCreate() [*c]FcObjectSet;
pub extern fn FcObjectSetAdd(os: [*c]FcObjectSet, object: [*c]const u8) FcBool;
pub extern fn FcObjectSetDestroy(os: [*c]FcObjectSet) void;
pub extern fn FcObjectSetVaBuild(first: [*c]const u8, va: [*c]struct___va_list_tag_4) [*c]FcObjectSet;
pub extern fn FcObjectSetBuild(first: [*c]const u8, ...) [*c]FcObjectSet;
pub extern fn FcFontSetList(config: ?*FcConfig, sets: [*c][*c]FcFontSet, nsets: c_int, p: ?*FcPattern, os: [*c]FcObjectSet) [*c]FcFontSet;
pub extern fn FcFontList(config: ?*FcConfig, p: ?*FcPattern, os: [*c]FcObjectSet) [*c]FcFontSet;
pub extern fn FcAtomicCreate(file: [*c]const FcChar8) ?*FcAtomic;
pub extern fn FcAtomicLock(atomic: ?*FcAtomic) FcBool;
pub extern fn FcAtomicNewFile(atomic: ?*FcAtomic) [*c]FcChar8;
pub extern fn FcAtomicOrigFile(atomic: ?*FcAtomic) [*c]FcChar8;
pub extern fn FcAtomicReplaceOrig(atomic: ?*FcAtomic) FcBool;
pub extern fn FcAtomicDeleteNew(atomic: ?*FcAtomic) void;
pub extern fn FcAtomicUnlock(atomic: ?*FcAtomic) void;
pub extern fn FcAtomicDestroy(atomic: ?*FcAtomic) void;
pub extern fn FcFontSetMatch(config: ?*FcConfig, sets: [*c][*c]FcFontSet, nsets: c_int, p: ?*FcPattern, result: [*c]FcResult) ?*FcPattern;
pub extern fn FcFontMatch(config: ?*FcConfig, p: ?*FcPattern, result: [*c]FcResult) ?*FcPattern;
pub extern fn FcFontRenderPrepare(config: ?*FcConfig, pat: ?*FcPattern, font: ?*FcPattern) ?*FcPattern;
pub extern fn FcFontSetSort(config: ?*FcConfig, sets: [*c][*c]FcFontSet, nsets: c_int, p: ?*FcPattern, trim: FcBool, csp: [*c]?*FcCharSet, result: [*c]FcResult) [*c]FcFontSet;
pub extern fn FcFontSort(config: ?*FcConfig, p: ?*FcPattern, trim: FcBool, csp: [*c]?*FcCharSet, result: [*c]FcResult) [*c]FcFontSet;
pub extern fn FcFontSetSortDestroy(fs: [*c]FcFontSet) void;
pub extern fn FcMatrixCopy(mat: [*c]const FcMatrix) [*c]FcMatrix;
pub extern fn FcMatrixEqual(mat1: [*c]const FcMatrix, mat2: [*c]const FcMatrix) FcBool;
pub extern fn FcMatrixMultiply(result: [*c]FcMatrix, a: [*c]const FcMatrix, b: [*c]const FcMatrix) void;
pub extern fn FcMatrixRotate(m: [*c]FcMatrix, c: f64, s: f64) void;
pub extern fn FcMatrixScale(m: [*c]FcMatrix, sx: f64, sy: f64) void;
pub extern fn FcMatrixShear(m: [*c]FcMatrix, sh: f64, sv: f64) void;
pub extern fn FcNameRegisterObjectTypes(types: [*c]const FcObjectType, ntype: c_int) FcBool;
pub extern fn FcNameUnregisterObjectTypes(types: [*c]const FcObjectType, ntype: c_int) FcBool;
pub extern fn FcNameGetObjectType(object: [*c]const u8) [*c]const FcObjectType;
pub extern fn FcNameRegisterConstants(consts: [*c]const FcConstant, nconsts: c_int) FcBool;
pub extern fn FcNameUnregisterConstants(consts: [*c]const FcConstant, nconsts: c_int) FcBool;
pub extern fn FcNameGetConstant(string: [*c]const FcChar8) [*c]const FcConstant;
pub extern fn FcNameGetConstantFor(string: [*c]const FcChar8, object: [*c]const u8) [*c]const FcConstant;
pub extern fn FcNameConstant(string: [*c]const FcChar8, result: [*c]c_int) FcBool;
pub extern fn FcNameParse(name: [*c]const FcChar8) ?*FcPattern;
pub extern fn FcNameUnparse(pat: ?*FcPattern) [*c]FcChar8;
pub extern fn FcPatternCreate() ?*FcPattern;
pub extern fn FcPatternDuplicate(p: ?*const FcPattern) ?*FcPattern;
pub extern fn FcPatternReference(p: ?*FcPattern) void;
pub extern fn FcPatternFilter(p: ?*FcPattern, os: [*c]const FcObjectSet) ?*FcPattern;
pub extern fn FcValueDestroy(v: FcValue) void;
pub extern fn FcValueEqual(va: FcValue, vb: FcValue) FcBool;
pub extern fn FcValueSave(v: FcValue) FcValue;
pub extern fn FcPatternDestroy(p: ?*FcPattern) void;
pub extern fn FcPatternObjectCount(pat: ?*const FcPattern) c_int;
pub extern fn FcPatternEqual(pa: ?*const FcPattern, pb: ?*const FcPattern) FcBool;
pub extern fn FcPatternEqualSubset(pa: ?*const FcPattern, pb: ?*const FcPattern, os: [*c]const FcObjectSet) FcBool;
pub extern fn FcPatternHash(p: ?*const FcPattern) FcChar32;
pub extern fn FcPatternAdd(p: ?*FcPattern, object: [*c]const u8, value: FcValue, append: FcBool) FcBool;
pub extern fn FcPatternAddWeak(p: ?*FcPattern, object: [*c]const u8, value: FcValue, append: FcBool) FcBool;
pub extern fn FcPatternGet(p: ?*const FcPattern, object: [*c]const u8, id: c_int, v: [*c]FcValue) FcResult;
pub extern fn FcPatternGetWithBinding(p: ?*const FcPattern, object: [*c]const u8, id: c_int, v: [*c]FcValue, b: [*c]FcValueBinding) FcResult;
pub extern fn FcPatternDel(p: ?*FcPattern, object: [*c]const u8) FcBool;
pub extern fn FcPatternRemove(p: ?*FcPattern, object: [*c]const u8, id: c_int) FcBool;
pub extern fn FcPatternAddInteger(p: ?*FcPattern, object: [*c]const u8, i: c_int) FcBool;
pub extern fn FcPatternAddDouble(p: ?*FcPattern, object: [*c]const u8, d: f64) FcBool;
pub extern fn FcPatternAddString(p: ?*FcPattern, object: [*c]const u8, s: [*c]const FcChar8) FcBool;
pub extern fn FcPatternAddMatrix(p: ?*FcPattern, object: [*c]const u8, s: [*c]const FcMatrix) FcBool;
pub extern fn FcPatternAddCharSet(p: ?*FcPattern, object: [*c]const u8, c: ?*const FcCharSet) FcBool;
pub extern fn FcPatternAddBool(p: ?*FcPattern, object: [*c]const u8, b: FcBool) FcBool;
pub extern fn FcPatternAddLangSet(p: ?*FcPattern, object: [*c]const u8, ls: ?*const FcLangSet) FcBool;
pub extern fn FcPatternAddRange(p: ?*FcPattern, object: [*c]const u8, r: ?*const FcRange) FcBool;
pub extern fn FcPatternGetInteger(p: ?*const FcPattern, object: [*c]const u8, n: c_int, i: [*c]c_int) FcResult;
pub extern fn FcPatternGetDouble(p: ?*const FcPattern, object: [*c]const u8, n: c_int, d: [*c]f64) FcResult;
pub extern fn FcPatternGetString(p: ?*const FcPattern, object: [*c]const u8, n: c_int, s: [*c][*c]FcChar8) FcResult;
pub extern fn FcPatternGetMatrix(p: ?*const FcPattern, object: [*c]const u8, n: c_int, s: [*c][*c]FcMatrix) FcResult;
pub extern fn FcPatternGetCharSet(p: ?*const FcPattern, object: [*c]const u8, n: c_int, c: [*c]?*FcCharSet) FcResult;
pub extern fn FcPatternGetBool(p: ?*const FcPattern, object: [*c]const u8, n: c_int, b: [*c]FcBool) FcResult;
pub extern fn FcPatternGetLangSet(p: ?*const FcPattern, object: [*c]const u8, n: c_int, ls: [*c]?*FcLangSet) FcResult;
pub extern fn FcPatternGetRange(p: ?*const FcPattern, object: [*c]const u8, id: c_int, r: [*c]?*FcRange) FcResult;
pub extern fn FcPatternVaBuild(p: ?*FcPattern, va: [*c]struct___va_list_tag_4) ?*FcPattern;
pub extern fn FcPatternBuild(p: ?*FcPattern, ...) ?*FcPattern;
pub extern fn FcPatternFormat(pat: ?*FcPattern, format: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcRangeCreateDouble(begin: f64, end: f64) ?*FcRange;
pub extern fn FcRangeCreateInteger(begin: FcChar32, end: FcChar32) ?*FcRange;
pub extern fn FcRangeDestroy(range: ?*FcRange) void;
pub extern fn FcRangeCopy(r: ?*const FcRange) ?*FcRange;
pub extern fn FcRangeGetDouble(range: ?*const FcRange, begin: [*c]f64, end: [*c]f64) FcBool;
pub extern fn FcPatternIterStart(pat: ?*const FcPattern, iter: [*c]FcPatternIter) void;
pub extern fn FcPatternIterNext(pat: ?*const FcPattern, iter: [*c]FcPatternIter) FcBool;
pub extern fn FcPatternIterEqual(p1: ?*const FcPattern, @"i1": [*c]FcPatternIter, p2: ?*const FcPattern, @"i2": [*c]FcPatternIter) FcBool;
pub extern fn FcPatternFindIter(pat: ?*const FcPattern, iter: [*c]FcPatternIter, object: [*c]const u8) FcBool;
pub extern fn FcPatternIterIsValid(pat: ?*const FcPattern, iter: [*c]FcPatternIter) FcBool;
pub extern fn FcPatternIterGetObject(pat: ?*const FcPattern, iter: [*c]FcPatternIter) [*c]const u8;
pub extern fn FcPatternIterValueCount(pat: ?*const FcPattern, iter: [*c]FcPatternIter) c_int;
pub extern fn FcPatternIterGetValue(pat: ?*const FcPattern, iter: [*c]FcPatternIter, id: c_int, v: [*c]FcValue, b: [*c]FcValueBinding) FcResult;
pub extern fn FcWeightFromOpenType(ot_weight: c_int) c_int;
pub extern fn FcWeightFromOpenTypeDouble(ot_weight: f64) f64;
pub extern fn FcWeightToOpenType(fc_weight: c_int) c_int;
pub extern fn FcWeightToOpenTypeDouble(fc_weight: f64) f64;
pub extern fn FcStrCopy(s: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcStrCopyFilename(s: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcStrPlus(s1: [*c]const FcChar8, s2: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcStrFree(s: [*c]FcChar8) void;
pub extern fn FcStrDowncase(s: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcStrCmpIgnoreCase(s1: [*c]const FcChar8, s2: [*c]const FcChar8) c_int;
pub extern fn FcStrCmp(s1: [*c]const FcChar8, s2: [*c]const FcChar8) c_int;
pub extern fn FcStrStrIgnoreCase(s1: [*c]const FcChar8, s2: [*c]const FcChar8) [*c]const FcChar8;
pub extern fn FcStrStr(s1: [*c]const FcChar8, s2: [*c]const FcChar8) [*c]const FcChar8;
pub extern fn FcUtf8ToUcs4(src_orig: [*c]const FcChar8, dst: [*c]FcChar32, len: c_int) c_int;
pub extern fn FcUtf8Len(string: [*c]const FcChar8, len: c_int, nchar: [*c]c_int, wchar: [*c]c_int) FcBool;
pub extern fn FcUcs4ToUtf8(ucs4: FcChar32, dest: [*c]FcChar8) c_int;
pub extern fn FcUtf16ToUcs4(src_orig: [*c]const FcChar8, endian: FcEndian, dst: [*c]FcChar32, len: c_int) c_int;
pub extern fn FcUtf16Len(string: [*c]const FcChar8, endian: FcEndian, len: c_int, nchar: [*c]c_int, wchar: [*c]c_int) FcBool;
pub extern fn FcStrBuildFilename(path: [*c]const FcChar8, ...) [*c]FcChar8;
pub extern fn FcStrDirname(file: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcStrBasename(file: [*c]const FcChar8) [*c]FcChar8;
pub extern fn FcStrSetCreate() ?*FcStrSet;
pub extern fn FcStrSetMember(set: ?*FcStrSet, s: [*c]const FcChar8) FcBool;
pub extern fn FcStrSetEqual(sa: ?*FcStrSet, sb: ?*FcStrSet) FcBool;
pub extern fn FcStrSetAdd(set: ?*FcStrSet, s: [*c]const FcChar8) FcBool;
pub extern fn FcStrSetAddFilename(set: ?*FcStrSet, s: [*c]const FcChar8) FcBool;
pub extern fn FcStrSetDel(set: ?*FcStrSet, s: [*c]const FcChar8) FcBool;
pub extern fn FcStrSetDestroy(set: ?*FcStrSet) void;
pub extern fn FcStrListCreate(set: ?*FcStrSet) ?*FcStrList;
pub extern fn FcStrListFirst(list: ?*FcStrList) void;
pub extern fn FcStrListNext(list: ?*FcStrList) [*c]FcChar8;
pub extern fn FcStrListDone(list: ?*FcStrList) void;
pub extern fn FcConfigParseAndLoad(config: ?*FcConfig, file: [*c]const FcChar8, complain: FcBool) FcBool;
pub extern fn FcConfigParseAndLoadFromMemory(config: ?*FcConfig, buffer: [*c]const FcChar8, complain: FcBool) FcBool;
pub extern fn cairo_ft_font_face_create_for_ft_face(face: FT_Face, load_flags: c_int) ?*cairo_font_face_t;
pub const CAIRO_FT_SYNTHESIZE_BOLD: c_int = 1;
pub const CAIRO_FT_SYNTHESIZE_OBLIQUE: c_int = 2;
pub const cairo_ft_synthesize_t = c_uint;
pub extern fn cairo_ft_font_face_set_synthesize(font_face: ?*cairo_font_face_t, synth_flags: c_uint) void;
pub extern fn cairo_ft_font_face_unset_synthesize(font_face: ?*cairo_font_face_t, synth_flags: c_uint) void;
pub extern fn cairo_ft_font_face_get_synthesize(font_face: ?*cairo_font_face_t) c_uint;
pub extern fn cairo_ft_scaled_font_lock_face(scaled_font: ?*cairo_scaled_font_t) FT_Face;
pub extern fn cairo_ft_scaled_font_unlock_face(scaled_font: ?*cairo_scaled_font_t) void;
pub extern fn cairo_ft_font_face_create_for_pattern(pattern: ?*FcPattern) ?*cairo_font_face_t;
pub extern fn cairo_ft_font_options_substitute(options: ?*const cairo_font_options_t, pattern: ?*FcPattern) void;
pub const struct_FT_Glyph_Class_ = opaque {};
pub const FT_Glyph_Class = struct_FT_Glyph_Class_;
pub const struct_FT_GlyphRec_ = extern struct {
    library: FT_Library = @import("std").mem.zeroes(FT_Library),
    clazz: ?*const FT_Glyph_Class = @import("std").mem.zeroes(?*const FT_Glyph_Class),
    format: FT_Glyph_Format = @import("std").mem.zeroes(FT_Glyph_Format),
    advance: FT_Vector = @import("std").mem.zeroes(FT_Vector),
};
pub const FT_Glyph = [*c]struct_FT_GlyphRec_;
pub const FT_GlyphRec = struct_FT_GlyphRec_;
pub const struct_FT_BitmapGlyphRec_ = extern struct {
    root: FT_GlyphRec = @import("std").mem.zeroes(FT_GlyphRec),
    left: FT_Int = @import("std").mem.zeroes(FT_Int),
    top: FT_Int = @import("std").mem.zeroes(FT_Int),
    bitmap: FT_Bitmap = @import("std").mem.zeroes(FT_Bitmap),
};
pub const FT_BitmapGlyph = [*c]struct_FT_BitmapGlyphRec_;
pub const FT_BitmapGlyphRec = struct_FT_BitmapGlyphRec_;
pub const struct_FT_OutlineGlyphRec_ = extern struct {
    root: FT_GlyphRec = @import("std").mem.zeroes(FT_GlyphRec),
    outline: FT_Outline = @import("std").mem.zeroes(FT_Outline),
};
pub const FT_OutlineGlyph = [*c]struct_FT_OutlineGlyphRec_;
pub const FT_OutlineGlyphRec = struct_FT_OutlineGlyphRec_;
pub const struct_FT_SvgGlyphRec_ = extern struct {
    root: FT_GlyphRec = @import("std").mem.zeroes(FT_GlyphRec),
    svg_document: [*c]FT_Byte = @import("std").mem.zeroes([*c]FT_Byte),
    svg_document_length: FT_ULong = @import("std").mem.zeroes(FT_ULong),
    glyph_index: FT_UInt = @import("std").mem.zeroes(FT_UInt),
    metrics: FT_Size_Metrics = @import("std").mem.zeroes(FT_Size_Metrics),
    units_per_EM: FT_UShort = @import("std").mem.zeroes(FT_UShort),
    start_glyph_id: FT_UShort = @import("std").mem.zeroes(FT_UShort),
    end_glyph_id: FT_UShort = @import("std").mem.zeroes(FT_UShort),
    transform: FT_Matrix = @import("std").mem.zeroes(FT_Matrix),
    delta: FT_Vector = @import("std").mem.zeroes(FT_Vector),
};
pub const FT_SvgGlyph = [*c]struct_FT_SvgGlyphRec_;
pub const FT_SvgGlyphRec = struct_FT_SvgGlyphRec_;
pub extern fn FT_New_Glyph(library: FT_Library, format: FT_Glyph_Format, aglyph: [*c]FT_Glyph) FT_Error;
pub extern fn FT_Get_Glyph(slot: FT_GlyphSlot, aglyph: [*c]FT_Glyph) FT_Error;
pub extern fn FT_Glyph_Copy(source: FT_Glyph, target: [*c]FT_Glyph) FT_Error;
pub extern fn FT_Glyph_Transform(glyph: FT_Glyph, matrix: [*c]const FT_Matrix, delta: [*c]const FT_Vector) FT_Error;
pub const FT_GLYPH_BBOX_UNSCALED: c_int = 0;
pub const FT_GLYPH_BBOX_SUBPIXELS: c_int = 0;
pub const FT_GLYPH_BBOX_GRIDFIT: c_int = 1;
pub const FT_GLYPH_BBOX_TRUNCATE: c_int = 2;
pub const FT_GLYPH_BBOX_PIXELS: c_int = 3;
pub const enum_FT_Glyph_BBox_Mode_ = c_uint;
pub const FT_Glyph_BBox_Mode = enum_FT_Glyph_BBox_Mode_;
pub extern fn FT_Glyph_Get_CBox(glyph: FT_Glyph, bbox_mode: FT_UInt, acbox: [*c]FT_BBox) void;
pub extern fn FT_Glyph_To_Bitmap(the_glyph: [*c]FT_Glyph, render_mode: FT_Render_Mode, origin: [*c]const FT_Vector, destroy: FT_Bool) FT_Error;
pub extern fn FT_Done_Glyph(glyph: FT_Glyph) void;
pub extern fn FT_Matrix_Multiply(a: [*c]const FT_Matrix, b: [*c]FT_Matrix) void;
pub extern fn FT_Matrix_Invert(matrix: [*c]FT_Matrix) FT_Error;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):95:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):101:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):198:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):220:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):228:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // (no file):359:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // (no file):360:9
pub const cairo_current_font_extents = @compileError("unable to translate macro: undefined identifier `cairo_current_font_extents_REPLACED_BY_cairo_font_extents`"); // /usr/include/cairo/cairo-deprecated.h:57:9
pub const cairo_get_font_extents = @compileError("unable to translate macro: undefined identifier `cairo_get_font_extents_REPLACED_BY_cairo_font_extents`"); // /usr/include/cairo/cairo-deprecated.h:58:9
pub const cairo_current_operator = @compileError("unable to translate macro: undefined identifier `cairo_current_operator_REPLACED_BY_cairo_get_operator`"); // /usr/include/cairo/cairo-deprecated.h:59:9
pub const cairo_current_tolerance = @compileError("unable to translate macro: undefined identifier `cairo_current_tolerance_REPLACED_BY_cairo_get_tolerance`"); // /usr/include/cairo/cairo-deprecated.h:60:9
pub const cairo_current_point = @compileError("unable to translate macro: undefined identifier `cairo_current_point_REPLACED_BY_cairo_get_current_point`"); // /usr/include/cairo/cairo-deprecated.h:61:9
pub const cairo_current_fill_rule = @compileError("unable to translate macro: undefined identifier `cairo_current_fill_rule_REPLACED_BY_cairo_get_fill_rule`"); // /usr/include/cairo/cairo-deprecated.h:62:9
pub const cairo_current_line_width = @compileError("unable to translate macro: undefined identifier `cairo_current_line_width_REPLACED_BY_cairo_get_line_width`"); // /usr/include/cairo/cairo-deprecated.h:63:9
pub const cairo_current_line_cap = @compileError("unable to translate macro: undefined identifier `cairo_current_line_cap_REPLACED_BY_cairo_get_line_cap`"); // /usr/include/cairo/cairo-deprecated.h:64:9
pub const cairo_current_line_join = @compileError("unable to translate macro: undefined identifier `cairo_current_line_join_REPLACED_BY_cairo_get_line_join`"); // /usr/include/cairo/cairo-deprecated.h:65:9
pub const cairo_current_miter_limit = @compileError("unable to translate macro: undefined identifier `cairo_current_miter_limit_REPLACED_BY_cairo_get_miter_limit`"); // /usr/include/cairo/cairo-deprecated.h:66:9
pub const cairo_current_matrix = @compileError("unable to translate macro: undefined identifier `cairo_current_matrix_REPLACED_BY_cairo_get_matrix`"); // /usr/include/cairo/cairo-deprecated.h:67:9
pub const cairo_current_target_surface = @compileError("unable to translate macro: undefined identifier `cairo_current_target_surface_REPLACED_BY_cairo_get_target`"); // /usr/include/cairo/cairo-deprecated.h:68:9
pub const cairo_get_status = @compileError("unable to translate macro: undefined identifier `cairo_get_status_REPLACED_BY_cairo_status`"); // /usr/include/cairo/cairo-deprecated.h:69:9
pub const cairo_concat_matrix = @compileError("unable to translate macro: undefined identifier `cairo_concat_matrix_REPLACED_BY_cairo_transform`"); // /usr/include/cairo/cairo-deprecated.h:70:9
pub const cairo_scale_font = @compileError("unable to translate macro: undefined identifier `cairo_scale_font_REPLACED_BY_cairo_set_font_size`"); // /usr/include/cairo/cairo-deprecated.h:71:9
pub const cairo_select_font = @compileError("unable to translate macro: undefined identifier `cairo_select_font_REPLACED_BY_cairo_select_font_face`"); // /usr/include/cairo/cairo-deprecated.h:72:9
pub const cairo_transform_font = @compileError("unable to translate macro: undefined identifier `cairo_transform_font_REPLACED_BY_cairo_set_font_matrix`"); // /usr/include/cairo/cairo-deprecated.h:73:9
pub const cairo_transform_point = @compileError("unable to translate macro: undefined identifier `cairo_transform_point_REPLACED_BY_cairo_user_to_device`"); // /usr/include/cairo/cairo-deprecated.h:74:9
pub const cairo_transform_distance = @compileError("unable to translate macro: undefined identifier `cairo_transform_distance_REPLACED_BY_cairo_user_to_device_distance`"); // /usr/include/cairo/cairo-deprecated.h:75:9
pub const cairo_inverse_transform_point = @compileError("unable to translate macro: undefined identifier `cairo_inverse_transform_point_REPLACED_BY_cairo_device_to_user`"); // /usr/include/cairo/cairo-deprecated.h:76:9
pub const cairo_inverse_transform_distance = @compileError("unable to translate macro: undefined identifier `cairo_inverse_transform_distance_REPLACED_BY_cairo_device_to_user_distance`"); // /usr/include/cairo/cairo-deprecated.h:77:9
pub const cairo_init_clip = @compileError("unable to translate macro: undefined identifier `cairo_init_clip_REPLACED_BY_cairo_reset_clip`"); // /usr/include/cairo/cairo-deprecated.h:78:9
pub const cairo_surface_create_for_image = @compileError("unable to translate macro: undefined identifier `cairo_surface_create_for_image_REPLACED_BY_cairo_image_surface_create_for_data`"); // /usr/include/cairo/cairo-deprecated.h:79:9
pub const cairo_default_matrix = @compileError("unable to translate macro: undefined identifier `cairo_default_matrix_REPLACED_BY_cairo_identity_matrix`"); // /usr/include/cairo/cairo-deprecated.h:80:9
pub const cairo_matrix_set_affine = @compileError("unable to translate macro: undefined identifier `cairo_matrix_set_affine_REPLACED_BY_cairo_matrix_init`"); // /usr/include/cairo/cairo-deprecated.h:81:9
pub const cairo_matrix_set_identity = @compileError("unable to translate macro: undefined identifier `cairo_matrix_set_identity_REPLACED_BY_cairo_matrix_init_identity`"); // /usr/include/cairo/cairo-deprecated.h:82:9
pub const cairo_pattern_add_color_stop = @compileError("unable to translate macro: undefined identifier `cairo_pattern_add_color_stop_REPLACED_BY_cairo_pattern_add_color_stop_rgba`"); // /usr/include/cairo/cairo-deprecated.h:83:9
pub const cairo_set_rgb_color = @compileError("unable to translate macro: undefined identifier `cairo_set_rgb_color_REPLACED_BY_cairo_set_source_rgb`"); // /usr/include/cairo/cairo-deprecated.h:84:9
pub const cairo_set_pattern = @compileError("unable to translate macro: undefined identifier `cairo_set_pattern_REPLACED_BY_cairo_set_source`"); // /usr/include/cairo/cairo-deprecated.h:85:9
pub const cairo_xlib_surface_create_for_pixmap_with_visual = @compileError("unable to translate macro: undefined identifier `cairo_xlib_surface_create_for_pixmap_with_visual_REPLACED_BY_cairo_xlib_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:86:9
pub const cairo_xlib_surface_create_for_window_with_visual = @compileError("unable to translate macro: undefined identifier `cairo_xlib_surface_create_for_window_with_visual_REPLACED_BY_cairo_xlib_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:87:9
pub const cairo_xcb_surface_create_for_pixmap_with_visual = @compileError("unable to translate macro: undefined identifier `cairo_xcb_surface_create_for_pixmap_with_visual_REPLACED_BY_cairo_xcb_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:88:9
pub const cairo_xcb_surface_create_for_window_with_visual = @compileError("unable to translate macro: undefined identifier `cairo_xcb_surface_create_for_window_with_visual_REPLACED_BY_cairo_xcb_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:89:9
pub const cairo_ps_surface_set_dpi = @compileError("unable to translate macro: undefined identifier `cairo_ps_surface_set_dpi_REPLACED_BY_cairo_surface_set_fallback_resolution`"); // /usr/include/cairo/cairo-deprecated.h:90:9
pub const cairo_pdf_surface_set_dpi = @compileError("unable to translate macro: undefined identifier `cairo_pdf_surface_set_dpi_REPLACED_BY_cairo_surface_set_fallback_resolution`"); // /usr/include/cairo/cairo-deprecated.h:91:9
pub const cairo_svg_surface_set_dpi = @compileError("unable to translate macro: undefined identifier `cairo_svg_surface_set_dpi_REPLACED_BY_cairo_surface_set_fallback_resolution`"); // /usr/include/cairo/cairo-deprecated.h:92:9
pub const cairo_atsui_font_face_create_for_atsu_font_id = @compileError("unable to translate macro: undefined identifier `cairo_atsui_font_face_create_for_atsu_font_id_REPLACED_BY_cairo_quartz_font_face_create_for_atsu_font_id`"); // /usr/include/cairo/cairo-deprecated.h:93:9
pub const cairo_current_path = @compileError("unable to translate macro: undefined identifier `cairo_current_path_DEPRECATED_BY_cairo_copy_path`"); // /usr/include/cairo/cairo-deprecated.h:95:9
pub const cairo_current_path_flat = @compileError("unable to translate macro: undefined identifier `cairo_current_path_flat_DEPRECATED_BY_cairo_copy_path_flat`"); // /usr/include/cairo/cairo-deprecated.h:96:9
pub const cairo_get_path = @compileError("unable to translate macro: undefined identifier `cairo_get_path_DEPRECATED_BY_cairo_copy_path`"); // /usr/include/cairo/cairo-deprecated.h:97:9
pub const cairo_get_path_flat = @compileError("unable to translate macro: undefined identifier `cairo_get_path_flat_DEPRECATED_BY_cairo_get_path_flat`"); // /usr/include/cairo/cairo-deprecated.h:98:9
pub const cairo_set_alpha = @compileError("unable to translate macro: undefined identifier `cairo_set_alpha_DEPRECATED_BY_cairo_set_source_rgba_OR_cairo_paint_with_alpha`"); // /usr/include/cairo/cairo-deprecated.h:99:9
pub const cairo_show_surface = @compileError("unable to translate macro: undefined identifier `cairo_show_surface_DEPRECATED_BY_cairo_set_source_surface_AND_cairo_paint`"); // /usr/include/cairo/cairo-deprecated.h:100:9
pub const cairo_copy = @compileError("unable to translate macro: undefined identifier `cairo_copy_DEPRECATED_BY_cairo_create_AND_MANY_INDIVIDUAL_FUNCTIONS`"); // /usr/include/cairo/cairo-deprecated.h:101:9
pub const cairo_surface_set_repeat = @compileError("unable to translate macro: undefined identifier `cairo_surface_set_repeat_DEPRECATED_BY_cairo_pattern_set_extend`"); // /usr/include/cairo/cairo-deprecated.h:102:9
pub const cairo_surface_set_matrix = @compileError("unable to translate macro: undefined identifier `cairo_surface_set_matrix_DEPRECATED_BY_cairo_pattern_set_matrix`"); // /usr/include/cairo/cairo-deprecated.h:103:9
pub const cairo_surface_get_matrix = @compileError("unable to translate macro: undefined identifier `cairo_surface_get_matrix_DEPRECATED_BY_cairo_pattern_get_matrix`"); // /usr/include/cairo/cairo-deprecated.h:104:9
pub const cairo_surface_set_filter = @compileError("unable to translate macro: undefined identifier `cairo_surface_set_filter_DEPRECATED_BY_cairo_pattern_set_filter`"); // /usr/include/cairo/cairo-deprecated.h:105:9
pub const cairo_surface_get_filter = @compileError("unable to translate macro: undefined identifier `cairo_surface_get_filter_DEPRECATED_BY_cairo_pattern_get_filter`"); // /usr/include/cairo/cairo-deprecated.h:106:9
pub const cairo_matrix_create = @compileError("unable to translate macro: undefined identifier `cairo_matrix_create_DEPRECATED_BY_cairo_matrix_t`"); // /usr/include/cairo/cairo-deprecated.h:107:9
pub const cairo_matrix_destroy = @compileError("unable to translate macro: undefined identifier `cairo_matrix_destroy_DEPRECATED_BY_cairo_matrix_t`"); // /usr/include/cairo/cairo-deprecated.h:108:9
pub const cairo_matrix_copy = @compileError("unable to translate macro: undefined identifier `cairo_matrix_copy_DEPRECATED_BY_cairo_matrix_t`"); // /usr/include/cairo/cairo-deprecated.h:109:9
pub const cairo_matrix_get_affine = @compileError("unable to translate macro: undefined identifier `cairo_matrix_get_affine_DEPRECATED_BY_cairo_matrix_t`"); // /usr/include/cairo/cairo-deprecated.h:110:9
pub const cairo_set_target_surface = @compileError("unable to translate macro: undefined identifier `cairo_set_target_surface_DEPRECATED_BY_cairo_create`"); // /usr/include/cairo/cairo-deprecated.h:111:9
pub const cairo_set_target_image = @compileError("unable to translate macro: undefined identifier `cairo_set_target_image_DEPRECATED_BY_cairo_image_surface_create_for_data`"); // /usr/include/cairo/cairo-deprecated.h:112:9
pub const cairo_set_target_pdf = @compileError("unable to translate macro: undefined identifier `cairo_set_target_pdf_DEPRECATED_BY_cairo_pdf_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:113:9
pub const cairo_set_target_png = @compileError("unable to translate macro: undefined identifier `cairo_set_target_png_DEPRECATED_BY_cairo_surface_write_to_png`"); // /usr/include/cairo/cairo-deprecated.h:114:9
pub const cairo_set_target_ps = @compileError("unable to translate macro: undefined identifier `cairo_set_target_ps_DEPRECATED_BY_cairo_ps_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:115:9
pub const cairo_set_target_quartz = @compileError("unable to translate macro: undefined identifier `cairo_set_target_quartz_DEPRECATED_BY_cairo_quartz_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:116:9
pub const cairo_set_target_win32 = @compileError("unable to translate macro: undefined identifier `cairo_set_target_win32_DEPRECATED_BY_cairo_win32_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:117:9
pub const cairo_set_target_xcb = @compileError("unable to translate macro: undefined identifier `cairo_set_target_xcb_DEPRECATED_BY_cairo_xcb_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:118:9
pub const cairo_set_target_drawable = @compileError("unable to translate macro: undefined identifier `cairo_set_target_drawable_DEPRECATED_BY_cairo_xlib_surface_create`"); // /usr/include/cairo/cairo-deprecated.h:119:9
pub const cairo_get_status_string = @compileError("unable to translate macro: undefined identifier `cairo_get_status_string_DEPRECATED_BY_cairo_status_AND_cairo_status_to_string`"); // /usr/include/cairo/cairo-deprecated.h:120:9
pub const cairo_status_string = @compileError("unable to translate macro: undefined identifier `cairo_status_string_DEPRECATED_BY_cairo_status_AND_cairo_status_to_string`"); // /usr/include/cairo/cairo-deprecated.h:121:9
pub const _cairo_export = @compileError("unable to translate macro: undefined identifier `__visibility__`"); // /usr/include/cairo/cairo.h:57:10
pub const cairo_public = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/cairo/cairo.h:70:9
pub const CAIRO_VERSION_STRINGIZE_ = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/cairo/cairo.h:85:9
pub const FT_CONFIG_CONFIG_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:117:9
pub const FT_CONFIG_STANDARD_LIBRARY_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:132:9
pub const FT_CONFIG_OPTIONS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:147:9
pub const FT_CONFIG_MODULES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:163:9
pub const FT_FREETYPE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:180:9
pub const FT_ERRORS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:195:9
pub const FT_MODULE_ERRORS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:208:9
pub const FT_SYSTEM_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:224:9
pub const FT_IMAGE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:240:9
pub const FT_TYPES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:255:9
pub const FT_LIST_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:270:9
pub const FT_OUTLINE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:283:9
pub const FT_SIZES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:296:9
pub const FT_MODULE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:309:9
pub const FT_RENDER_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:322:9
pub const FT_DRIVER_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:335:9
pub const FT_TYPE1_TABLES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:408:9
pub const FT_TRUETYPE_IDS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:423:9
pub const FT_TRUETYPE_TABLES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:436:9
pub const FT_TRUETYPE_TAGS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:450:9
pub const FT_BDF_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:463:9
pub const FT_CID_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:476:9
pub const FT_GZIP_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:489:9
pub const FT_LZW_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:502:9
pub const FT_BZIP2_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:515:9
pub const FT_WINFONTS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:528:9
pub const FT_GLYPH_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:541:9
pub const FT_BITMAP_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:554:9
pub const FT_BBOX_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:567:9
pub const FT_CACHE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:580:9
pub const FT_MAC_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:597:9
pub const FT_MULTIPLE_MASTERS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:610:9
pub const FT_SFNT_NAMES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:624:9
pub const FT_OPENTYPE_VALIDATE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:638:9
pub const FT_GX_VALIDATE_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:652:9
pub const FT_PFR_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:665:9
pub const FT_STROKER_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:677:9
pub const FT_SYNTHESIS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:689:9
pub const FT_FONT_FORMATS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:701:9
pub const FT_TRIGONOMETRY_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:717:9
pub const FT_LCD_FILTER_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:729:9
pub const FT_INCREMENTAL_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:741:9
pub const FT_GASP_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:753:9
pub const FT_ADVANCES_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:765:9
pub const FT_COLOR_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:777:9
pub const FT_OTSVG_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:789:9
pub const FT_ERROR_DEFINITIONS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:795:9
pub const FT_PARAMETER_TAGS_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:796:9
pub const FT_UNPATENTED_HINTING_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:799:9
pub const FT_TRUETYPE_UNPATENTED_H = @compileError("unable to translate macro: undefined identifier `freetype`"); // /usr/local/include/freetype/config/ftheader.h:800:9
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'"); // /home/looking/aur/zig-linux-x86_64-0.13.0-dev.351+64ef45eb0/lib/include/__stddef_offsetof.h:16:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:188:9
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/sys/cdefs.h:45:10
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/sys/cdefs.h:55:10
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`"); // /usr/include/sys/cdefs.h:102:11
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/sys/cdefs.h:132:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:216:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:217:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/sys/cdefs.h:225:10
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:256:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:263:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:265:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','"); // /usr/include/sys/cdefs.h:268:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // /usr/include/sys/cdefs.h:298:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:309:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`"); // /usr/include/sys/cdefs.h:315:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /usr/include/sys/cdefs.h:325:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /usr/include/sys/cdefs.h:332:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`"); // /usr/include/sys/cdefs.h:338:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`"); // /usr/include/sys/cdefs.h:347:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`"); // /usr/include/sys/cdefs.h:348:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/sys/cdefs.h:356:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/sys/cdefs.h:366:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`"); // /usr/include/sys/cdefs.h:379:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`"); // /usr/include/sys/cdefs.h:389:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // /usr/include/sys/cdefs.h:401:11
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`"); // /usr/include/sys/cdefs.h:414:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /usr/include/sys/cdefs.h:423:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /usr/include/sys/cdefs.h:441:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`"); // /usr/include/sys/cdefs.h:450:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`"); // /usr/include/sys/cdefs.h:468:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`"); // /usr/include/sys/cdefs.h:469:11
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // /usr/include/sys/cdefs.h:512:10
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:561:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:638:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:639:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/sys/cdefs.h:653:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/sys/cdefs.h:654:10
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:699:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:700:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:701:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:711:10
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`"); // /usr/include/sys/cdefs.h:718:10
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /usr/include/bits/types.h:137:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/bits/typesizes.h:73:9
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:106:9
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:178:13
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /usr/include/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`"); // /usr/include/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`"); // /usr/include/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /usr/include/bits/floatn-common.h:292:13
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /usr/include/bits/select.h:34:9
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/struct_mutex.h:56:10
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/struct_rwlock.h:40:11
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/thread-shared-types.h:113:9
pub const ft_setjmp = @compileError("unable to translate C expr: unexpected token ')'"); // /usr/local/include/freetype/config/ftstdlib.h:173:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /home/looking/aur/zig-linux-x86_64-0.13.0-dev.351+64ef45eb0/lib/include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /home/looking/aur/zig-linux-x86_64-0.13.0-dev.351+64ef45eb0/lib/include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'"); // /home/looking/aur/zig-linux-x86_64-0.13.0-dev.351+64ef45eb0/lib/include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/looking/aur/zig-linux-x86_64-0.13.0-dev.351+64ef45eb0/lib/include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/looking/aur/zig-linux-x86_64-0.13.0-dev.351+64ef45eb0/lib/include/__stdarg_va_copy.h:11:9
pub const FT_PUBLIC_FUNCTION_ATTRIBUTE = @compileError("unable to translate macro: undefined identifier `visibility`"); // /usr/local/include/freetype/config/public-macros.h:76:9
pub const FT_EXPORT = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/local/include/freetype/config/public-macros.h:104:9
pub const FT_UNUSED = @compileError("unable to translate C expr: expected ')' instead got '='"); // /usr/local/include/freetype/config/public-macros.h:115:9
pub const FT_IMAGE_TAG = @compileError("unable to translate C expr: unexpected token '='"); // /usr/local/include/freetype/ftimage.h:705:9
pub const FT_ERR_XCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/local/include/freetype/fttypes.h:596:9
pub const FT_MODERRDEF = @compileError("unable to translate macro: undefined identifier `FT_Mod_Err_`"); // /usr/local/include/freetype/ftmoderr.h:123:9
pub const FT_MODERR_START_LIST = @compileError("unable to translate C expr: expected 'an identifier' instead got '{'"); // /usr/local/include/freetype/ftmoderr.h:126:9
pub const FT_MODERR_END_LIST = @compileError("unable to translate C expr: unexpected token '}'"); // /usr/local/include/freetype/ftmoderr.h:127:9
pub const FT_ERR_PREFIX = @compileError("unable to translate macro: undefined identifier `FT_Err_`"); // /usr/local/include/freetype/fterrors.h:146:9
pub const FT_ERRORDEF = @compileError("unable to translate C expr: unexpected token '='"); // /usr/local/include/freetype/fterrors.h:173:9
pub const FT_ERROR_START_LIST = @compileError("unable to translate C expr: expected 'an identifier' instead got '{'"); // /usr/local/include/freetype/fterrors.h:174:9
pub const FT_ERROR_END_LIST = @compileError("unable to translate macro: undefined identifier `Max`"); // /usr/local/include/freetype/fterrors.h:175:9
pub const FT_ENC_TAG = @compileError("unable to translate C expr: unexpected token '='"); // /usr/local/include/freetype/freetype.h:772:9
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atim`"); // /usr/include/bits/struct_stat.h:77:11
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtim`"); // /usr/include/bits/struct_stat.h:78:11
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctim`"); // /usr/include/bits/struct_stat.h:79:11
pub const FC_ATTRIBUTE_SENTINEL = @compileError("unable to translate macro: undefined identifier `__sentinel__`"); // /usr/include/fontconfig/fontconfig.h:34:9
pub const _FC_STRINGIFY_ = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/fontconfig/fontconfig.h:71:9
pub const FcMatrixInit = @compileError("unable to translate C expr: expected ')' instead got '='"); // /usr/include/fontconfig/fontconfig.h:222:9
pub const FcConfigGetRescanInverval = @compileError("unable to translate macro: undefined identifier `FcConfigGetRescanInverval_REPLACE_BY_FcConfigGetRescanInterval`"); // /usr/include/fontconfig/fontconfig.h:1155:9
pub const FcConfigSetRescanInverval = @compileError("unable to translate macro: undefined identifier `FcConfigSetRescanInverval_REPLACE_BY_FcConfigSetRescanInterval`"); // /usr/include/fontconfig/fontconfig.h:1156:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 18);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "18.1.6 (https://github.com/ziglang/zig-bootstrap 32e2c2651f0b969b60b95e9174a86e09783bf4aa)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 18.1.6 (https://github.com/ziglang/zig-bootstrap 32e2c2651f0b969b60b95e9174a86e09783bf4aa)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __PIE__ = @as(c_int, 2);
pub const __pie__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __bdver4 = @as(c_int, 1);
pub const __bdver4__ = @as(c_int, 1);
pub const __tune_bdver4__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __TBM__ = @as(c_int, 1);
pub const __LWP__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __XOP__ = @as(c_int, 1);
pub const __FMA4__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const CAIRO_H = "";
pub const CAIRO_VERSION_H = "";
pub const CAIRO_VERSION_MAJOR = @as(c_int, 1);
pub const CAIRO_VERSION_MINOR = @as(c_int, 18);
pub const CAIRO_VERSION_MICRO = @as(c_int, 0);
pub const CAIRO_FEATURES_H = "";
pub const CAIRO_HAS_FC_FONT = @as(c_int, 1);
pub const CAIRO_HAS_FT_FONT = @as(c_int, 1);
pub const CAIRO_HAS_GOBJECT_FUNCTIONS = @as(c_int, 1);
pub const CAIRO_HAS_IMAGE_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_MIME_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_OBSERVER_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_PDF_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_PNG_FUNCTIONS = @as(c_int, 1);
pub const CAIRO_HAS_PS_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_RECORDING_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_SCRIPT_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_SVG_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_TEE_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_USER_FONT = @as(c_int, 1);
pub const CAIRO_HAS_XCB_SHM_FUNCTIONS = @as(c_int, 1);
pub const CAIRO_HAS_XCB_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_XLIB_SURFACE = @as(c_int, 1);
pub const CAIRO_HAS_XLIB_XRENDER_SURFACE = @as(c_int, 1);
pub const CAIRO_DEPRECATED_H = "";
pub const CAIRO_FONT_TYPE_ATSUI = CAIRO_FONT_TYPE_QUARTZ;
pub const CAIRO_BEGIN_DECLS = "";
pub const CAIRO_END_DECLS = "";
pub const _cairo_import = "";
pub const _cairo_api = "";
pub inline fn CAIRO_VERSION_ENCODE(major: anytype, minor: anytype, micro: anytype) @TypeOf(((major * @as(c_int, 10000)) + (minor * @as(c_int, 100))) + (micro * @as(c_int, 1))) {
    _ = &major;
    _ = &minor;
    _ = &micro;
    return ((major * @as(c_int, 10000)) + (minor * @as(c_int, 100))) + (micro * @as(c_int, 1));
}
pub const CAIRO_VERSION = CAIRO_VERSION_ENCODE(CAIRO_VERSION_MAJOR, CAIRO_VERSION_MINOR, CAIRO_VERSION_MICRO);
pub inline fn CAIRO_VERSION_STRINGIZE(major: anytype, minor: anytype, micro: anytype) @TypeOf(CAIRO_VERSION_STRINGIZE_(major, minor, micro)) {
    _ = &major;
    _ = &minor;
    _ = &micro;
    return CAIRO_VERSION_STRINGIZE_(major, minor, micro);
}
pub const CAIRO_VERSION_STRING = CAIRO_VERSION_STRINGIZE(CAIRO_VERSION_MAJOR, CAIRO_VERSION_MINOR, CAIRO_VERSION_MICRO);
pub const CAIRO_TAG_DEST = "cairo.dest";
pub const CAIRO_TAG_LINK = "Link";
pub const CAIRO_TAG_CONTENT = "cairo.content";
pub const CAIRO_TAG_CONTENT_REF = "cairo.content_ref";
pub const CAIRO_COLOR_PALETTE_DEFAULT = @as(c_int, 0);
pub const CAIRO_MIME_TYPE_JPEG = "image/jpeg";
pub const CAIRO_MIME_TYPE_PNG = "image/png";
pub const CAIRO_MIME_TYPE_JP2 = "image/jp2";
pub const CAIRO_MIME_TYPE_URI = "text/x-uri";
pub const CAIRO_MIME_TYPE_UNIQUE_ID = "application/x-cairo.uuid";
pub const CAIRO_MIME_TYPE_JBIG2 = "application/x-cairo.jbig2";
pub const CAIRO_MIME_TYPE_JBIG2_GLOBAL = "application/x-cairo.jbig2-global";
pub const CAIRO_MIME_TYPE_JBIG2_GLOBAL_ID = "application/x-cairo.jbig2-global-id";
pub const CAIRO_MIME_TYPE_CCITT_FAX = "image/g3fax";
pub const CAIRO_MIME_TYPE_CCITT_FAX_PARAMS = "application/x-cairo.ccitt.params";
pub const CAIRO_MIME_TYPE_EPS = "application/postscript";
pub const CAIRO_MIME_TYPE_EPS_PARAMS = "application/x-cairo.eps.params";
pub const CAIRO_FT_H = "";
pub const FT2BUILD_H_ = "";
pub const FTHEADER_H_ = "";
pub const FT_BEGIN_HEADER = "";
pub const FT_END_HEADER = "";
pub const FT_AUTOHINTER_H = FT_DRIVER_H;
pub const FT_CFF_DRIVER_H = FT_DRIVER_H;
pub const FT_TRUETYPE_DRIVER_H = FT_DRIVER_H;
pub const FT_PCF_DRIVER_H = FT_DRIVER_H;
pub const FT_XFREE86_H = FT_FONT_FORMATS_H;
pub const FT_CACHE_IMAGE_H = FT_CACHE_H;
pub const FT_CACHE_SMALL_BITMAPS_H = FT_CACHE_H;
pub const FT_CACHE_CHARMAP_H = FT_CACHE_H;
pub const FT_CACHE_MANAGER_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_MRU_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_MANAGER_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_CACHE_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_GLYPH_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_IMAGE_H = FT_CACHE_H;
pub const FT_CACHE_INTERNAL_SBITS_H = FT_CACHE_H;
pub const FREETYPE_H_ = "";
pub const FTCONFIG_H_ = "";
pub const FTOPTION_H_ = "";
pub const FT_CONFIG_OPTION_ENVIRONMENT_PROPERTIES = "";
pub const FT_CONFIG_OPTION_SUBPIXEL_RENDERING = "";
pub const FT_CONFIG_OPTION_INLINE_MULFIX = "";
pub const FT_CONFIG_OPTION_USE_LZW = "";
pub const FT_CONFIG_OPTION_USE_ZLIB = "";
pub const FT_CONFIG_OPTION_SYSTEM_ZLIB = "";
pub const FT_CONFIG_OPTION_USE_BZIP2 = "";
pub const FT_CONFIG_OPTION_USE_PNG = "";
pub const FT_CONFIG_OPTION_USE_HARFBUZZ = "";
pub const FT_CONFIG_OPTION_USE_BROTLI = "";
pub const FT_CONFIG_OPTION_POSTSCRIPT_NAMES = "";
pub const FT_CONFIG_OPTION_ADOBE_GLYPH_LIST = "";
pub const FT_CONFIG_OPTION_MAC_FONTS = "";
pub const FT_CONFIG_OPTION_GUESSING_EMBEDDED_RFORK = "";
pub const FT_CONFIG_OPTION_INCREMENTAL = "";
pub const FT_RENDER_POOL_SIZE = @as(c_long, 16384);
pub const FT_MAX_MODULES = @as(c_int, 32);
pub const FT_CONFIG_OPTION_SVG = "";
pub const TT_CONFIG_OPTION_EMBEDDED_BITMAPS = "";
pub const TT_CONFIG_OPTION_COLOR_LAYERS = "";
pub const TT_CONFIG_OPTION_POSTSCRIPT_NAMES = "";
pub const TT_CONFIG_OPTION_SFNT_NAMES = "";
pub const TT_CONFIG_CMAP_FORMAT_0 = "";
pub const TT_CONFIG_CMAP_FORMAT_2 = "";
pub const TT_CONFIG_CMAP_FORMAT_4 = "";
pub const TT_CONFIG_CMAP_FORMAT_6 = "";
pub const TT_CONFIG_CMAP_FORMAT_8 = "";
pub const TT_CONFIG_CMAP_FORMAT_10 = "";
pub const TT_CONFIG_CMAP_FORMAT_12 = "";
pub const TT_CONFIG_CMAP_FORMAT_13 = "";
pub const TT_CONFIG_CMAP_FORMAT_14 = "";
pub const TT_CONFIG_OPTION_BYTECODE_INTERPRETER = "";
pub const TT_CONFIG_OPTION_SUBPIXEL_HINTING = "";
pub const TT_CONFIG_OPTION_GX_VAR_SUPPORT = "";
pub const TT_CONFIG_OPTION_BDF = "";
pub const TT_CONFIG_OPTION_MAX_RUNNABLE_OPCODES = @as(c_long, 1000000);
pub const T1_MAX_DICT_DEPTH = @as(c_int, 5);
pub const T1_MAX_SUBRS_CALLS = @as(c_int, 16);
pub const T1_MAX_CHARSTRINGS_OPERANDS = @as(c_int, 256);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X1 = @as(c_int, 500);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y1 = @as(c_int, 400);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X2 = @as(c_int, 1000);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y2 = @as(c_int, 275);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X3 = @as(c_int, 1667);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y3 = @as(c_int, 275);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X4 = @as(c_int, 2333);
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y4 = @as(c_int, 0);
pub const PCF_CONFIG_OPTION_LONG_FAMILY_NAMES = "";
pub const AF_CONFIG_OPTION_CJK = "";
pub const AF_CONFIG_OPTION_INDIC = "";
pub const TT_USE_BYTECODE_INTERPRETER = "";
pub const TT_SUPPORT_SUBPIXEL_HINTING_MINIMAL = "";
pub const TT_SUPPORT_COLRV1 = "";
pub const FTSTDLIB_H_ = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const ft_ptrdiff_t = ptrdiff_t;
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C2X_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 39);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __wur = "";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __attr_dealloc_free = "";
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const LLONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULLONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const FT_CHAR_BIT = CHAR_BIT;
pub const FT_USHORT_MAX = USHRT_MAX;
pub const FT_INT_MAX = INT_MAX;
pub const FT_INT_MIN = INT_MIN;
pub const FT_UINT_MAX = UINT_MAX;
pub const FT_LONG_MIN = LONG_MIN;
pub const FT_LONG_MAX = LONG_MAX;
pub const FT_ULONG_MAX = ULONG_MAX;
pub const FT_LLONG_MAX = LLONG_MAX;
pub const FT_LLONG_MIN = LLONG_MIN;
pub const FT_ULLONG_MAX = ULLONG_MAX;
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const ft_memchr = memchr;
pub const ft_memcmp = memcmp;
pub const ft_memcpy = memcpy;
pub const ft_memmove = memmove;
pub const ft_memset = memset;
pub const ft_strcat = strcat;
pub const ft_strcmp = strcmp;
pub const ft_strcpy = strcpy;
pub const ft_strlen = strlen;
pub const ft_strncmp = strncmp;
pub const ft_strncpy = strncpy;
pub const ft_strrchr = strrchr;
pub const ft_strstr = strstr;
pub const _STDIO_H = @as(c_int, 1);
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const __cookie_io_functions_t_defined = @as(c_int, 1);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    _ = &x;
    return __builtin_nanf(x);
}
pub const FT_FILE = FILE;
pub const ft_fclose = fclose;
pub const ft_fopen = fopen;
pub const ft_fread = fread;
pub const ft_fseek = fseek;
pub const ft_ftell = ftell;
pub const ft_snprintf = snprintf;
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const ft_qsort = qsort;
pub const ft_scalloc = calloc;
pub const ft_sfree = free;
pub const ft_smalloc = malloc;
pub const ft_srealloc = realloc;
pub const ft_strtol = strtol;
pub const ft_getenv = getenv;
pub const _SETJMP_H = @as(c_int, 1);
pub const _BITS_SETJMP_H = @as(c_int, 1);
pub const __jmp_buf_tag_defined = @as(c_int, 1);
pub inline fn sigsetjmp(env: anytype, savemask: anytype) @TypeOf(__sigsetjmp(env, savemask)) {
    _ = &env;
    _ = &savemask;
    return __sigsetjmp(env, savemask);
}
pub const ft_jmp_buf = jmp_buf;
pub const ft_longjmp = longjmp;
pub const __STDARG_H = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const _VA_LIST = "";
pub const FREETYPE_CONFIG_INTEGER_TYPES_H_ = "";
pub const FT_SIZEOF_INT = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 32), FT_CHAR_BIT);
pub const FT_SIZEOF_LONG = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 64), FT_CHAR_BIT);
pub const FT_SIZEOF_LONG_LONG = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 64), FT_CHAR_BIT);
pub const FT_INT64 = c_long;
pub const FT_UINT64 = c_ulong;
pub const FREETYPE_CONFIG_PUBLIC_MACROS_H_ = "";
pub const FT_STATIC_CAST = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub const FT_REINTERPRET_CAST = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn FT_STATIC_BYTE_CAST(@"type": anytype, @"var": anytype) @TypeOf(@"type"(u8)(@"var")) {
    _ = &@"type";
    _ = &@"var";
    return @"type"(u8)(@"var");
}
pub const FREETYPE_CONFIG_MAC_SUPPORT_H_ = "";
pub const FTTYPES_H_ = "";
pub const FTSYSTEM_H_ = "";
pub const FTIMAGE_H_ = "";
pub const ft_pixel_mode_none = FT_PIXEL_MODE_NONE;
pub const ft_pixel_mode_mono = FT_PIXEL_MODE_MONO;
pub const ft_pixel_mode_grays = FT_PIXEL_MODE_GRAY;
pub const ft_pixel_mode_pal2 = FT_PIXEL_MODE_GRAY2;
pub const ft_pixel_mode_pal4 = FT_PIXEL_MODE_GRAY4;
pub const FT_OUTLINE_CONTOURS_MAX = SHRT_MAX;
pub const FT_OUTLINE_POINTS_MAX = SHRT_MAX;
pub const FT_OUTLINE_NONE = @as(c_int, 0x0);
pub const FT_OUTLINE_OWNER = @as(c_int, 0x1);
pub const FT_OUTLINE_EVEN_ODD_FILL = @as(c_int, 0x2);
pub const FT_OUTLINE_REVERSE_FILL = @as(c_int, 0x4);
pub const FT_OUTLINE_IGNORE_DROPOUTS = @as(c_int, 0x8);
pub const FT_OUTLINE_SMART_DROPOUTS = @as(c_int, 0x10);
pub const FT_OUTLINE_INCLUDE_STUBS = @as(c_int, 0x20);
pub const FT_OUTLINE_OVERLAP = @as(c_int, 0x40);
pub const FT_OUTLINE_HIGH_PRECISION = @as(c_int, 0x100);
pub const FT_OUTLINE_SINGLE_PASS = @as(c_int, 0x200);
pub const ft_outline_none = FT_OUTLINE_NONE;
pub const ft_outline_owner = FT_OUTLINE_OWNER;
pub const ft_outline_even_odd_fill = FT_OUTLINE_EVEN_ODD_FILL;
pub const ft_outline_reverse_fill = FT_OUTLINE_REVERSE_FILL;
pub const ft_outline_ignore_dropouts = FT_OUTLINE_IGNORE_DROPOUTS;
pub const ft_outline_high_precision = FT_OUTLINE_HIGH_PRECISION;
pub const ft_outline_single_pass = FT_OUTLINE_SINGLE_PASS;
pub inline fn FT_CURVE_TAG(flag: anytype) @TypeOf(flag & @as(c_int, 0x03)) {
    _ = &flag;
    return flag & @as(c_int, 0x03);
}
pub const FT_CURVE_TAG_ON = @as(c_int, 0x01);
pub const FT_CURVE_TAG_CONIC = @as(c_int, 0x00);
pub const FT_CURVE_TAG_CUBIC = @as(c_int, 0x02);
pub const FT_CURVE_TAG_HAS_SCANMODE = @as(c_int, 0x04);
pub const FT_CURVE_TAG_TOUCH_X = @as(c_int, 0x08);
pub const FT_CURVE_TAG_TOUCH_Y = @as(c_int, 0x10);
pub const FT_CURVE_TAG_TOUCH_BOTH = FT_CURVE_TAG_TOUCH_X | FT_CURVE_TAG_TOUCH_Y;
pub const FT_Curve_Tag_On = FT_CURVE_TAG_ON;
pub const FT_Curve_Tag_Conic = FT_CURVE_TAG_CONIC;
pub const FT_Curve_Tag_Cubic = FT_CURVE_TAG_CUBIC;
pub const FT_Curve_Tag_Touch_X = FT_CURVE_TAG_TOUCH_X;
pub const FT_Curve_Tag_Touch_Y = FT_CURVE_TAG_TOUCH_Y;
pub const FT_Outline_MoveTo_Func = FT_Outline_MoveToFunc;
pub const FT_Outline_LineTo_Func = FT_Outline_LineToFunc;
pub const FT_Outline_ConicTo_Func = FT_Outline_ConicToFunc;
pub const FT_Outline_CubicTo_Func = FT_Outline_CubicToFunc;
pub const ft_glyph_format_none = FT_GLYPH_FORMAT_NONE;
pub const ft_glyph_format_composite = FT_GLYPH_FORMAT_COMPOSITE;
pub const ft_glyph_format_bitmap = FT_GLYPH_FORMAT_BITMAP;
pub const ft_glyph_format_outline = FT_GLYPH_FORMAT_OUTLINE;
pub const ft_glyph_format_plotter = FT_GLYPH_FORMAT_PLOTTER;
pub const FT_Raster_Span_Func = FT_SpanFunc;
pub const FT_RASTER_FLAG_DEFAULT = @as(c_int, 0x0);
pub const FT_RASTER_FLAG_AA = @as(c_int, 0x1);
pub const FT_RASTER_FLAG_DIRECT = @as(c_int, 0x2);
pub const FT_RASTER_FLAG_CLIP = @as(c_int, 0x4);
pub const FT_RASTER_FLAG_SDF = @as(c_int, 0x8);
pub const ft_raster_flag_default = FT_RASTER_FLAG_DEFAULT;
pub const ft_raster_flag_aa = FT_RASTER_FLAG_AA;
pub const ft_raster_flag_direct = FT_RASTER_FLAG_DIRECT;
pub const ft_raster_flag_clip = FT_RASTER_FLAG_CLIP;
pub const FT_Raster_New_Func = FT_Raster_NewFunc;
pub const FT_Raster_Done_Func = FT_Raster_DoneFunc;
pub const FT_Raster_Reset_Func = FT_Raster_ResetFunc;
pub const FT_Raster_Set_Mode_Func = FT_Raster_SetModeFunc;
pub const FT_Raster_Render_Func = FT_Raster_RenderFunc;
pub inline fn FT_MAKE_TAG(_x1: anytype, _x2: anytype, _x3: anytype, _x4: anytype) @TypeOf((((FT_STATIC_BYTE_CAST(FT_Tag, _x1) << @as(c_int, 24)) | (FT_STATIC_BYTE_CAST(FT_Tag, _x2) << @as(c_int, 16))) | (FT_STATIC_BYTE_CAST(FT_Tag, _x3) << @as(c_int, 8))) | FT_STATIC_BYTE_CAST(FT_Tag, _x4)) {
    _ = &_x1;
    _ = &_x2;
    _ = &_x3;
    _ = &_x4;
    return (((FT_STATIC_BYTE_CAST(FT_Tag, _x1) << @as(c_int, 24)) | (FT_STATIC_BYTE_CAST(FT_Tag, _x2) << @as(c_int, 16))) | (FT_STATIC_BYTE_CAST(FT_Tag, _x3) << @as(c_int, 8))) | FT_STATIC_BYTE_CAST(FT_Tag, _x4);
}
pub inline fn FT_IS_EMPTY(list: anytype) @TypeOf(list.head == @as(c_int, 0)) {
    _ = &list;
    return list.head == @as(c_int, 0);
}
pub inline fn FT_BOOL(x: anytype) @TypeOf(FT_STATIC_CAST(FT_Bool, x != @as(c_int, 0))) {
    _ = &x;
    return FT_STATIC_CAST(FT_Bool, x != @as(c_int, 0));
}
pub inline fn FT_ERR_CAT(x: anytype, y: anytype) @TypeOf(FT_ERR_XCAT(x, y)) {
    _ = &x;
    _ = &y;
    return FT_ERR_XCAT(x, y);
}
pub inline fn FT_ERR(e: anytype) @TypeOf(FT_ERR_CAT(FT_ERR_PREFIX, e)) {
    _ = &e;
    return FT_ERR_CAT(FT_ERR_PREFIX, e);
}
pub inline fn FT_ERROR_BASE(x: anytype) @TypeOf(x & @as(c_int, 0xFF)) {
    _ = &x;
    return x & @as(c_int, 0xFF);
}
pub inline fn FT_ERROR_MODULE(x: anytype) @TypeOf(x & @as(c_uint, 0xFF00)) {
    _ = &x;
    return x & @as(c_uint, 0xFF00);
}
pub inline fn FT_ERR_EQ(x: anytype, e: anytype) @TypeOf(FT_ERROR_BASE(x) == FT_ERROR_BASE(FT_ERR(e))) {
    _ = &x;
    _ = &e;
    return FT_ERROR_BASE(x) == FT_ERROR_BASE(FT_ERR(e));
}
pub inline fn FT_ERR_NEQ(x: anytype, e: anytype) @TypeOf(FT_ERROR_BASE(x) != FT_ERROR_BASE(FT_ERR(e))) {
    _ = &x;
    _ = &e;
    return FT_ERROR_BASE(x) != FT_ERROR_BASE(FT_ERR(e));
}
pub const FTERRORS_H_ = "";
pub const __FTERRORS_H__ = "";
pub const FTMODERR_H_ = "";
pub const FT_ERR_BASE = @as(c_int, 0);
pub const FT_INCLUDE_ERR_PROTOS = "";
pub inline fn FT_ERRORDEF_(e: anytype, v: anytype, s: anytype) @TypeOf(FT_ERRORDEF(FT_ERR_CAT(FT_ERR_PREFIX, e), v + FT_ERR_BASE, s)) {
    _ = &e;
    _ = &v;
    _ = &s;
    return FT_ERRORDEF(FT_ERR_CAT(FT_ERR_PREFIX, e), v + FT_ERR_BASE, s);
}
pub inline fn FT_NOERRORDEF_(e: anytype, v: anytype, s: anytype) @TypeOf(FT_ERRORDEF(FT_ERR_CAT(FT_ERR_PREFIX, e), v, s)) {
    _ = &e;
    _ = &v;
    _ = &s;
    return FT_ERRORDEF(FT_ERR_CAT(FT_ERR_PREFIX, e), v, s);
}
pub const FT_ERR_PROTOS_DEFINED = "";
pub const ft_encoding_none = FT_ENCODING_NONE;
pub const ft_encoding_unicode = FT_ENCODING_UNICODE;
pub const ft_encoding_symbol = FT_ENCODING_MS_SYMBOL;
pub const ft_encoding_latin_1 = FT_ENCODING_ADOBE_LATIN_1;
pub const ft_encoding_latin_2 = FT_ENCODING_OLD_LATIN_2;
pub const ft_encoding_sjis = FT_ENCODING_SJIS;
pub const ft_encoding_gb2312 = FT_ENCODING_PRC;
pub const ft_encoding_big5 = FT_ENCODING_BIG5;
pub const ft_encoding_wansung = FT_ENCODING_WANSUNG;
pub const ft_encoding_johab = FT_ENCODING_JOHAB;
pub const ft_encoding_adobe_standard = FT_ENCODING_ADOBE_STANDARD;
pub const ft_encoding_adobe_expert = FT_ENCODING_ADOBE_EXPERT;
pub const ft_encoding_adobe_custom = FT_ENCODING_ADOBE_CUSTOM;
pub const ft_encoding_apple_roman = FT_ENCODING_APPLE_ROMAN;
pub const FT_FACE_FLAG_SCALABLE = @as(c_long, 1) << @as(c_int, 0);
pub const FT_FACE_FLAG_FIXED_SIZES = @as(c_long, 1) << @as(c_int, 1);
pub const FT_FACE_FLAG_FIXED_WIDTH = @as(c_long, 1) << @as(c_int, 2);
pub const FT_FACE_FLAG_SFNT = @as(c_long, 1) << @as(c_int, 3);
pub const FT_FACE_FLAG_HORIZONTAL = @as(c_long, 1) << @as(c_int, 4);
pub const FT_FACE_FLAG_VERTICAL = @as(c_long, 1) << @as(c_int, 5);
pub const FT_FACE_FLAG_KERNING = @as(c_long, 1) << @as(c_int, 6);
pub const FT_FACE_FLAG_FAST_GLYPHS = @as(c_long, 1) << @as(c_int, 7);
pub const FT_FACE_FLAG_MULTIPLE_MASTERS = @as(c_long, 1) << @as(c_int, 8);
pub const FT_FACE_FLAG_GLYPH_NAMES = @as(c_long, 1) << @as(c_int, 9);
pub const FT_FACE_FLAG_EXTERNAL_STREAM = @as(c_long, 1) << @as(c_int, 10);
pub const FT_FACE_FLAG_HINTER = @as(c_long, 1) << @as(c_int, 11);
pub const FT_FACE_FLAG_CID_KEYED = @as(c_long, 1) << @as(c_int, 12);
pub const FT_FACE_FLAG_TRICKY = @as(c_long, 1) << @as(c_int, 13);
pub const FT_FACE_FLAG_COLOR = @as(c_long, 1) << @as(c_int, 14);
pub const FT_FACE_FLAG_VARIATION = @as(c_long, 1) << @as(c_int, 15);
pub const FT_FACE_FLAG_SVG = @as(c_long, 1) << @as(c_int, 16);
pub const FT_FACE_FLAG_SBIX = @as(c_long, 1) << @as(c_int, 17);
pub const FT_FACE_FLAG_SBIX_OVERLAY = @as(c_long, 1) << @as(c_int, 18);
pub inline fn FT_HAS_HORIZONTAL(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_HORIZONTAL) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_HORIZONTAL) != 0);
}
pub inline fn FT_HAS_VERTICAL(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_VERTICAL) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_VERTICAL) != 0);
}
pub inline fn FT_HAS_KERNING(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_KERNING) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_KERNING) != 0);
}
pub inline fn FT_IS_SCALABLE(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SCALABLE) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_SCALABLE) != 0);
}
pub inline fn FT_IS_SFNT(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SFNT) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_SFNT) != 0);
}
pub inline fn FT_IS_FIXED_WIDTH(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_FIXED_WIDTH) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_FIXED_WIDTH) != 0);
}
pub inline fn FT_HAS_FIXED_SIZES(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_FIXED_SIZES) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_FIXED_SIZES) != 0);
}
pub inline fn FT_HAS_FAST_GLYPHS(face: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &face;
    return @as(c_int, 0);
}
pub inline fn FT_HAS_GLYPH_NAMES(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_GLYPH_NAMES) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_GLYPH_NAMES) != 0);
}
pub inline fn FT_HAS_MULTIPLE_MASTERS(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_MULTIPLE_MASTERS) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_MULTIPLE_MASTERS) != 0);
}
pub inline fn FT_IS_NAMED_INSTANCE(face: anytype) @TypeOf(!!((face.*.face_index & @as(c_long, 0x7FFF0000)) != 0)) {
    _ = &face;
    return !!((face.*.face_index & @as(c_long, 0x7FFF0000)) != 0);
}
pub inline fn FT_IS_VARIATION(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_VARIATION) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_VARIATION) != 0);
}
pub inline fn FT_IS_CID_KEYED(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_CID_KEYED) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_CID_KEYED) != 0);
}
pub inline fn FT_IS_TRICKY(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_TRICKY) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_TRICKY) != 0);
}
pub inline fn FT_HAS_COLOR(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_COLOR) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_COLOR) != 0);
}
pub inline fn FT_HAS_SVG(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SVG) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_SVG) != 0);
}
pub inline fn FT_HAS_SBIX(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SBIX) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_SBIX) != 0);
}
pub inline fn FT_HAS_SBIX_OVERLAY(face: anytype) @TypeOf(!!((face.*.face_flags & FT_FACE_FLAG_SBIX_OVERLAY) != 0)) {
    _ = &face;
    return !!((face.*.face_flags & FT_FACE_FLAG_SBIX_OVERLAY) != 0);
}
pub const FT_STYLE_FLAG_ITALIC = @as(c_int, 1) << @as(c_int, 0);
pub const FT_STYLE_FLAG_BOLD = @as(c_int, 1) << @as(c_int, 1);
pub const FT_OPEN_MEMORY = @as(c_int, 0x1);
pub const FT_OPEN_STREAM = @as(c_int, 0x2);
pub const FT_OPEN_PATHNAME = @as(c_int, 0x4);
pub const FT_OPEN_DRIVER = @as(c_int, 0x8);
pub const FT_OPEN_PARAMS = @as(c_int, 0x10);
pub const ft_open_memory = FT_OPEN_MEMORY;
pub const ft_open_stream = FT_OPEN_STREAM;
pub const ft_open_pathname = FT_OPEN_PATHNAME;
pub const ft_open_driver = FT_OPEN_DRIVER;
pub const ft_open_params = FT_OPEN_PARAMS;
pub const FT_LOAD_DEFAULT = @as(c_int, 0x0);
pub const FT_LOAD_NO_SCALE = @as(c_long, 1) << @as(c_int, 0);
pub const FT_LOAD_NO_HINTING = @as(c_long, 1) << @as(c_int, 1);
pub const FT_LOAD_RENDER = @as(c_long, 1) << @as(c_int, 2);
pub const FT_LOAD_NO_BITMAP = @as(c_long, 1) << @as(c_int, 3);
pub const FT_LOAD_VERTICAL_LAYOUT = @as(c_long, 1) << @as(c_int, 4);
pub const FT_LOAD_FORCE_AUTOHINT = @as(c_long, 1) << @as(c_int, 5);
pub const FT_LOAD_CROP_BITMAP = @as(c_long, 1) << @as(c_int, 6);
pub const FT_LOAD_PEDANTIC = @as(c_long, 1) << @as(c_int, 7);
pub const FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH = @as(c_long, 1) << @as(c_int, 9);
pub const FT_LOAD_NO_RECURSE = @as(c_long, 1) << @as(c_int, 10);
pub const FT_LOAD_IGNORE_TRANSFORM = @as(c_long, 1) << @as(c_int, 11);
pub const FT_LOAD_MONOCHROME = @as(c_long, 1) << @as(c_int, 12);
pub const FT_LOAD_LINEAR_DESIGN = @as(c_long, 1) << @as(c_int, 13);
pub const FT_LOAD_SBITS_ONLY = @as(c_long, 1) << @as(c_int, 14);
pub const FT_LOAD_NO_AUTOHINT = @as(c_long, 1) << @as(c_int, 15);
pub const FT_LOAD_COLOR = @as(c_long, 1) << @as(c_int, 20);
pub const FT_LOAD_COMPUTE_METRICS = @as(c_long, 1) << @as(c_int, 21);
pub const FT_LOAD_BITMAP_METRICS_ONLY = @as(c_long, 1) << @as(c_int, 22);
pub const FT_LOAD_NO_SVG = @as(c_long, 1) << @as(c_int, 24);
pub const FT_LOAD_ADVANCE_ONLY = @as(c_long, 1) << @as(c_int, 8);
pub const FT_LOAD_SVG_ONLY = @as(c_long, 1) << @as(c_int, 23);
pub inline fn FT_LOAD_TARGET_(x: anytype) @TypeOf(FT_STATIC_CAST(FT_Int32, x & @as(c_int, 15)) << @as(c_int, 16)) {
    _ = &x;
    return FT_STATIC_CAST(FT_Int32, x & @as(c_int, 15)) << @as(c_int, 16);
}
pub const FT_LOAD_TARGET_NORMAL = FT_LOAD_TARGET_(FT_RENDER_MODE_NORMAL);
pub const FT_LOAD_TARGET_LIGHT = FT_LOAD_TARGET_(FT_RENDER_MODE_LIGHT);
pub const FT_LOAD_TARGET_MONO = FT_LOAD_TARGET_(FT_RENDER_MODE_MONO);
pub const FT_LOAD_TARGET_LCD = FT_LOAD_TARGET_(FT_RENDER_MODE_LCD);
pub const FT_LOAD_TARGET_LCD_V = FT_LOAD_TARGET_(FT_RENDER_MODE_LCD_V);
pub inline fn FT_LOAD_TARGET_MODE(x: anytype) @TypeOf(FT_STATIC_CAST(FT_Render_Mode, (x >> @as(c_int, 16)) & @as(c_int, 15))) {
    _ = &x;
    return FT_STATIC_CAST(FT_Render_Mode, (x >> @as(c_int, 16)) & @as(c_int, 15));
}
pub const ft_render_mode_normal = FT_RENDER_MODE_NORMAL;
pub const ft_render_mode_mono = FT_RENDER_MODE_MONO;
pub const ft_kerning_default = FT_KERNING_DEFAULT;
pub const ft_kerning_unfitted = FT_KERNING_UNFITTED;
pub const ft_kerning_unscaled = FT_KERNING_UNSCALED;
pub const FT_SUBGLYPH_FLAG_ARGS_ARE_WORDS = @as(c_int, 1);
pub const FT_SUBGLYPH_FLAG_ARGS_ARE_XY_VALUES = @as(c_int, 2);
pub const FT_SUBGLYPH_FLAG_ROUND_XY_TO_GRID = @as(c_int, 4);
pub const FT_SUBGLYPH_FLAG_SCALE = @as(c_int, 8);
pub const FT_SUBGLYPH_FLAG_XY_SCALE = @as(c_int, 0x40);
pub const FT_SUBGLYPH_FLAG_2X2 = @as(c_int, 0x80);
pub const FT_SUBGLYPH_FLAG_USE_MY_METRICS = @as(c_int, 0x200);
pub const FT_FSTYPE_INSTALLABLE_EMBEDDING = @as(c_int, 0x0000);
pub const FT_FSTYPE_RESTRICTED_LICENSE_EMBEDDING = @as(c_int, 0x0002);
pub const FT_FSTYPE_PREVIEW_AND_PRINT_EMBEDDING = @as(c_int, 0x0004);
pub const FT_FSTYPE_EDITABLE_EMBEDDING = @as(c_int, 0x0008);
pub const FT_FSTYPE_NO_SUBSETTING = @as(c_int, 0x0100);
pub const FT_FSTYPE_BITMAP_EMBEDDING_ONLY = @as(c_int, 0x0200);
pub const FREETYPE_MAJOR = @as(c_int, 2);
pub const FREETYPE_MINOR = @as(c_int, 13);
pub const FREETYPE_PATCH = @as(c_int, 2);
pub const _FONTCONFIG_H_ = "";
pub const _SYS_STAT_H = @as(c_int, 1);
pub const _BITS_STAT_H = @as(c_int, 1);
pub const _BITS_STRUCT_STAT_H = @as(c_int, 1);
pub const _STATBUF_ST_BLKSIZE = "";
pub const _STATBUF_ST_RDEV = "";
pub const _STATBUF_ST_NSEC = "";
pub const __S_IFMT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal);
pub const __S_IFDIR = @as(c_int, 0o040000);
pub const __S_IFCHR = @as(c_int, 0o020000);
pub const __S_IFBLK = @as(c_int, 0o060000);
pub const __S_IFREG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const __S_IFIFO = @as(c_int, 0o010000);
pub const __S_IFLNK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o120000, .octal);
pub const __S_IFSOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o140000, .octal);
pub inline fn __S_TYPEISMQ(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSEM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSHM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub const __S_ISUID = @as(c_int, 0o4000);
pub const __S_ISGID = @as(c_int, 0o2000);
pub const __S_ISVTX = @as(c_int, 0o1000);
pub const __S_IREAD = @as(c_int, 0o400);
pub const __S_IWRITE = @as(c_int, 0o200);
pub const __S_IEXEC = @as(c_int, 0o100);
pub const UTIME_NOW = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 1);
pub const UTIME_OMIT = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 2);
pub const S_IFMT = __S_IFMT;
pub const S_IFDIR = __S_IFDIR;
pub const S_IFCHR = __S_IFCHR;
pub const S_IFBLK = __S_IFBLK;
pub const S_IFREG = __S_IFREG;
pub const S_IFIFO = __S_IFIFO;
pub const S_IFLNK = __S_IFLNK;
pub const S_IFSOCK = __S_IFSOCK;
pub inline fn __S_ISTYPE(mode: anytype, mask: anytype) @TypeOf((mode & __S_IFMT) == mask) {
    _ = &mode;
    _ = &mask;
    return (mode & __S_IFMT) == mask;
}
pub inline fn S_ISDIR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFDIR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFDIR);
}
pub inline fn S_ISCHR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFCHR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFCHR);
}
pub inline fn S_ISBLK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFBLK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFBLK);
}
pub inline fn S_ISREG(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFREG)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFREG);
}
pub inline fn S_ISFIFO(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFIFO)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFIFO);
}
pub inline fn S_ISLNK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFLNK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFLNK);
}
pub inline fn S_ISSOCK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFSOCK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFSOCK);
}
pub inline fn S_TYPEISMQ(buf: anytype) @TypeOf(__S_TYPEISMQ(buf)) {
    _ = &buf;
    return __S_TYPEISMQ(buf);
}
pub inline fn S_TYPEISSEM(buf: anytype) @TypeOf(__S_TYPEISSEM(buf)) {
    _ = &buf;
    return __S_TYPEISSEM(buf);
}
pub inline fn S_TYPEISSHM(buf: anytype) @TypeOf(__S_TYPEISSHM(buf)) {
    _ = &buf;
    return __S_TYPEISSHM(buf);
}
pub const S_ISUID = __S_ISUID;
pub const S_ISGID = __S_ISGID;
pub const S_ISVTX = __S_ISVTX;
pub const S_IRUSR = __S_IREAD;
pub const S_IWUSR = __S_IWRITE;
pub const S_IXUSR = __S_IEXEC;
pub const S_IRWXU = (__S_IREAD | __S_IWRITE) | __S_IEXEC;
pub const S_IREAD = S_IRUSR;
pub const S_IWRITE = S_IWUSR;
pub const S_IEXEC = S_IXUSR;
pub const S_IRGRP = S_IRUSR >> @as(c_int, 3);
pub const S_IWGRP = S_IWUSR >> @as(c_int, 3);
pub const S_IXGRP = S_IXUSR >> @as(c_int, 3);
pub const S_IRWXG = S_IRWXU >> @as(c_int, 3);
pub const S_IROTH = S_IRGRP >> @as(c_int, 3);
pub const S_IWOTH = S_IWGRP >> @as(c_int, 3);
pub const S_IXOTH = S_IXGRP >> @as(c_int, 3);
pub const S_IRWXO = S_IRWXG >> @as(c_int, 3);
pub const ACCESSPERMS = (S_IRWXU | S_IRWXG) | S_IRWXO;
pub const ALLPERMS = ((((S_ISUID | S_ISGID) | S_ISVTX) | S_IRWXU) | S_IRWXG) | S_IRWXO;
pub const DEFFILEMODE = ((((S_IRUSR | S_IWUSR) | S_IRGRP) | S_IWGRP) | S_IROTH) | S_IWOTH;
pub const S_BLKSIZE = @as(c_int, 512);
pub const FcPublic = "";
pub const FC_MAJOR = @as(c_int, 2);
pub const FC_MINOR = @as(c_int, 15);
pub const FC_REVISION = @as(c_int, 0);
pub const FC_VERSION = ((FC_MAJOR * @as(c_int, 10000)) + (FC_MINOR * @as(c_int, 100))) + FC_REVISION;
pub const FC_CACHE_VERSION_NUMBER = @as(c_int, 9);
pub inline fn _FC_STRINGIFY(s: anytype) @TypeOf(_FC_STRINGIFY_(s)) {
    _ = &s;
    return _FC_STRINGIFY_(s);
}
pub const FC_CACHE_VERSION = _FC_STRINGIFY(FC_CACHE_VERSION_NUMBER);
pub const FcFalse = @as(c_int, 0);
pub const FcTrue = @as(c_int, 1);
pub const FcDontCare = @as(c_int, 2);
pub const FC_FAMILY = "family";
pub const FC_STYLE = "style";
pub const FC_SLANT = "slant";
pub const FC_WEIGHT = "weight";
pub const FC_SIZE = "size";
pub const FC_ASPECT = "aspect";
pub const FC_PIXEL_SIZE = "pixelsize";
pub const FC_SPACING = "spacing";
pub const FC_FOUNDRY = "foundry";
pub const FC_ANTIALIAS = "antialias";
pub const FC_HINTING = "hinting";
pub const FC_HINT_STYLE = "hintstyle";
pub const FC_VERTICAL_LAYOUT = "verticallayout";
pub const FC_AUTOHINT = "autohint";
pub const FC_GLOBAL_ADVANCE = "globaladvance";
pub const FC_WIDTH = "width";
pub const FC_FILE = "file";
pub const FC_INDEX = "index";
pub const FC_FT_FACE = "ftface";
pub const FC_RASTERIZER = "rasterizer";
pub const FC_OUTLINE = "outline";
pub const FC_SCALABLE = "scalable";
pub const FC_COLOR = "color";
pub const FC_VARIABLE = "variable";
pub const FC_SCALE = "scale";
pub const FC_SYMBOL = "symbol";
pub const FC_DPI = "dpi";
pub const FC_RGBA = "rgba";
pub const FC_MINSPACE = "minspace";
pub const FC_SOURCE = "source";
pub const FC_CHARSET = "charset";
pub const FC_LANG = "lang";
pub const FC_FONTVERSION = "fontversion";
pub const FC_FULLNAME = "fullname";
pub const FC_FAMILYLANG = "familylang";
pub const FC_STYLELANG = "stylelang";
pub const FC_FULLNAMELANG = "fullnamelang";
pub const FC_CAPABILITY = "capability";
pub const FC_FONTFORMAT = "fontformat";
pub const FC_EMBOLDEN = "embolden";
pub const FC_EMBEDDED_BITMAP = "embeddedbitmap";
pub const FC_DECORATIVE = "decorative";
pub const FC_LCD_FILTER = "lcdfilter";
pub const FC_FONT_FEATURES = "fontfeatures";
pub const FC_FONT_VARIATIONS = "fontvariations";
pub const FC_NAMELANG = "namelang";
pub const FC_PRGNAME = "prgname";
pub const FC_HASH = "hash";
pub const FC_POSTSCRIPT_NAME = "postscriptname";
pub const FC_FONT_HAS_HINT = "fonthashint";
pub const FC_ORDER = "order";
pub const FC_DESKTOP_NAME = "desktop";
pub const FC_NAMED_INSTANCE = "namedinstance";
pub const FC_FONT_WRAPPER = "fontwrapper";
pub const FC_CACHE_SUFFIX = ".cache-" ++ FC_CACHE_VERSION;
pub const FC_DIR_CACHE_FILE = "fonts.cache-" ++ FC_CACHE_VERSION;
pub const FC_USER_CACHE_FILE = ".fonts.cache-" ++ FC_CACHE_VERSION;
pub const FC_CHARWIDTH = "charwidth";
pub const FC_CHAR_WIDTH = FC_CHARWIDTH;
pub const FC_CHAR_HEIGHT = "charheight";
pub const FC_MATRIX = "matrix";
pub const FC_WEIGHT_THIN = @as(c_int, 0);
pub const FC_WEIGHT_EXTRALIGHT = @as(c_int, 40);
pub const FC_WEIGHT_ULTRALIGHT = FC_WEIGHT_EXTRALIGHT;
pub const FC_WEIGHT_LIGHT = @as(c_int, 50);
pub const FC_WEIGHT_DEMILIGHT = @as(c_int, 55);
pub const FC_WEIGHT_SEMILIGHT = FC_WEIGHT_DEMILIGHT;
pub const FC_WEIGHT_BOOK = @as(c_int, 75);
pub const FC_WEIGHT_REGULAR = @as(c_int, 80);
pub const FC_WEIGHT_NORMAL = FC_WEIGHT_REGULAR;
pub const FC_WEIGHT_MEDIUM = @as(c_int, 100);
pub const FC_WEIGHT_DEMIBOLD = @as(c_int, 180);
pub const FC_WEIGHT_SEMIBOLD = FC_WEIGHT_DEMIBOLD;
pub const FC_WEIGHT_BOLD = @as(c_int, 200);
pub const FC_WEIGHT_EXTRABOLD = @as(c_int, 205);
pub const FC_WEIGHT_ULTRABOLD = FC_WEIGHT_EXTRABOLD;
pub const FC_WEIGHT_BLACK = @as(c_int, 210);
pub const FC_WEIGHT_HEAVY = FC_WEIGHT_BLACK;
pub const FC_WEIGHT_EXTRABLACK = @as(c_int, 215);
pub const FC_WEIGHT_ULTRABLACK = FC_WEIGHT_EXTRABLACK;
pub const FC_SLANT_ROMAN = @as(c_int, 0);
pub const FC_SLANT_ITALIC = @as(c_int, 100);
pub const FC_SLANT_OBLIQUE = @as(c_int, 110);
pub const FC_WIDTH_ULTRACONDENSED = @as(c_int, 50);
pub const FC_WIDTH_EXTRACONDENSED = @as(c_int, 63);
pub const FC_WIDTH_CONDENSED = @as(c_int, 75);
pub const FC_WIDTH_SEMICONDENSED = @as(c_int, 87);
pub const FC_WIDTH_NORMAL = @as(c_int, 100);
pub const FC_WIDTH_SEMIEXPANDED = @as(c_int, 113);
pub const FC_WIDTH_EXPANDED = @as(c_int, 125);
pub const FC_WIDTH_EXTRAEXPANDED = @as(c_int, 150);
pub const FC_WIDTH_ULTRAEXPANDED = @as(c_int, 200);
pub const FC_PROPORTIONAL = @as(c_int, 0);
pub const FC_DUAL = @as(c_int, 90);
pub const FC_MONO = @as(c_int, 100);
pub const FC_CHARCELL = @as(c_int, 110);
pub const FC_RGBA_UNKNOWN = @as(c_int, 0);
pub const FC_RGBA_RGB = @as(c_int, 1);
pub const FC_RGBA_BGR = @as(c_int, 2);
pub const FC_RGBA_VRGB = @as(c_int, 3);
pub const FC_RGBA_VBGR = @as(c_int, 4);
pub const FC_RGBA_NONE = @as(c_int, 5);
pub const FC_HINT_NONE = @as(c_int, 0);
pub const FC_HINT_SLIGHT = @as(c_int, 1);
pub const FC_HINT_MEDIUM = @as(c_int, 2);
pub const FC_HINT_FULL = @as(c_int, 3);
pub const FC_LCD_NONE = @as(c_int, 0);
pub const FC_LCD_DEFAULT = @as(c_int, 1);
pub const FC_LCD_LIGHT = @as(c_int, 2);
pub const FC_LCD_LEGACY = @as(c_int, 3);
pub const _FCFUNCPROTOBEGIN = "";
pub const _FCFUNCPROTOEND = "";
pub const FC_CHARSET_MAP_SIZE = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 256), @as(c_int, 32));
pub const FC_CHARSET_DONE = @import("std").zig.c_translation.cast(FcChar32, -@as(c_int, 1));
pub inline fn FcIsUpper(c: anytype) @TypeOf((@as(c_int, 0o101) <= c) and (c <= @as(c_int, 0o132))) {
    _ = &c;
    return (@as(c_int, 0o101) <= c) and (c <= @as(c_int, 0o132));
}
pub inline fn FcIsLower(c: anytype) @TypeOf((@as(c_int, 0o141) <= c) and (c <= @as(c_int, 0o172))) {
    _ = &c;
    return (@as(c_int, 0o141) <= c) and (c <= @as(c_int, 0o172));
}
pub inline fn FcToLower(c: anytype) @TypeOf(if (FcIsUpper(c)) (c - @as(c_int, 0o101)) + @as(c_int, 0o141) else c) {
    _ = &c;
    return if (FcIsUpper(c)) (c - @as(c_int, 0o101)) + @as(c_int, 0o141) else c;
}
pub const FC_UTF8_MAX_LEN = @as(c_int, 6);
pub const FTGLYPH_H_ = "";
pub const ft_glyph_bbox_unscaled = FT_GLYPH_BBOX_UNSCALED;
pub const ft_glyph_bbox_subpixels = FT_GLYPH_BBOX_SUBPIXELS;
pub const ft_glyph_bbox_gridfit = FT_GLYPH_BBOX_GRIDFIT;
pub const ft_glyph_bbox_truncate = FT_GLYPH_BBOX_TRUNCATE;
pub const ft_glyph_bbox_pixels = FT_GLYPH_BBOX_PIXELS;
pub const _cairo = struct__cairo;
pub const _cairo_surface = struct__cairo_surface;
pub const _cairo_device = struct__cairo_device;
pub const _cairo_matrix = struct__cairo_matrix;
pub const _cairo_pattern = struct__cairo_pattern;
pub const _cairo_user_data_key = struct__cairo_user_data_key;
pub const _cairo_status = enum__cairo_status;
pub const _cairo_content = enum__cairo_content;
pub const _cairo_format = enum__cairo_format;
pub const _cairo_dither = enum__cairo_dither;
pub const _cairo_rectangle_int = struct__cairo_rectangle_int;
pub const _cairo_operator = enum__cairo_operator;
pub const _cairo_antialias = enum__cairo_antialias;
pub const _cairo_fill_rule = enum__cairo_fill_rule;
pub const _cairo_line_cap = enum__cairo_line_cap;
pub const _cairo_line_join = enum__cairo_line_join;
pub const _cairo_rectangle = struct__cairo_rectangle;
pub const _cairo_rectangle_list = struct__cairo_rectangle_list;
pub const _cairo_scaled_font = struct__cairo_scaled_font;
pub const _cairo_font_face = struct__cairo_font_face;
pub const _cairo_text_cluster_flags = enum__cairo_text_cluster_flags;
pub const _cairo_font_slant = enum__cairo_font_slant;
pub const _cairo_font_weight = enum__cairo_font_weight;
pub const _cairo_subpixel_order = enum__cairo_subpixel_order;
pub const _cairo_hint_style = enum__cairo_hint_style;
pub const _cairo_hint_metrics = enum__cairo_hint_metrics;
pub const _cairo_color_mode = enum__cairo_color_mode;
pub const _cairo_font_options = struct__cairo_font_options;
pub const _cairo_font_type = enum__cairo_font_type;
pub const _cairo_path_data_type = enum__cairo_path_data_type;
pub const _cairo_path_data_t = union__cairo_path_data_t;
pub const cairo_path = struct_cairo_path;
pub const _cairo_device_type = enum__cairo_device_type;
pub const _cairo_surface_type = enum__cairo_surface_type;
pub const _cairo_pattern_type = enum__cairo_pattern_type;
pub const _cairo_extend = enum__cairo_extend;
pub const _cairo_filter = enum__cairo_filter;
pub const _cairo_region = struct__cairo_region;
pub const _cairo_region_overlap = enum__cairo_region_overlap;
pub const __locale_struct = struct___locale_struct;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const _IO_cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const __jmp_buf_tag = struct___jmp_buf_tag;
pub const FT_MemoryRec_ = struct_FT_MemoryRec_;
pub const FT_StreamDesc_ = union_FT_StreamDesc_;
pub const FT_StreamRec_ = struct_FT_StreamRec_;
pub const FT_Vector_ = struct_FT_Vector_;
pub const FT_BBox_ = struct_FT_BBox_;
pub const FT_Pixel_Mode_ = enum_FT_Pixel_Mode_;
pub const FT_Bitmap_ = struct_FT_Bitmap_;
pub const FT_Outline_ = struct_FT_Outline_;
pub const FT_Outline_Funcs_ = struct_FT_Outline_Funcs_;
pub const FT_Glyph_Format_ = enum_FT_Glyph_Format_;
pub const FT_Span_ = struct_FT_Span_;
pub const FT_Raster_Params_ = struct_FT_Raster_Params_;
pub const FT_RasterRec_ = struct_FT_RasterRec_;
pub const FT_Raster_Funcs_ = struct_FT_Raster_Funcs_;
pub const FT_UnitVector_ = struct_FT_UnitVector_;
pub const FT_Matrix_ = struct_FT_Matrix_;
pub const FT_Data_ = struct_FT_Data_;
pub const FT_Generic_ = struct_FT_Generic_;
pub const FT_ListNodeRec_ = struct_FT_ListNodeRec_;
pub const FT_ListRec_ = struct_FT_ListRec_;
pub const FT_Glyph_Metrics_ = struct_FT_Glyph_Metrics_;
pub const FT_Bitmap_Size_ = struct_FT_Bitmap_Size_;
pub const FT_LibraryRec_ = struct_FT_LibraryRec_;
pub const FT_ModuleRec_ = struct_FT_ModuleRec_;
pub const FT_DriverRec_ = struct_FT_DriverRec_;
pub const FT_RendererRec_ = struct_FT_RendererRec_;
pub const FT_Encoding_ = enum_FT_Encoding_;
pub const FT_CharMapRec_ = struct_FT_CharMapRec_;
pub const FT_SubGlyphRec_ = struct_FT_SubGlyphRec_;
pub const FT_Slot_InternalRec_ = struct_FT_Slot_InternalRec_;
pub const FT_GlyphSlotRec_ = struct_FT_GlyphSlotRec_;
pub const FT_Size_Metrics_ = struct_FT_Size_Metrics_;
pub const FT_Size_InternalRec_ = struct_FT_Size_InternalRec_;
pub const FT_SizeRec_ = struct_FT_SizeRec_;
pub const FT_Face_InternalRec_ = struct_FT_Face_InternalRec_;
pub const FT_FaceRec_ = struct_FT_FaceRec_;
pub const FT_Parameter_ = struct_FT_Parameter_;
pub const FT_Open_Args_ = struct_FT_Open_Args_;
pub const FT_Size_Request_Type_ = enum_FT_Size_Request_Type_;
pub const FT_Size_RequestRec_ = struct_FT_Size_RequestRec_;
pub const FT_Render_Mode_ = enum_FT_Render_Mode_;
pub const FT_Kerning_Mode_ = enum_FT_Kerning_Mode_;
pub const _FcType = enum__FcType;
pub const _FcMatrix = struct__FcMatrix;
pub const _FcCharSet = struct__FcCharSet;
pub const _FcObjectType = struct__FcObjectType;
pub const _FcConstant = struct__FcConstant;
pub const _FcResult = enum__FcResult;
pub const _FcValueBinding = enum__FcValueBinding;
pub const _FcPattern = struct__FcPattern;
pub const _FcPatternIter = struct__FcPatternIter;
pub const _FcLangSet = struct__FcLangSet;
pub const _FcRange = struct__FcRange;
pub const _FcValue = struct__FcValue;
pub const _FcFontSet = struct__FcFontSet;
pub const _FcObjectSet = struct__FcObjectSet;
pub const _FcMatchKind = enum__FcMatchKind;
pub const _FcLangResult = enum__FcLangResult;
pub const _FcSetName = enum__FcSetName;
pub const _FcConfigFileInfoIter = struct__FcConfigFileInfoIter;
pub const _FcAtomic = struct__FcAtomic;
pub const _FcConfig = struct__FcConfig;
pub const _FcGlobalCache = struct__FcGlobalCache;
pub const _FcBlanks = struct__FcBlanks;
pub const _FcStrList = struct__FcStrList;
pub const _FcStrSet = struct__FcStrSet;
pub const _FcCache = struct__FcCache;
pub const FT_Glyph_Class_ = struct_FT_Glyph_Class_;
pub const FT_GlyphRec_ = struct_FT_GlyphRec_;
pub const FT_BitmapGlyphRec_ = struct_FT_BitmapGlyphRec_;
pub const FT_OutlineGlyphRec_ = struct_FT_OutlineGlyphRec_;
pub const FT_SvgGlyphRec_ = struct_FT_SvgGlyphRec_;
pub const FT_Glyph_BBox_Mode_ = enum_FT_Glyph_BBox_Mode_;
