module silly (a, b, c, y, cout);
   
  input logic a;
  input logic b;
  input logic c;

  output logic sum;
  output logic cout;

  assign sum = a^b^c;
  assign cout = a&b|a&c|b&c;
   
endmodule
