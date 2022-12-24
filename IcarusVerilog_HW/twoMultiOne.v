module twoMultiOne(input X, Y, Z, output Out);
  assign Out = Z ? Y : X;
endmodule