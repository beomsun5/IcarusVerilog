//`timescale 1ns/10ps
//`include "half_adder.v"

module half_adder_tb;
  reg In1, In2;
  wire Carry, Sum;
  // localparam period = 20

  half_adder uut ( .In1(In1), .In2(In2), .Carry(Carry), .Sum(Sum));

  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);
    $display("time\tIn1\tIn2\tSum\tCarry");
    $monitor("%2d\t%b\t%b\t%b\t%b", $time, In1, In2, Sum, Carry);
    In1 = 0; In2 = 0;
    #10 In1 = 0; In2 = 1;
    #10 In1 = 1; In2 = 0;
    #10 In1 = 1; In2 = 1;
    #10 $finish;
  end
endmodule