module segment_equations(a, b, c, d, e, s);
  input a, b, c, d, e;
  output [0:13] s;
  
  assign s[0] = (~b&~e) | (~a&~e) | (~a&c) | (b&d) | (a&~b&~d);
  assign s[1] = (~b&~c)|(~a&~b&~e)|(~a&~b&~d)|(a&b&e)|(b&c&d);
  assign s[2] = (b&c)|(~b&~c&~d)|(a&c&~e)|(~a&b&~d&e)|(~a&~b&d&e);
  assign s[3] = (b&c&~e) | (c&d&~e) | (a&~b&~e) | (~a&b&~d&e) | (~a&~b&d&e) | (~a&~b&~c&~d);
  assign s[4] = (~c&~d&e)|(b&c&d)|(~a&~c&e)|(a&~b&~c&~e)|(~b&c&~d&~e)|(~a&b&~c&~d)|(~a&~b&d&~e);
  assign s[5] = (c&~e)|(c&~d)|(~a&d&~e)|(~b&~d&~e)|(~a&~b&c)|(~a&b&~c&e);
  assign s[6] = (a&b&~e)|(b&c&~d)|(a&c&d&e);
  assign s[7] = (~a&~b&~c&e)|(~b&~c&d&e)|(~a&b&~c&~d&~e);
  assign s[8] = (a&b)|(a&c&e)|(b&c&~d&~e)|(~b&~c&d&~e);
  assign s[9] = (~a&c&d&e)|(~a&~b&c&~e)|(a&~c&d&~e)|(~a&~b&~c&~d);
  assign s[10]= (a&c&d)|(a&~b&~c&~d)|(b&~c&d&~e)|(b&c&~d&e);
  assign s[11]= (b&~c&~d&~e)|(~a&~b&~c&e)|(~b&~c&d&e);
  assign s[12]= (a&b&e)|(a&c&d)|(a&c&e);
  assign s[13]= (~a&c&d&e)|(~a&~b&c&e)|(a&~c&d&~e)|(b&~c&d&~e)|(~a&~b&~d&~e);
endmodule

module alphadecode(a, b, c, d, e, s);
  input a, b, c, d, e;
  output [0:13] s;
  
  segment_equations seg_eq(a, b, c, d, e, s);
endmodule
