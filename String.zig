//!
//! String and Opearations
//!

const std = @import("std");

pub fn main() !void {
    var allocator = std.heap.page_allocator;

    // Concatenation
    const s1 = "Hello, ";
    const s2 = "world!";
    const concatenated = try std.mem.concat(allocator, u8, &[_][]const u8{ s1, s2 });
    defer allocator.free(concatenated);
    std.debug.print("Concatenated string: {s}\n", .{concatenated});

    // Slicing
    const s3 = "Hello, world!";
    const slice = s3[7..12]; // Slice "world"
    std.debug.print("Sliced string: {s}\n", .{slice});

    // Searching
    const searchStr = "Hello, world!";
    const substring = "world";
    const index = std.mem.indexOf(u8, searchStr, substring);
    if (index != null) {
        std.debug.print("Found '{s}' at index {d}\n", .{ substring, index.? });
    } else {
        std.debug.print("Substring '{s}' not found\n", .{substring});
    }

    // Comparing
    const s4 = "Hello";
    const s5 = "hello";
    const comparison = std.mem.eql(u8, s4, s5);
    const comparisonStr = if (comparison) "true" else "false";
    std.debug.print("Are the strings '{s}' and '{s}' equal? {s}\n", .{ s4, s5, comparisonStr });

    // Splitting
    const s6 = "apple,banana,cherry";
    const delimiter = ",";
    var parts = std.mem.split(u8, s6, delimiter);
    std.debug.print("Splitting the string:\n", .{});
    while (parts.next()) |part| {
        std.debug.print("{s}\n", .{part});
    }

    // Trimming
    const s7 = "   Hello, world!   ";
    const trimmed = std.mem.trim(u8, s7, " ");
    std.debug.print("Trimmed string: '{s}'\n", .{trimmed});

    // Converting to Upper Case
    const upper = try toUpperCase(allocator, s1);
    defer allocator.free(upper);
    std.debug.print("Upper case: {s}\n", .{upper});

    // Converting to Lower Case
    const lower = try toLowerCase(allocator, s1);
    defer allocator.free(lower);
    std.debug.print("Lower case: {s}\n", .{lower});

    // Formatting
    const name = "Zig";
    const version = "0.9.0";
    var buffer: [50]u8 = undefined;
    const formatted = try std.fmt.bufPrint(&buffer, "Language: {s}, Version: {s}", .{ name, version });
    std.debug.print("Formatted string: {s}\n", .{formatted});

    // Length
    const s8 = "Hello, world!";
    const len = s8.len;
    std.debug.print("Length of the string: {d}\n", .{len});
}

fn toUpperCase(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    var result = try allocator.alloc(u8, s.len);
    var i: usize = 0;
    while (i < s.len) : (i += 1) {
        result[i] = std.ascii.toUpper(s[i]);
    }
    return result;
}

fn toLowerCase(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    var result = try allocator.alloc(u8, s.len);
    var i: usize = 0;
    while (i < s.len) : (i += 1) {
        result[i] = std.ascii.toLower(s[i]);
    }
    return result;
}
