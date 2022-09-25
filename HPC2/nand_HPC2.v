module nand_HPC2
  (input  [2:0] a,
   input  [2:0] b,
   input  [2:0] r,
   input  clk,
   output [2:0] c);
  reg [8:0] r_m;
  reg [8:0] s_in;
  reg [8:0] s_out;
  reg [8:0] p_0_in;
  reg [8:0] p_1_in;
  reg [8:0] p_0_out;
  reg [8:0] p_1_out;
  reg [8:0] z;
  reg [8:0] p_0_pipe_out;
  reg [2:0] mul;
  reg [2:0] a_reg;
  reg [2:0] mul_s1_out;
  reg [2:0] mul_s2_out;
  reg [11:0] z_sum;
  wire n19_o;
  wire n20_o;
  wire n21_o;
  wire n22_o;
  wire n23_o;
  wire n24_o;
  wire n27_o;
  wire n28_o;
  wire n29_o;
  wire n30_o;
  wire gen_i_n1_mul_pipe_s1_q;
  wire n31_o;
  wire gen_i_n1_mul_pipe_s2_q;
  wire n33_o;
  wire gen_i_n1_a_i_q;
  wire n35_o;
  wire n37_o;
  wire n38_o;
  wire n39_o;
  wire n40_o;
  wire n41_o;
  wire n42_o;
  wire n43_o;
  wire n44_o;
  wire n45_o;
  wire n46_o;
  wire n47_o;
  wire n48_o;
  wire n49_o;
  wire gen_i_n1_gen_j_n2_gen_i_neq_j_s_reg_q;
  wire n50_o;
  wire gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_reg_q;
  wire n52_o;
  wire gen_i_n1_gen_j_n2_gen_i_neq_j_p_1_reg_q;
  wire n54_o;
  wire gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_pipe_q;
  wire n56_o;
  wire n58_o;
  wire n59_o;
  wire n60_o;
  wire n61_o;
  wire n62_o;
  wire n63_o;
  wire n64_o;
  wire n65_o;
  wire n66_o;
  wire n67_o;
  wire n68_o;
  wire n69_o;
  wire n70_o;
  wire gen_i_n1_gen_j_n3_gen_i_neq_j_s_reg_q;
  wire n71_o;
  wire gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_reg_q;
  wire n73_o;
  wire gen_i_n1_gen_j_n3_gen_i_neq_j_p_1_reg_q;
  wire n75_o;
  wire gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_pipe_q;
  wire n77_o;
  wire n79_o;
  wire n80_o;
  wire n81_o;
  wire n82_o;
  wire gen_i_n2_mul_pipe_s1_q;
  wire n83_o;
  wire gen_i_n2_mul_pipe_s2_q;
  wire n85_o;
  wire gen_i_n2_a_i_q;
  wire n87_o;
  wire n89_o;
  wire n90_o;
  wire n91_o;
  wire n92_o;
  wire n93_o;
  wire n94_o;
  wire n95_o;
  wire n96_o;
  wire n97_o;
  wire n98_o;
  wire n99_o;
  wire n100_o;
  wire n101_o;
  wire gen_i_n2_gen_j_n1_gen_i_neq_j_s_reg_q;
  wire n102_o;
  wire gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_reg_q;
  wire n104_o;
  wire gen_i_n2_gen_j_n1_gen_i_neq_j_p_1_reg_q;
  wire n106_o;
  wire gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_pipe_q;
  wire n108_o;
  wire n110_o;
  wire n111_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire n118_o;
  wire n119_o;
  wire n120_o;
  wire n121_o;
  wire n122_o;
  wire gen_i_n2_gen_j_n3_gen_i_neq_j_s_reg_q;
  wire n123_o;
  wire gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_reg_q;
  wire n125_o;
  wire gen_i_n2_gen_j_n3_gen_i_neq_j_p_1_reg_q;
  wire n127_o;
  wire gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_pipe_q;
  wire n129_o;
  wire n131_o;
  wire n132_o;
  wire n133_o;
  wire n134_o;
  wire gen_i_n3_mul_pipe_s1_q;
  wire n135_o;
  wire gen_i_n3_mul_pipe_s2_q;
  wire n137_o;
  wire gen_i_n3_a_i_q;
  wire n139_o;
  wire n141_o;
  wire n142_o;
  wire n143_o;
  wire n144_o;
  wire n145_o;
  wire n146_o;
  wire n147_o;
  wire n148_o;
  wire n149_o;
  wire n150_o;
  wire n151_o;
  wire n152_o;
  wire n153_o;
  wire gen_i_n3_gen_j_n1_gen_i_neq_j_s_reg_q;
  wire n154_o;
  wire gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_reg_q;
  wire n156_o;
  wire gen_i_n3_gen_j_n1_gen_i_neq_j_p_1_reg_q;
  wire n158_o;
  wire gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_pipe_q;
  wire n160_o;
  wire n162_o;
  wire n163_o;
  wire n164_o;
  wire n165_o;
  wire n166_o;
  wire n167_o;
  wire n168_o;
  wire n169_o;
  wire n170_o;
  wire n171_o;
  wire n172_o;
  wire n173_o;
  wire n174_o;
  wire gen_i_n3_gen_j_n2_gen_i_neq_j_s_reg_q;
  wire n175_o;
  wire gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_reg_q;
  wire n177_o;
  wire gen_i_n3_gen_j_n2_gen_i_neq_j_p_1_reg_q;
  wire n179_o;
  wire gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_pipe_q;
  wire n181_o;
  wire n183_o;
  wire n184_o;
  wire n185_o;
  wire n186_o;
  wire n187_o;
  wire n188_o;
  wire n189_o;
  wire n190_o;
  wire n191_o;
  wire n192_o;
  wire n193_o;
  wire n194_o;
  wire n195_o;
  wire n196_o;
  wire n197_o;
  wire n198_o;
  wire n199_o;
  wire n200_o;
  wire n201_o;
  wire n202_o;
  wire n203_o;
  wire n204_o;
  wire n205_o;
  wire n206_o;
  wire n207_o;
  wire n208_o;
  wire n209_o;
  wire n210_o;
  wire n211_o;
  wire n212_o;
  wire n213_o;
  wire [8:0] n217_o;
  wire [8:0] n221_o;
  wire [8:0] n225_o;
  wire [8:0] n229_o;
  wire [8:0] n233_o;
  wire [8:0] n237_o;
  wire [8:0] n241_o;
  wire [8:0] n242_o;
  wire [8:0] n246_o;
  wire [2:0] n247_o;
  wire [2:0] n248_o;
  wire [2:0] n249_o;
  wire [2:0] n250_o;
  wire [11:0] n254_o;
  wire [2:0] n255_o;
  assign c = n255_o;
  /* HPC2/nand_HPC2.vhd:55:16  */
  always @*
    r_m = n217_o; // (isignal)
  initial
    r_m = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:55:21  */
  always @*
    s_in = n221_o; // (isignal)
  initial
    s_in = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:55:27  */
  always @*
    s_out = n225_o; // (isignal)
  initial
    s_out = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:55:34  */
  always @*
    p_0_in = n229_o; // (isignal)
  initial
    p_0_in = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:55:42  */
  always @*
    p_1_in = n233_o; // (isignal)
  initial
    p_1_in = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:55:50  */
  always @*
    p_0_out = n237_o; // (isignal)
  initial
    p_0_out = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:55:59  */
  always @*
    p_1_out = n241_o; // (isignal)
  initial
    p_1_out = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:55:74  */
  always @*
    z = n242_o; // (isignal)
  initial
    z = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:56:16  */
  always @*
    p_0_pipe_out = n246_o; // (isignal)
  initial
    p_0_pipe_out = 9'b000000000;
  /* HPC2/nand_HPC2.vhd:57:16  */
  always @*
    mul = n247_o; // (isignal)
  initial
    mul = 3'b000;
  /* HPC2/nand_HPC2.vhd:57:20  */
  always @*
    a_reg = n248_o; // (isignal)
  initial
    a_reg = 3'b000;
  /* HPC2/nand_HPC2.vhd:57:27  */
  always @*
    mul_s1_out = n249_o; // (isignal)
  initial
    mul_s1_out = 3'b000;
  /* HPC2/nand_HPC2.vhd:57:39  */
  always @*
    mul_s2_out = n250_o; // (isignal)
  initial
    mul_s2_out = 3'b000;
  /* HPC2/nand_HPC2.vhd:58:16  */
  always @*
    z_sum = n254_o; // (isignal)
  initial
    z_sum = 12'b000000000000;
  /* HPC2/nand_HPC2.vhd:70:49  */
  assign n19_o = r[0];
  /* HPC2/nand_HPC2.vhd:71:49  */
  assign n20_o = r[0];
  /* HPC2/nand_HPC2.vhd:70:49  */
  assign n21_o = r[1];
  /* HPC2/nand_HPC2.vhd:71:49  */
  assign n22_o = r[1];
  /* HPC2/nand_HPC2.vhd:70:49  */
  assign n23_o = r[2];
  /* HPC2/nand_HPC2.vhd:71:49  */
  assign n24_o = r[2];
  /* HPC2/nand_HPC2.vhd:79:28  */
  assign n27_o = a[0];
  /* HPC2/nand_HPC2.vhd:79:37  */
  assign n28_o = b[0];
  /* HPC2/nand_HPC2.vhd:79:32  */
  assign n29_o = n27_o & n28_o;
  /* HPC2/nand_HPC2.vhd:80:38  */
  assign n30_o = mul_s2_out[0];
  /* HPC2/nand_HPC2.vhd:83:17  */
  reg gen_i_n1_mul_pipe_s1 (
    .clk(clk),
    .d(n31_o),
    .q(gen_i_n1_mul_pipe_s1_q));
  /* HPC2/nand_HPC2.vhd:83:65  */
  assign n31_o = mul[0];
  /* HPC2/nand_HPC2.vhd:84:17  */
  reg gen_i_n1_mul_pipe_s2 (
    .clk(clk),
    .d(n33_o),
    .q(gen_i_n1_mul_pipe_s2_q));
  /* HPC2/nand_HPC2.vhd:84:72  */
  assign n33_o = mul_s1_out[0];
  /* HPC2/nand_HPC2.vhd:85:17  */
  reg gen_i_n1_a_i (
    .clk(clk),
    .d(n35_o),
    .q(gen_i_n1_a_i_q));
  /* HPC2/nand_HPC2.vhd:85:54  */
  assign n35_o = a[0];
  /* HPC2/nand_HPC2.vhd:90:48  */
  assign n37_o = b[1];
  /* HPC2/nand_HPC2.vhd:90:62  */
  assign n38_o = r_m[1];
  /* HPC2/nand_HPC2.vhd:90:52  */
  assign n39_o = n37_o ^ n38_o;
  /* HPC2/nand_HPC2.vhd:91:55  */
  assign n40_o = a[0];
  /* HPC2/nand_HPC2.vhd:91:50  */
  assign n41_o = ~n40_o;
  /* HPC2/nand_HPC2.vhd:91:70  */
  assign n42_o = r_m[1];
  /* HPC2/nand_HPC2.vhd:91:60  */
  assign n43_o = n41_o & n42_o;
  /* HPC2/nand_HPC2.vhd:92:57  */
  assign n44_o = s_out[1];
  /* HPC2/nand_HPC2.vhd:92:70  */
  assign n45_o = a_reg[0];
  /* HPC2/nand_HPC2.vhd:92:61  */
  assign n46_o = n44_o & n45_o;
  /* HPC2/nand_HPC2.vhd:93:59  */
  assign n47_o = p_0_pipe_out[1];
  /* HPC2/nand_HPC2.vhd:93:77  */
  assign n48_o = p_1_out[1];
  /* HPC2/nand_HPC2.vhd:93:63  */
  assign n49_o = n47_o ^ n48_o;
  /* HPC2/nand_HPC2.vhd:96:33  */
  reg gen_i_n1_gen_j_n2_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n50_o),
    .q(gen_i_n1_gen_j_n2_gen_i_neq_j_s_reg_q));
  /* HPC2/nand_HPC2.vhd:96:78  */
  assign n50_o = s_in[1];
  /* HPC2/nand_HPC2.vhd:97:33  */
  reg gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n52_o),
    .q(gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_reg_q));
  /* HPC2/nand_HPC2.vhd:97:82  */
  assign n52_o = p_0_in[1];
  /* HPC2/nand_HPC2.vhd:98:33  */
  reg gen_i_n1_gen_j_n2_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n54_o),
    .q(gen_i_n1_gen_j_n2_gen_i_neq_j_p_1_reg_q));
  /* HPC2/nand_HPC2.vhd:98:82  */
  assign n54_o = p_1_in[1];
  /* HPC2/nand_HPC2.vhd:101:33  */
  reg gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n56_o),
    .q(gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/nand_HPC2.vhd:101:85  */
  assign n56_o = p_0_out[1];
  /* HPC2/nand_HPC2.vhd:90:48  */
  assign n58_o = b[2];
  /* HPC2/nand_HPC2.vhd:90:62  */
  assign n59_o = r_m[2];
  /* HPC2/nand_HPC2.vhd:90:52  */
  assign n60_o = n58_o ^ n59_o;
  /* HPC2/nand_HPC2.vhd:91:55  */
  assign n61_o = a[0];
  /* HPC2/nand_HPC2.vhd:91:50  */
  assign n62_o = ~n61_o;
  /* HPC2/nand_HPC2.vhd:91:70  */
  assign n63_o = r_m[2];
  /* HPC2/nand_HPC2.vhd:91:60  */
  assign n64_o = n62_o & n63_o;
  /* HPC2/nand_HPC2.vhd:92:57  */
  assign n65_o = s_out[2];
  /* HPC2/nand_HPC2.vhd:92:70  */
  assign n66_o = a_reg[0];
  /* HPC2/nand_HPC2.vhd:92:61  */
  assign n67_o = n65_o & n66_o;
  /* HPC2/nand_HPC2.vhd:93:59  */
  assign n68_o = p_0_pipe_out[2];
  /* HPC2/nand_HPC2.vhd:93:77  */
  assign n69_o = p_1_out[2];
  /* HPC2/nand_HPC2.vhd:93:63  */
  assign n70_o = n68_o ^ n69_o;
  /* HPC2/nand_HPC2.vhd:96:33  */
  reg gen_i_n1_gen_j_n3_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n71_o),
    .q(gen_i_n1_gen_j_n3_gen_i_neq_j_s_reg_q));
  /* HPC2/nand_HPC2.vhd:96:78  */
  assign n71_o = s_in[2];
  /* HPC2/nand_HPC2.vhd:97:33  */
  reg gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n73_o),
    .q(gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_reg_q));
  /* HPC2/nand_HPC2.vhd:97:82  */
  assign n73_o = p_0_in[2];
  /* HPC2/nand_HPC2.vhd:98:33  */
  reg gen_i_n1_gen_j_n3_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n75_o),
    .q(gen_i_n1_gen_j_n3_gen_i_neq_j_p_1_reg_q));
  /* HPC2/nand_HPC2.vhd:98:82  */
  assign n75_o = p_1_in[2];
  /* HPC2/nand_HPC2.vhd:101:33  */
  reg gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n77_o),
    .q(gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/nand_HPC2.vhd:101:85  */
  assign n77_o = p_0_out[2];
  /* HPC2/nand_HPC2.vhd:79:28  */
  assign n79_o = a[1];
  /* HPC2/nand_HPC2.vhd:79:37  */
  assign n80_o = b[1];
  /* HPC2/nand_HPC2.vhd:79:32  */
  assign n81_o = n79_o & n80_o;
  /* HPC2/nand_HPC2.vhd:80:38  */
  assign n82_o = mul_s2_out[1];
  /* HPC2/nand_HPC2.vhd:83:17  */
  reg gen_i_n2_mul_pipe_s1 (
    .clk(clk),
    .d(n83_o),
    .q(gen_i_n2_mul_pipe_s1_q));
  /* HPC2/nand_HPC2.vhd:83:65  */
  assign n83_o = mul[1];
  /* HPC2/nand_HPC2.vhd:84:17  */
  reg gen_i_n2_mul_pipe_s2 (
    .clk(clk),
    .d(n85_o),
    .q(gen_i_n2_mul_pipe_s2_q));
  /* HPC2/nand_HPC2.vhd:84:72  */
  assign n85_o = mul_s1_out[1];
  /* HPC2/nand_HPC2.vhd:85:17  */
  reg gen_i_n2_a_i (
    .clk(clk),
    .d(n87_o),
    .q(gen_i_n2_a_i_q));
  /* HPC2/nand_HPC2.vhd:85:54  */
  assign n87_o = a[1];
  /* HPC2/nand_HPC2.vhd:90:48  */
  assign n89_o = b[0];
  /* HPC2/nand_HPC2.vhd:90:62  */
  assign n90_o = r_m[3];
  /* HPC2/nand_HPC2.vhd:90:52  */
  assign n91_o = n89_o ^ n90_o;
  /* HPC2/nand_HPC2.vhd:91:55  */
  assign n92_o = a[1];
  /* HPC2/nand_HPC2.vhd:91:50  */
  assign n93_o = ~n92_o;
  /* HPC2/nand_HPC2.vhd:91:70  */
  assign n94_o = r_m[3];
  /* HPC2/nand_HPC2.vhd:91:60  */
  assign n95_o = n93_o & n94_o;
  /* HPC2/nand_HPC2.vhd:92:57  */
  assign n96_o = s_out[3];
  /* HPC2/nand_HPC2.vhd:92:70  */
  assign n97_o = a_reg[1];
  /* HPC2/nand_HPC2.vhd:92:61  */
  assign n98_o = n96_o & n97_o;
  /* HPC2/nand_HPC2.vhd:93:59  */
  assign n99_o = p_0_pipe_out[3];
  /* HPC2/nand_HPC2.vhd:93:77  */
  assign n100_o = p_1_out[3];
  /* HPC2/nand_HPC2.vhd:93:63  */
  assign n101_o = n99_o ^ n100_o;
  /* HPC2/nand_HPC2.vhd:96:33  */
  reg gen_i_n2_gen_j_n1_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n102_o),
    .q(gen_i_n2_gen_j_n1_gen_i_neq_j_s_reg_q));
  /* HPC2/nand_HPC2.vhd:96:78  */
  assign n102_o = s_in[3];
  /* HPC2/nand_HPC2.vhd:97:33  */
  reg gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n104_o),
    .q(gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_reg_q));
  /* HPC2/nand_HPC2.vhd:97:82  */
  assign n104_o = p_0_in[3];
  /* HPC2/nand_HPC2.vhd:98:33  */
  reg gen_i_n2_gen_j_n1_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n106_o),
    .q(gen_i_n2_gen_j_n1_gen_i_neq_j_p_1_reg_q));
  /* HPC2/nand_HPC2.vhd:98:82  */
  assign n106_o = p_1_in[3];
  /* HPC2/nand_HPC2.vhd:101:33  */
  reg gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n108_o),
    .q(gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/nand_HPC2.vhd:101:85  */
  assign n108_o = p_0_out[3];
  /* HPC2/nand_HPC2.vhd:90:48  */
  assign n110_o = b[2];
  /* HPC2/nand_HPC2.vhd:90:62  */
  assign n111_o = r_m[5];
  /* HPC2/nand_HPC2.vhd:90:52  */
  assign n112_o = n110_o ^ n111_o;
  /* HPC2/nand_HPC2.vhd:91:55  */
  assign n113_o = a[1];
  /* HPC2/nand_HPC2.vhd:91:50  */
  assign n114_o = ~n113_o;
  /* HPC2/nand_HPC2.vhd:91:70  */
  assign n115_o = r_m[5];
  /* HPC2/nand_HPC2.vhd:91:60  */
  assign n116_o = n114_o & n115_o;
  /* HPC2/nand_HPC2.vhd:92:57  */
  assign n117_o = s_out[5];
  /* HPC2/nand_HPC2.vhd:92:70  */
  assign n118_o = a_reg[1];
  /* HPC2/nand_HPC2.vhd:92:61  */
  assign n119_o = n117_o & n118_o;
  /* HPC2/nand_HPC2.vhd:93:59  */
  assign n120_o = p_0_pipe_out[5];
  /* HPC2/nand_HPC2.vhd:93:77  */
  assign n121_o = p_1_out[5];
  /* HPC2/nand_HPC2.vhd:93:63  */
  assign n122_o = n120_o ^ n121_o;
  /* HPC2/nand_HPC2.vhd:96:33  */
  reg gen_i_n2_gen_j_n3_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n123_o),
    .q(gen_i_n2_gen_j_n3_gen_i_neq_j_s_reg_q));
  /* HPC2/nand_HPC2.vhd:96:78  */
  assign n123_o = s_in[5];
  /* HPC2/nand_HPC2.vhd:97:33  */
  reg gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n125_o),
    .q(gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_reg_q));
  /* HPC2/nand_HPC2.vhd:97:82  */
  assign n125_o = p_0_in[5];
  /* HPC2/nand_HPC2.vhd:98:33  */
  reg gen_i_n2_gen_j_n3_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n127_o),
    .q(gen_i_n2_gen_j_n3_gen_i_neq_j_p_1_reg_q));
  /* HPC2/nand_HPC2.vhd:98:82  */
  assign n127_o = p_1_in[5];
  /* HPC2/nand_HPC2.vhd:101:33  */
  reg gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n129_o),
    .q(gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/nand_HPC2.vhd:101:85  */
  assign n129_o = p_0_out[5];
  /* HPC2/nand_HPC2.vhd:79:28  */
  assign n131_o = a[2];
  /* HPC2/nand_HPC2.vhd:79:37  */
  assign n132_o = b[2];
  /* HPC2/nand_HPC2.vhd:79:32  */
  assign n133_o = n131_o & n132_o;
  /* HPC2/nand_HPC2.vhd:80:38  */
  assign n134_o = mul_s2_out[2];
  /* HPC2/nand_HPC2.vhd:83:17  */
  reg gen_i_n3_mul_pipe_s1 (
    .clk(clk),
    .d(n135_o),
    .q(gen_i_n3_mul_pipe_s1_q));
  /* HPC2/nand_HPC2.vhd:83:65  */
  assign n135_o = mul[2];
  /* HPC2/nand_HPC2.vhd:84:17  */
  reg gen_i_n3_mul_pipe_s2 (
    .clk(clk),
    .d(n137_o),
    .q(gen_i_n3_mul_pipe_s2_q));
  /* HPC2/nand_HPC2.vhd:84:72  */
  assign n137_o = mul_s1_out[2];
  /* HPC2/nand_HPC2.vhd:85:17  */
  reg gen_i_n3_a_i (
    .clk(clk),
    .d(n139_o),
    .q(gen_i_n3_a_i_q));
  /* HPC2/nand_HPC2.vhd:85:54  */
  assign n139_o = a[2];
  /* HPC2/nand_HPC2.vhd:90:48  */
  assign n141_o = b[0];
  /* HPC2/nand_HPC2.vhd:90:62  */
  assign n142_o = r_m[6];
  /* HPC2/nand_HPC2.vhd:90:52  */
  assign n143_o = n141_o ^ n142_o;
  /* HPC2/nand_HPC2.vhd:91:55  */
  assign n144_o = a[2];
  /* HPC2/nand_HPC2.vhd:91:50  */
  assign n145_o = ~n144_o;
  /* HPC2/nand_HPC2.vhd:91:70  */
  assign n146_o = r_m[6];
  /* HPC2/nand_HPC2.vhd:91:60  */
  assign n147_o = n145_o & n146_o;
  /* HPC2/nand_HPC2.vhd:92:57  */
  assign n148_o = s_out[6];
  /* HPC2/nand_HPC2.vhd:92:70  */
  assign n149_o = a_reg[2];
  /* HPC2/nand_HPC2.vhd:92:61  */
  assign n150_o = n148_o & n149_o;
  /* HPC2/nand_HPC2.vhd:93:59  */
  assign n151_o = p_0_pipe_out[6];
  /* HPC2/nand_HPC2.vhd:93:77  */
  assign n152_o = p_1_out[6];
  /* HPC2/nand_HPC2.vhd:93:63  */
  assign n153_o = n151_o ^ n152_o;
  /* HPC2/nand_HPC2.vhd:96:33  */
  reg gen_i_n3_gen_j_n1_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n154_o),
    .q(gen_i_n3_gen_j_n1_gen_i_neq_j_s_reg_q));
  /* HPC2/nand_HPC2.vhd:96:78  */
  assign n154_o = s_in[6];
  /* HPC2/nand_HPC2.vhd:97:33  */
  reg gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n156_o),
    .q(gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_reg_q));
  /* HPC2/nand_HPC2.vhd:97:82  */
  assign n156_o = p_0_in[6];
  /* HPC2/nand_HPC2.vhd:98:33  */
  reg gen_i_n3_gen_j_n1_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n158_o),
    .q(gen_i_n3_gen_j_n1_gen_i_neq_j_p_1_reg_q));
  /* HPC2/nand_HPC2.vhd:98:82  */
  assign n158_o = p_1_in[6];
  /* HPC2/nand_HPC2.vhd:101:33  */
  reg gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n160_o),
    .q(gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/nand_HPC2.vhd:101:85  */
  assign n160_o = p_0_out[6];
  /* HPC2/nand_HPC2.vhd:90:48  */
  assign n162_o = b[1];
  /* HPC2/nand_HPC2.vhd:90:62  */
  assign n163_o = r_m[7];
  /* HPC2/nand_HPC2.vhd:90:52  */
  assign n164_o = n162_o ^ n163_o;
  /* HPC2/nand_HPC2.vhd:91:55  */
  assign n165_o = a[2];
  /* HPC2/nand_HPC2.vhd:91:50  */
  assign n166_o = ~n165_o;
  /* HPC2/nand_HPC2.vhd:91:70  */
  assign n167_o = r_m[7];
  /* HPC2/nand_HPC2.vhd:91:60  */
  assign n168_o = n166_o & n167_o;
  /* HPC2/nand_HPC2.vhd:92:57  */
  assign n169_o = s_out[7];
  /* HPC2/nand_HPC2.vhd:92:70  */
  assign n170_o = a_reg[2];
  /* HPC2/nand_HPC2.vhd:92:61  */
  assign n171_o = n169_o & n170_o;
  /* HPC2/nand_HPC2.vhd:93:59  */
  assign n172_o = p_0_pipe_out[7];
  /* HPC2/nand_HPC2.vhd:93:77  */
  assign n173_o = p_1_out[7];
  /* HPC2/nand_HPC2.vhd:93:63  */
  assign n174_o = n172_o ^ n173_o;
  /* HPC2/nand_HPC2.vhd:96:33  */
  reg gen_i_n3_gen_j_n2_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n175_o),
    .q(gen_i_n3_gen_j_n2_gen_i_neq_j_s_reg_q));
  /* HPC2/nand_HPC2.vhd:96:78  */
  assign n175_o = s_in[7];
  /* HPC2/nand_HPC2.vhd:97:33  */
  reg gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n177_o),
    .q(gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_reg_q));
  /* HPC2/nand_HPC2.vhd:97:82  */
  assign n177_o = p_0_in[7];
  /* HPC2/nand_HPC2.vhd:98:33  */
  reg gen_i_n3_gen_j_n2_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n179_o),
    .q(gen_i_n3_gen_j_n2_gen_i_neq_j_p_1_reg_q));
  /* HPC2/nand_HPC2.vhd:98:82  */
  assign n179_o = p_1_in[7];
  /* HPC2/nand_HPC2.vhd:101:33  */
  reg gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n181_o),
    .q(gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/nand_HPC2.vhd:101:85  */
  assign n181_o = p_0_out[7];
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n183_o = z_sum[0];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n184_o = z[0];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n185_o = n183_o ^ n184_o;
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n186_o = z_sum[1];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n187_o = z[1];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n188_o = n186_o ^ n187_o;
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n189_o = z_sum[2];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n190_o = z[2];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n191_o = n189_o ^ n190_o;
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n192_o = z_sum[4];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n193_o = z[3];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n194_o = n192_o ^ n193_o;
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n195_o = z_sum[5];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n196_o = z[4];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n197_o = n195_o ^ n196_o;
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n198_o = z_sum[6];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n199_o = z[5];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n200_o = n198_o ^ n199_o;
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n201_o = z_sum[8];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n202_o = z[6];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n203_o = n201_o ^ n202_o;
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n204_o = z_sum[9];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n205_o = z[7];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n206_o = n204_o ^ n205_o;
  /* HPC2/nand_HPC2.vhd:111:50  */
  assign n207_o = z_sum[10];
  /* HPC2/nand_HPC2.vhd:111:62  */
  assign n208_o = z[8];
  /* HPC2/nand_HPC2.vhd:111:54  */
  assign n209_o = n207_o ^ n208_o;
  /* HPC2/nand_HPC2.vhd:117:29  */
  assign n210_o = z_sum[3];
  /* HPC2/nand_HPC2.vhd:117:17  */
  assign n211_o = ~n210_o;
  /* HPC2/nand_HPC2.vhd:120:33  */
  assign n212_o = z_sum[7];
  /* HPC2/nand_HPC2.vhd:120:33  */
  assign n213_o = z_sum[11];
  assign n217_o = {1'bZ, n24_o, n22_o, n23_o, 1'bZ, n20_o, n21_o, n19_o, 1'bZ};
  assign n221_o = {1'bZ, n164_o, n143_o, n112_o, 1'bZ, n91_o, n60_o, n39_o, 1'bZ};
  assign n225_o = {1'bZ, gen_i_n3_gen_j_n2_gen_i_neq_j_s_reg_q, gen_i_n3_gen_j_n1_gen_i_neq_j_s_reg_q, gen_i_n2_gen_j_n3_gen_i_neq_j_s_reg_q, 1'bZ, gen_i_n2_gen_j_n1_gen_i_neq_j_s_reg_q, gen_i_n1_gen_j_n3_gen_i_neq_j_s_reg_q, gen_i_n1_gen_j_n2_gen_i_neq_j_s_reg_q, 1'bZ};
  assign n229_o = {1'bZ, n168_o, n147_o, n116_o, 1'bZ, n95_o, n64_o, n43_o, 1'bZ};
  assign n233_o = {1'bZ, n171_o, n150_o, n119_o, 1'bZ, n98_o, n67_o, n46_o, 1'bZ};
  assign n237_o = {1'bZ, gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_reg_q, gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_reg_q, gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_reg_q, 1'bZ, gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_reg_q, gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_reg_q, gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_reg_q, 1'bZ};
  assign n241_o = {1'bZ, gen_i_n3_gen_j_n2_gen_i_neq_j_p_1_reg_q, gen_i_n3_gen_j_n1_gen_i_neq_j_p_1_reg_q, gen_i_n2_gen_j_n3_gen_i_neq_j_p_1_reg_q, 1'bZ, gen_i_n2_gen_j_n1_gen_i_neq_j_p_1_reg_q, gen_i_n1_gen_j_n3_gen_i_neq_j_p_1_reg_q, gen_i_n1_gen_j_n2_gen_i_neq_j_p_1_reg_q, 1'bZ};
  assign n242_o = {n134_o, n174_o, n153_o, n122_o, n82_o, n101_o, n70_o, n49_o, n30_o};
  assign n246_o = {1'bZ, gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_pipe_q, gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_pipe_q, gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_pipe_q, 1'bZ, gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_pipe_q, gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_pipe_q, gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_pipe_q, 1'bZ};
  assign n247_o = {n133_o, n81_o, n29_o};
  assign n248_o = {gen_i_n3_a_i_q, gen_i_n2_a_i_q, gen_i_n1_a_i_q};
  assign n249_o = {gen_i_n3_mul_pipe_s1_q, gen_i_n2_mul_pipe_s1_q, gen_i_n1_mul_pipe_s1_q};
  assign n250_o = {gen_i_n3_mul_pipe_s2_q, gen_i_n2_mul_pipe_s2_q, gen_i_n1_mul_pipe_s2_q};
  assign n254_o = {n209_o, n206_o, n203_o, 1'bZ, n200_o, n197_o, n194_o, 1'bZ, n191_o, n188_o, n185_o, 1'bZ};
  assign n255_o = {n213_o, n212_o, n211_o};
endmodule

