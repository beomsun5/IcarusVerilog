//`include "twoMultiOne.v"

module twoMultiOne_tb;
  reg X, Y, Z;
  wire Out;

  twoMultiOne uut ( .X(X), .Y(Y), .Z(Z), .Out(Out));

  initial begin
    $dumpfile("twoMultiOne.vcd");
    $dumpvars(0, twoMultiOne_tb);
    $display("time\tX\tY\tZ\tOut");
    $monitor("%2d\t%b\t%b\t%b\t%b", $time, X, Y, Z, Out);
    X = 1'b0; Y = 1'b0; Z = 1'b0;
    #10 X = 1'b1;
    #10 Z = 1'b1;
    #10 Y = 1'b1;
    #10 $finish;
  end
endmodule