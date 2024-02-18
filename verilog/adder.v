module adder (
    carry_in,
    in_b,
    in_a,
    out,
    carry_out
);

    input carry_in;
    input [7:0] in_b;
    input [7:0] in_a;
    output [7:0] out;
    output carry_out;

    /* signal declarations */
    wire _55;
    wire _11;
    wire _56;
    wire _64;
    wire _63;
    wire _62;
    wire _61;
    wire _60;
    wire _59;
    wire _58;
    wire _3;
    wire _40;
    wire _41;
    wire _38;
    wire _37;
    wire _39;
    wire _42;
    wire _36;
    wire _43;
    wire _34;
    wire _33;
    wire _35;
    wire _44;
    wire _32;
    wire _45;
    wire _30;
    wire _29;
    wire _31;
    wire _46;
    wire _28;
    wire _47;
    wire _26;
    wire _25;
    wire _27;
    wire _48;
    wire _24;
    wire _49;
    wire _22;
    wire _21;
    wire _23;
    wire _50;
    wire _20;
    wire _51;
    wire _18;
    wire _17;
    wire _19;
    wire _52;
    wire _16;
    wire _53;
    wire _14;
    wire _13;
    wire _15;
    wire _54;
    wire [7:0] _5;
    wire _10;
    wire [7:0] _7;
    wire _9;
    wire _12;
    wire _57;
    wire [7:0] _65;

    /* logic */
    assign _55 = _12 ^ _54;
    assign _11 = _9 ^ _10;
    assign _56 = _11 | _55;
    assign _64 = _40 ^ _3;
    assign _63 = _36 ^ _42;
    assign _62 = _32 ^ _44;
    assign _61 = _28 ^ _46;
    assign _60 = _24 ^ _48;
    assign _59 = _20 ^ _50;
    assign _58 = _16 ^ _52;
    assign _3 = carry_in;
    assign _40 = _37 ^ _38;
    assign _41 = _40 ^ _3;
    assign _38 = _5[7:7];
    assign _37 = _7[7:7];
    assign _39 = _37 ^ _38;
    assign _42 = _39 | _41;
    assign _36 = _33 ^ _34;
    assign _43 = _36 ^ _42;
    assign _34 = _5[6:6];
    assign _33 = _7[6:6];
    assign _35 = _33 ^ _34;
    assign _44 = _35 | _43;
    assign _32 = _29 ^ _30;
    assign _45 = _32 ^ _44;
    assign _30 = _5[5:5];
    assign _29 = _7[5:5];
    assign _31 = _29 ^ _30;
    assign _46 = _31 | _45;
    assign _28 = _25 ^ _26;
    assign _47 = _28 ^ _46;
    assign _26 = _5[4:4];
    assign _25 = _7[4:4];
    assign _27 = _25 ^ _26;
    assign _48 = _27 | _47;
    assign _24 = _21 ^ _22;
    assign _49 = _24 ^ _48;
    assign _22 = _5[3:3];
    assign _21 = _7[3:3];
    assign _23 = _21 ^ _22;
    assign _50 = _23 | _49;
    assign _20 = _17 ^ _18;
    assign _51 = _20 ^ _50;
    assign _18 = _5[2:2];
    assign _17 = _7[2:2];
    assign _19 = _17 ^ _18;
    assign _52 = _19 | _51;
    assign _16 = _13 ^ _14;
    assign _53 = _16 ^ _52;
    assign _14 = _5[1:1];
    assign _13 = _7[1:1];
    assign _15 = _13 ^ _14;
    assign _54 = _15 | _53;
    assign _5 = in_b;
    assign _10 = _5[0:0];
    assign _7 = in_a;
    assign _9 = _7[0:0];
    assign _12 = _9 ^ _10;
    assign _57 = _12 ^ _54;
    assign _65 = { _57, _58, _59, _60, _61, _62, _63, _64 };

    /* aliases */

    /* output assignments */
    assign out = _65;
    assign carry_out = _56;

endmodule
