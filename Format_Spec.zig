//!
//! Format specifiers
//!

const std = @import("std");

pub fn main() !void {
    const int_val: i32 = 10;
    std.debug.print("The integer value is {}\n", .{int_val});
    std.debug.print("The binary value is {b}\n", .{int_val});
    std.debug.print("The hex value is {x}\n", .{int_val});

    const float_val: f64 = 3.143734;
    std.debug.print("The float value is {}\n", .{float_val});
    std.debug.print("The float value is {:.02}\n", .{float_val});

    const string_val = "hello world";
    std.debug.print("The string char 0 {c}\n", .{string_val[2]});
    std.debug.print("The string value is {s}\n", .{string_val});

    const char_val: u8 = 'A';
    std.debug.print("The character value is {}\n", .{char_val});
    std.debug.print("The charcater value is {c}\n", .{char_val});

    const bool_val: bool = true;
    std.debug.print("The boolean value is {}\n", .{bool_val});

    const pointer_val = &int_val;
    std.debug.print("The pointer value is {}\n", .{pointer_val.*});
}
