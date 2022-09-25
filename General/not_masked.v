module not_masked
  (input  [1:0] a,
   output [1:0] b);
  wire n1_o;
  wire n2_o;
  wire n3_o;
  wire [1:0] n4_o;
  assign b = n4_o;
  /* General/not_masked.vhd:44:81  */
  assign n1_o = a[0];
  /* General/not_masked.vhd:44:76  */
  assign n2_o = ~n1_o;
  /* General/not_masked.vhd:45:40  */
  assign n3_o = a[1];
  assign n4_o = {n3_o, n2_o};
endmodule

