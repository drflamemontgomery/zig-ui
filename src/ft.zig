const std = @import("std");
const c = @import("c.zig");
const ui = @import("ui/ui.zig");

/// A wrapper structure for dealing with the c libraries
pub const Library = struct {
    /// The registered Library for the application
    pub var current: ?Library = null;
    pub var default_font:Face = undefined;
    pub var default_font_file: []u8 = undefined;

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

        current = .{
            .library = library,
        };
        
        default_font = try current.?.getDefault(0);
        default_font_file = try getDefaultFontFile(std.heap.page_allocator);
        return current.?;
    }

    fn getDefaultFontFile(allocator:std.mem.Allocator) ![]u8 {
        const pattern = c.FcPatternCreate() orelse return Err.FAILED_TO_INIT_FREETYPE;
        defer c.FcPatternDestroy(pattern);

        _ = c.FcConfigSubstitute(null, pattern, c.FcMatchPattern);
        c.FcDefaultSubstitute(pattern);

        var result:c.FcResult = undefined;
        const match = c.FcFontMatch(null, pattern, &result) orelse return Err.FAILED_TO_INIT_FREETYPE;
        defer c.FcPatternDestroy(match);

        var fontfile : [*c]c.FcChar8 = undefined;
        _ = c.FcPatternGetString(match, c.FC_FILE, 0, &fontfile);
   

       const font_file_slice: []u8 = std.mem.span(fontfile);
       const ret_file_slice: []u8 = try allocator.alloc(u8, font_file_slice.len);

       std.mem.copyBackwards(u8, ret_file_slice, font_file_slice);

       return ret_file_slice;
    }

    fn getDefault(self: Self, face_index: i64) !Face {
        const font_file = try getDefaultFontFile(std.heap.page_allocator);
        defer std.heap.page_allocator.destroy(&font_file[0]);

        return self.newFace(font_file, face_index);
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
        std.heap.page_allocator.free(default_font_file);
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
