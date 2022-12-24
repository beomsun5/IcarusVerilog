//`timescale 1ns/10ps
//`include "full_subtractor.v"

module full_subtractor_tb;
  reg X, Y, Z;
  wire D, B;
  full_subtractor uut ( .X(X), .Y(Y), .Z(Z), .D(D), .B(B));

  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);
    $display("time\tX\tY\tZ\tD\tB");
    $monitor("%2d\t%b\t%b\t%b\t%b\t%b", $time, X, Y, Z, D, B);
    X = 0; Y = 0; Z = 0;
    #10 Z = 1;
    #10 Y = 1; Z = 0;
    #10 Z = 1;
    #10 X = 1; Y = 0; Z = 0;
    #10 Z = 1;
    #10 Y = 1; Z = 0;
    #10 Z = 1;
    #10 $finish;
  end
endmodule