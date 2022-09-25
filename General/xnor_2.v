module xnor_2
  (input  a,
   input  b,
   output c);
  wire n1_o;
  assign c = n1_o;
  /* General/xnor_2.vhd:37:16  */
  assign n1_o = ~(a ^ b);
endmodule

