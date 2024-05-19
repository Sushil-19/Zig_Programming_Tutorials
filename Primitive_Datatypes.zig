//!
//! Primitive Data Types
//!

const std = @import("std");

pub fn main() void {
    // Boolean Data Type
    const isTrue: bool = true;
    const isFalse: bool = false;

    // Integer Data Types
    const int8Value: i8 = -128;
    const int16Value: i16 = -32768;
    const int32Value: i32 = -2147483648;
    const int64Value: i64 = -9223372036854775808;

    // Unsigned Integer Data Types
    const uint8Value: u8 = 255;
    const uint16Value: u16 = 65535;
    const uint32Value: u32 = 4294967295;
    const uint64Value: u64 = 18446744073709551615;

    // Floating-Point Data Types
    const float32Value: f32 = 3.14159;
    const float64Value: f64 = 3.141592653589793;

    // Character Data Type
    const mychar = 'A';

    // Printing Values
    std.debug.print("Boolean: {} {}\n", .{ isTrue, isFalse });
    std.debug.print("Integers: {} {} {} {}\n", .{ int8Value, int16Value, int32Value, int64Value });
    std.debug.print("Unsigned Integers: {} {} {} {}\n", .{ uint8Value, uint16Value, uint32Value, uint64Value });
    std.debug.print("Floating-Point: {} {}\n", .{ float32Value, float64Value });
    std.debug.print("Char is {}\n", .{mychar});
}
