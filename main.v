module segment_equations(a, b, c, d, e, s);
  input a, b, c, d, e;
  output [13:0] s;
  
  assign s[0]=(^b&^e)+(^a&b)+(^a&c)+(a&^b&^d);
  assign s[1]=(^b&^c)+(^a&^b&^e)+(^a&^b&^d)+(a&b&e)+(b&c&d);
  assign s[2]=(b&c)+(^b&^c&^d)+(a&c&^e)+(^a&b&^d&e)+(^a&^b&d&e);
  assign s[3]=(b&c&^e)+(a&c&^d)+(^a&c&d&^e)+(^a&b&^d&e)+(^a&^b&d&e)+(^a&^b&^c&^d)+(a&^b&^c&^e);
  assign s[4]=(^c&^d&e)+(b&c&d)+(^a&^c&e)+(a&^b&^c&^e)+(^b&c&^d&^e)+(^a&b&^c&^d);
  assign s[5]=(c&^e)+(c&^d)+(^a&d&^e)+(^b&^d&^e)+(^a&^b&c)+(^a&b&^c&e);
  assign s[6]=(a&b&^e)+(b&c&^d)+(a&c&d&e);
  assign s[7]=(^a&^b&^c&e)+(a&^c&d&^e)+(^a&b^c&^d&^e);
  assign s[8]=(a&b)+(a&c&e)+(b&c&d&^e)+(^b&^c&d&^e);
  assign s[9]=(^a&c&d&e)+(^a&^b&c&^e)+(a&^c&d&^e)+(b&^c&d&^e)+(^a&^b&^d&^e);
  assign s[10]=(a&c&d)+(a&^b&^c&^d)+(b&^c&d&^e)+(b&c&^d&e);
  assign s[11]=(b&^c&^d&^e)+(^a&^b&^c&e)+(^b&^c&d&e);
  assign s[12]=(a&b&e+a&c&d+a&c&e);
  assign s[13]=(^a&c&d&e)+(^a&^b&c&^e)+(a&^c&d&^e)+(b&^c&d&^e)+(^a&^b&^d&^e);
endmodule

module alphabet_decoder(input [4:0] a, output [31:0] s);
  always @(a)
    case(a)
        5'b00000: s = segment_equations(); // A
        5'b00001: s = segment_equations(); // B
        5'b00010: s = segment_equations(); // C
        5'b00011: s = segment_equations(); // D
        5'b00100: s = segment_equations(); // E
        5'b00101: s = segment_equations(); // F
        5'b00110: s = segment_equations(); // G
        5'b00111: s = segment_equations(); // H
        5'b01000: s = segment_equations(); // I
        5'b01001: s = segment_equations(); // J
        5'b01010: s = segment_equations(); // K
        5'b01011: s = segment_equations(); // L
        5'b01100: s = segment_equations(); // M
        5'b01101: s = segment_equations(); // N
        5'b01110: s = segment_equations(); // O
        5'b01111: s = segment_equations(); // P
        5'b10000: s = segment_equations(); // Q
        5'b10001: s = segment_equations(); // R
        5'b10010: s = segment_equations(); // S
        5'b10011: s = segment_equations(); // T
        5'b10100: s = segment_equations(); // U
        5'b10101: s = segment_equations(); // V
        5'b10110: s = segment_equations(); // W
        5'b10111: s = segment_equations(); // X
        5'b11000: s = segment_equations(); // Y
        5'b11001: s = segment_equations(); // Z
      default: s = 32'b0; // Default case
    endcase
endmodule
