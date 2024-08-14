const std = @import("std");
const c = @import("c.zig");
const ui = @import("ui/ui.zig");

/// A wrapper structure for dealing with the c libraries
pub const Library = struct {
    /// The registered Library for the application
    pub var current: ?Library = null;

    /// The Internal c library handle
    library: c.FT_Library,

    /// Initialize the c library
    /// Call this before creating a Library Structure
    /// Call `Library.current.destroy()` to free the resources
    pub fn init() !Self {
        var library: c.FT_Library = undefined;
        if (c.FT_Init_FreeType(@ptrCast(&library)) != 0) {
            return Err.FAILED_TO_INIT_FREETYPE;
        }
        errdefer _ = c.FT_Done_FreeType(library);
        
        if(c.FcInit() == 0) {
            return Err.FAILED_TO_INIT_FREETYPE;       
        }
        //const fonts = c.FcConfigGetFonts(null, c.FcSetSystem);
        //defer c.FcFontSetDestroy(fonts);

        //for(0..@intCast(fonts[0].nfont)) |i| {
        //    var value:c.FcValue = undefined;
        //    _ = c.FcPatternGet(fonts[0].fonts[i], "file", 0, &value);
        //    //const std = @import("std");
        //    switch(value.type) {
        //        c.FcTypeString => {},//std.debug.print("file: {s}\n", .{value.u.s}),
        //        else => {},
        //    }
        //}

        current = .{
            .library = library,
        };
        return current.?;
    }

    pub fn getDefault(self: Self, face_index: i64) !Face {
        const pattern = c.FcPatternCreate() orelse return Err.FAILED_TO_INIT_FREETYPE;
        defer c.FcPatternDestroy(pattern);

        _ = c.FcConfigSubstitute(null, pattern, c.FcMatchPattern);
        c.FcDefaultSubstitute(pattern);

        var result:c.FcResult = undefined;
        const match = c.FcFontMatch(null, pattern, &result) orelse return Err.FAILED_TO_INIT_FREETYPE;
        defer c.FcPatternDestroy(match);

        var fontfile : [*c]c.FcChar8 = undefined;
        _ = c.FcPatternGetString(match, c.FC_FILE, 0, &fontfile);
   

       const font_file_slice: []const u8 = std.mem.span(fontfile);

       return self.newFace(font_file_slice, face_index);
    }

    /// Load a c font from a `path` at index
    pub fn newFace(self: Self, path: []const u8, face_index: i64) !Face {
        var face: c.FT_Face = undefined;
        if (c.FT_New_Face(self.library, @ptrCast(path), face_index, @ptrCast(&face)) != 0) {
            return Err.FAILED_TO_CREATE_NEW_FACE;
        }
        return face;
    }

    /// Free the c library resources
    pub fn destroy(self: Self) !void {
        c.FcFini();
        if (c.FT_Done_FreeType(self.library) != 0) {
            return Err.FAILED_TO_DESTROY_FREETYPE;
        }
    }

    /// Get the index of the glyph code in the freetpye font
    pub fn getGlyphIndex(face: Face, code: u64) u32 {
        return @intCast(c.FT_Get_Char_Index(face, code));
    }

    const Self = @This();
    const Err = error{
        FAILED_TO_INIT_FREETYPE,
        FAILED_TO_DESTROY_FREETYPE,
        FAILED_TO_CREATE_NEW_FACE,
    };

    test "get_default_font" {
        const self = try init();
        _ = try self.getDefault(0);

    }
};

pub const Face = c.FT_Face;
