//!
//! operations on variables
//!

const std = @import("std");

pub fn main() !void {
    const a: i64 = 20;
    const b: i64 = 10;
    const add: i64 = a + b;
    const sub: i64 = a - b;
    const mul: i64 = a * b;
    const div: i64 = a / b;

    std.debug.print("Integer Operations\n", .{});
    std.debug.print("Add = {}\n", .{add});
    std.debug.print("Sub = {}\n", .{sub});
    std.debug.print("Mult = {}\n", .{mul});
    std.debug.print("Div = {}\n", .{div});

    const af: i64 = 20;
    const bf: i64 = 10;
    const addf: i64 = af + bf;
    const subf: i64 = af - bf;
    const mulf: i64 = af * bf;
    const divf: i64 = af / bf;

    std.debug.print("Floating Point Operations\n", .{});
    std.debug.print("Add = {}\n", .{addf});
    std.debug.print("Sub = {}\n", .{subf});
    std.debug.print("Mult = {}\n", .{mulf});
    std.debug.print("Div = {}\n", .{divf});

    const ab: bool = true;
    const bb: bool = false;
    const andb: bool = ab and bb;
    const orb: bool = ab or bb;
    const notb: bool = !ab;

    std.debug.print("Boolan Operations\n", .{});
    std.debug.print("And = {}\n", .{andb});
    std.debug.print("Or = {}\n", .{orb});
    std.debug.print("Not = {}\n", .{notb});

    const s1 = "Hello";
    const s2 = " World";
    const concat = s1 ++ s2;

    std.debug.print("String Oprerations", .{});
    std.debug.print("S1 = {s}\n", .{s1});
    std.debug.print("S2 = {s}\n", .{s2});
    std.debug.print("Concatenated String = {s}\n", .{concat});
}
