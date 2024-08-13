const std = @import("std");
const abi = @import("abi");
const ui = @import("ui/ui.zig");

/// A wrapper structure for dealing with the abi libraries
pub const Library = struct {
    /// The registered Library for the application
    pub var current: ?Library = null;

    /// The Internal abi library handle
    library: abi.FT_Library,

    /// Initialize the abi library
    /// Call this before creating a Library Structure
    /// Call `Library.current.destroy()` to free the resources
    pub fn init() !Self {
        var library: abi.FT_Library = undefined;
        if (abi.FT_Init_FreeType(@ptrCast(&library)) != 0) {
            return Err.FAILED_TO_INIT_FREETYPE;
        }
        errdefer _ = abi.FT_Done_FreeType(library);
        
        if(abi.FcInit() == 0) {
            return Err.FAILED_TO_INIT_FREETYPE;       
        }
        //const fonts = abi.FcConfigGetFonts(null, abi.FcSetSystem);
        //defer abi.FcFontSetDestroy(fonts);

        //for(0..@intCast(fonts[0].nfont)) |i| {
        //    var value:abi.FcValue = undefined;
        //    _ = abi.FcPatternGet(fonts[0].fonts[i], "file", 0, &value);
        //    //const std = @import("std");
        //    switch(value.type) {
        //        abi.FcTypeString => {},//std.debug.print("file: {s}\n", .{value.u.s}),
        //        else => {},
        //    }
        //}

        current = .{
            .library = library,
        };
        return current.?;
    }

    pub fn getDefault(self: Self, face_index: i64) !Face {
        const pattern = abi.FcPatternCreate() orelse return Err.FAILED_TO_INIT_FREETYPE;
        defer abi.FcPatternDestroy(pattern);

        _ = abi.FcConfigSubstitute(null, pattern, abi.FcMatchPattern);
        abi.FcDefaultSubstitute(pattern);

        var result:abi.FcResult = undefined;
        const match = abi.FcFontMatch(null, pattern, &result) orelse return Err.FAILED_TO_INIT_FREETYPE;
        defer abi.FcPatternDestroy(match);

        var fontfile : [*c]abi.FcChar8 = undefined;
        _ = abi.FcPatternGetString(match, abi.FC_FILE, 0, &fontfile);
   

       const font_file_slice: []const u8 = std.mem.span(fontfile);

       return self.newFace(font_file_slice, face_index);
    }

    /// Load a abi font from a `path` at index
    pub fn newFace(self: Self, path: []const u8, face_index: i64) !Face {
        var face: abi.FT_Face = undefined;
        if (abi.FT_New_Face(self.library, @ptrCast(path), face_index, @ptrCast(&face)) != 0) {
            return Err.FAILED_TO_CREATE_NEW_FACE;
        }
        return face;
    }

    /// Free the abi library resources
    pub fn destroy(self: Self) !void {
        abi.FcFini();
        if (abi.FT_Done_FreeType(self.library) != 0) {
            return Err.FAILED_TO_DESTROY_FREETYPE;
        }
    }

    /// Get the index of the glyph code in the freetpye font
    pub fn getGlyphIndex(face: Face, code: u64) u32 {
        return @intCast(abi.FT_Get_Char_Index(face, code));
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

pub const Face = abi.FT_Face;
