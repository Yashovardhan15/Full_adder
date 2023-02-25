// Code your design here
// Code your design here
module full_adder(
  input logic a,
  input logic b,
  input logic cin,
  output logic sum,
  output logic carry
);
  /*
  a b cin sum carry
  0 0 0   0   0
  0 0 1   1   0
  0 1 0	  1	  0
  0 1 1   0   1
  1 0 0   1   0
  1 0 1   0   1
  1 1 0   0   1
  1 1 1   1   1
  a_bar(b&&)c + a(b||c)
  */
  assign sum = a^b^cin;
  assign carry = (a&&b) || (b&&cin) || (a&&cin);
endmodule  