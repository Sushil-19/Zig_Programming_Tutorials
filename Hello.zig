//!
//! Hello world in Zig
//! Types of comments
//!

/// This program is hello world
const std = @import("std");

/// this module does hello world task
pub fn main() !void {
    const v = std.io.getStdOut().writer();
    // this a try line.
    try v.print("Hello World", .{});
}
