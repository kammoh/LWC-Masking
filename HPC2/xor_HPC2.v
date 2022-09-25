module xor_HPC2
  (input  [2:0] a,
   input  [2:0] b,
   output [2:0] c);
  wire gen_o_n1_ins_c;
  wire n1_o;
  wire n2_o;
  wire gen_o_n2_ins_c;
  wire n4_o;
  wire n5_o;
  wire gen_o_n3_ins_c;
  wire n7_o;
  wire n8_o;
  wire [2:0] n10_o;
  assign c = n10_o;
  /* HPC2/xor_HPC2.vhd:53:17  */
  xor_2 gen_o_n1_ins (
    .a(n1_o),
    .b(n2_o),
    .c(gen_o_n1_ins_c));
  /* HPC2/xor_HPC2.vhd:53:44  */
  assign n1_o = a[0];
  /* HPC2/xor_HPC2.vhd:53:55  */
  assign n2_o = b[0];
  /* HPC2/xor_HPC2.vhd:53:17  */
  xor_2 gen_o_n2_ins (
    .a(n4_o),
    .b(n5_o),
    .c(gen_o_n2_ins_c));
  /* HPC2/xor_HPC2.vhd:53:44  */
  assign n4_o = a[1];
  /* HPC2/xor_HPC2.vhd:53:55  */
  assign n5_o = b[1];
  /* HPC2/xor_HPC2.vhd:53:17  */
  xor_2 gen_o_n3_ins (
    .a(n7_o),
    .b(n8_o),
    .c(gen_o_n3_ins_c));
  /* HPC2/xor_HPC2.vhd:53:44  */
  assign n7_o = a[2];
  /* HPC2/xor_HPC2.vhd:53:55  */
  assign n8_o = b[2];
  assign n10_o = {gen_o_n3_ins_c, gen_o_n2_ins_c, gen_o_n1_ins_c};
endmodule

