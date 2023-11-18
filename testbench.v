`timescale 1ns/1ns

module tb_alphadecode;
  reg a, b, c, d, e;
  wire [0:13] s;
  
  alphadecode uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .s(s)
  );

  // Stimulus
  initial begin
    $dumpfile("tb_alphadecode.vcd");
    $dumpvars(0, tb_alphadecode);

    // Test Case 1 A
    a = 0; b = 0; c = 0; d = 0; e = 0; #10;
    $display("Test Case 01 A: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 2 B
    a = 0; b = 0; c = 0; d = 0; e = 1; #10;
    $display("Test Case 02 B: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 3 C
    a = 0; b = 0; c = 0; d = 1; e = 0; #10;
    $display("Test Case 03 C: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 4 D
    a = 0; b = 0; c = 0; d = 1; e = 1; #10;
    $display("Test Case 04 D: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 5 E
    a = 0; b = 0; c = 1; d = 0; e = 0; #10;
    $display("Test Case 05 E: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 6 F
    a = 0; b = 0; c = 1; d = 0; e = 1; #10;
    $display("Test Case 06 F: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 7 G
    a = 0; b = 0; c = 1; d = 1; e = 0; #10;
    $display("Test Case 07 G: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 8 H
    a = 0; b = 0; c = 1; d = 1; e = 1; #10;
    $display("Test Case 08 H: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 9 I
    a = 0; b = 1; c = 0; d = 0; e = 0; #10;
    $display("Test Case 09 I: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);
    
    // Test Case 10 J
    a = 0; b = 1; c = 0; d = 0; e = 1; #10;
    $display("Test Case 10 J: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 11 K
    a = 0; b = 1; c = 0; d = 1; e = 0; #10;
    $display("Test Case 11 K: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 12 L
    a = 0; b = 1; c = 0; d = 1; e = 1; #10;
    $display("Test Case 12 L: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 13 M
    a = 0; b = 1; c = 1; d = 0; e = 0; #10;
    $display("Test Case 13 M: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 14 N
    a = 0; b = 1; c = 1; d = 0; e = 1; #10;
    $display("Test Case 14 N: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 15 O
    a = 0; b = 1; c = 1; d = 1; e = 0; #10;
    $display("Test Case 15 O: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 16 P
    a = 0; b = 1; c = 1; d = 1; e = 1; #10;
    $display("Test Case 16 P: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 17 Q
    a = 1; b = 0; c = 0; d = 0; e = 0; #10;
    $display("Test Case 17 Q: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 18 R
    a = 1; b = 0; c = 0; d = 0; e = 1; #10;
    $display("Test Case 18 R: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 19 S
    a = 1; b = 0; c = 0; d = 1; e = 0; #10;
    $display("Test Case 19 S: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 20 T
    a = 1; b = 0; c = 0; d = 1; e = 1; #10;
    $display("Test Case 20 T: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 21 U
    a = 1; b = 0; c = 1; d = 0; e = 0; #10;
    $display("Test Case 21 U: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 22 V
    a = 1; b = 0; c = 1; d = 0; e = 1; #10;
    $display("Test Case 22 V: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 23 W
    a = 1; b = 0; c = 1; d = 1; e = 0; #10;
    $display("Test Case 23 W: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 24 X
    a = 1; b = 0; c = 1; d = 1; e = 1; #10;
    $display("Test Case 24 X: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 25 Y
    a = 1; b = 1; c = 0; d = 0; e = 0; #10;
    $display("Test Case 25 Y: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);

    // Test Case 26 Z
    a = 1; b = 1; c = 0; d = 0; e = 1; #10;
    $display("Test Case 26 Z: a=%b, b=%b, c=%b, d=%b, e=%b, s=%b", a, b, c, d, e, s);
    
    // Finish simulation
    $finish;
  end
endmodule
