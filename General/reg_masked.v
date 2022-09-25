module reg_masked
  (input  clk,
   input  [1:0] D,
   output [1:0] Q);
  wire gen_o_n1_s_reg_Q;
  wire n1_o;
  wire gen_o_n2_s_reg_Q;
  wire n3_o;
  wire [1:0] n5_o;
  assign Q = n5_o;
  /* General/reg_masked.vhd:54:17  */
  my_register gen_o_n1_s_reg (
    .clk(clk),
    .D(n1_o),
    .Q(gen_o_n1_s_reg_Q));
  /* General/reg_masked.vhd:54:64  */
  assign n1_o = D[0];
  /* General/reg_masked.vhd:54:17  */
  my_register gen_o_n2_s_reg (
    .clk(clk),
    .D(n3_o),
    .Q(gen_o_n2_s_reg_Q));
  /* General/reg_masked.vhd:54:64  */
  assign n3_o = D[1];
  assign n5_o = {gen_o_n2_s_reg_Q, gen_o_n1_s_reg_Q};
endmodule

