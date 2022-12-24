module f_nor (B, A, Q);
  // Input variable B, A
  input B, A;
  // Output variable Q
  output Q;
  assign Q = ~(B | A);
endmodule