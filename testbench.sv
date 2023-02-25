// Code your testbench here
// or browse Examples
module full_adder_tb;
  logic a;
  logic b;
  logic cin;
  logic sum;
  logic carry;
  
  logic sum_e;
  logic carry_e;
  
  full_adder full_adder_inst(.*);
  
  assign {carry_e, sum_e} = a + b + cin;
  
  function void compare(input logic a, input logic b, input logic cin, input logic sum, input logic sum_e, input logic carry, input logic carry_e);
    if ((sum == sum_e) && (carry == carry_e)) begin
      $display("print a is %0h b is %0h c is %0h sum is %0h carry is %0h", a, b, cin, sum, carry);
    end else begin
      $display("print a is %0h b is %0h c is %0h", a, b, cin);
      $display("print sum is %0h sum_e is %0h carry is %0h carry_e is %0h", sum, sum_e, carry, carry_e);
    end
  endfunction
      
  initial begin
    a = 0; b = 0; cin = 0;
    #1;
    repeat (50) begin
      {a, b, cin} = $random();
      compare(a, b, cin, sum, sum_e, carry , carry_e);
      #1;
    end   
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule


