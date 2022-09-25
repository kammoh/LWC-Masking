module or_HPC2
  (input  [2:0] a,
   input  [2:0] b,
   input  [2:0] r,
   input  clk,
   output [2:0] c);
  wire [2:0] na;
  wire [2:0] nb;
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
  wire n16_o;
  wire n17_o;
  wire [1:0] n18_o;
  wire n19_o;
  wire n20_o;
  wire [1:0] n21_o;
  wire n25_o;
  wire n26_o;
  wire n27_o;
  wire n28_o;
  wire n29_o;
  wire n30_o;
  wire n33_o;
  wire n34_o;
  wire n35_o;
  wire n36_o;
  wire gen_i_n1_mul_pipe_s1_q;
  wire n37_o;
  wire gen_i_n1_mul_pipe_s2_q;
  wire n39_o;
  wire gen_i_n1_a_i_q;
  wire n41_o;
  wire n43_o;
  wire n44_o;
  wire n45_o;
  wire n46_o;
  wire n47_o;
  wire n48_o;
  wire n49_o;
  wire n50_o;
  wire n51_o;
  wire n52_o;
  wire n53_o;
  wire n54_o;
  wire n55_o;
  wire gen_i_n1_gen_j_n2_gen_i_neq_j_s_reg_q;
  wire n56_o;
  wire gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_reg_q;
  wire n58_o;
  wire gen_i_n1_gen_j_n2_gen_i_neq_j_p_1_reg_q;
  wire n60_o;
  wire gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_pipe_q;
  wire n62_o;
  wire n64_o;
  wire n65_o;
  wire n66_o;
  wire n67_o;
  wire n68_o;
  wire n69_o;
  wire n70_o;
  wire n71_o;
  wire n72_o;
  wire n73_o;
  wire n74_o;
  wire n75_o;
  wire n76_o;
  wire gen_i_n1_gen_j_n3_gen_i_neq_j_s_reg_q;
  wire n77_o;
  wire gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_reg_q;
  wire n79_o;
  wire gen_i_n1_gen_j_n3_gen_i_neq_j_p_1_reg_q;
  wire n81_o;
  wire gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_pipe_q;
  wire n83_o;
  wire n85_o;
  wire n86_o;
  wire n87_o;
  wire n88_o;
  wire gen_i_n2_mul_pipe_s1_q;
  wire n89_o;
  wire gen_i_n2_mul_pipe_s2_q;
  wire n91_o;
  wire gen_i_n2_a_i_q;
  wire n93_o;
  wire n95_o;
  wire n96_o;
  wire n97_o;
  wire n98_o;
  wire n99_o;
  wire n100_o;
  wire n101_o;
  wire n102_o;
  wire n103_o;
  wire n104_o;
  wire n105_o;
  wire n106_o;
  wire n107_o;
  wire gen_i_n2_gen_j_n1_gen_i_neq_j_s_reg_q;
  wire n108_o;
  wire gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_reg_q;
  wire n110_o;
  wire gen_i_n2_gen_j_n1_gen_i_neq_j_p_1_reg_q;
  wire n112_o;
  wire gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_pipe_q;
  wire n114_o;
  wire n116_o;
  wire n117_o;
  wire n118_o;
  wire n119_o;
  wire n120_o;
  wire n121_o;
  wire n122_o;
  wire n123_o;
  wire n124_o;
  wire n125_o;
  wire n126_o;
  wire n127_o;
  wire n128_o;
  wire gen_i_n2_gen_j_n3_gen_i_neq_j_s_reg_q;
  wire n129_o;
  wire gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_reg_q;
  wire n131_o;
  wire gen_i_n2_gen_j_n3_gen_i_neq_j_p_1_reg_q;
  wire n133_o;
  wire gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_pipe_q;
  wire n135_o;
  wire n137_o;
  wire n138_o;
  wire n139_o;
  wire n140_o;
  wire gen_i_n3_mul_pipe_s1_q;
  wire n141_o;
  wire gen_i_n3_mul_pipe_s2_q;
  wire n143_o;
  wire gen_i_n3_a_i_q;
  wire n145_o;
  wire n147_o;
  wire n148_o;
  wire n149_o;
  wire n150_o;
  wire n151_o;
  wire n152_o;
  wire n153_o;
  wire n154_o;
  wire n155_o;
  wire n156_o;
  wire n157_o;
  wire n158_o;
  wire n159_o;
  wire gen_i_n3_gen_j_n1_gen_i_neq_j_s_reg_q;
  wire n160_o;
  wire gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_reg_q;
  wire n162_o;
  wire gen_i_n3_gen_j_n1_gen_i_neq_j_p_1_reg_q;
  wire n164_o;
  wire gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_pipe_q;
  wire n166_o;
  wire n168_o;
  wire n169_o;
  wire n170_o;
  wire n171_o;
  wire n172_o;
  wire n173_o;
  wire n174_o;
  wire n175_o;
  wire n176_o;
  wire n177_o;
  wire n178_o;
  wire n179_o;
  wire n180_o;
  wire gen_i_n3_gen_j_n2_gen_i_neq_j_s_reg_q;
  wire n181_o;
  wire gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_reg_q;
  wire n183_o;
  wire gen_i_n3_gen_j_n2_gen_i_neq_j_p_1_reg_q;
  wire n185_o;
  wire gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_pipe_q;
  wire n187_o;
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
  wire n214_o;
  wire n215_o;
  wire n216_o;
  wire n217_o;
  wire n218_o;
  wire n219_o;
  wire [2:0] n220_o;
  wire [2:0] n221_o;
  wire [8:0] n225_o;
  wire [8:0] n229_o;
  wire [8:0] n233_o;
  wire [8:0] n237_o;
  wire [8:0] n241_o;
  wire [8:0] n245_o;
  wire [8:0] n249_o;
  wire [8:0] n250_o;
  wire [8:0] n254_o;
  wire [2:0] n255_o;
  wire [2:0] n256_o;
  wire [2:0] n257_o;
  wire [2:0] n258_o;
  wire [11:0] n262_o;
  wire [2:0] n263_o;
  assign c = n263_o;
  /* HPC2/or_HPC2.vhd:55:16  */
  assign na = n220_o; // (signal)
  /* HPC2/or_HPC2.vhd:56:16  */
  assign nb = n221_o; // (signal)
  /* HPC2/or_HPC2.vhd:58:16  */
  always @*
    r_m = n225_o; // (isignal)
  initial
    r_m = 9'b000000000;
  /* HPC2/or_HPC2.vhd:58:21  */
  always @*
    s_in = n229_o; // (isignal)
  initial
    s_in = 9'b000000000;
  /* HPC2/or_HPC2.vhd:58:27  */
  always @*
    s_out = n233_o; // (isignal)
  initial
    s_out = 9'b000000000;
  /* HPC2/or_HPC2.vhd:58:34  */
  always @*
    p_0_in = n237_o; // (isignal)
  initial
    p_0_in = 9'b000000000;
  /* HPC2/or_HPC2.vhd:58:42  */
  always @*
    p_1_in = n241_o; // (isignal)
  initial
    p_1_in = 9'b000000000;
  /* HPC2/or_HPC2.vhd:58:50  */
  always @*
    p_0_out = n245_o; // (isignal)
  initial
    p_0_out = 9'b000000000;
  /* HPC2/or_HPC2.vhd:58:59  */
  always @*
    p_1_out = n249_o; // (isignal)
  initial
    p_1_out = 9'b000000000;
  /* HPC2/or_HPC2.vhd:58:74  */
  always @*
    z = n250_o; // (isignal)
  initial
    z = 9'b000000000;
  /* HPC2/or_HPC2.vhd:59:16  */
  always @*
    p_0_pipe_out = n254_o; // (isignal)
  initial
    p_0_pipe_out = 9'b000000000;
  /* HPC2/or_HPC2.vhd:60:16  */
  always @*
    mul = n255_o; // (isignal)
  initial
    mul = 3'b000;
  /* HPC2/or_HPC2.vhd:60:20  */
  always @*
    a_reg = n256_o; // (isignal)
  initial
    a_reg = 3'b000;
  /* HPC2/or_HPC2.vhd:60:27  */
  always @*
    mul_s1_out = n257_o; // (isignal)
  initial
    mul_s1_out = 3'b000;
  /* HPC2/or_HPC2.vhd:60:39  */
  always @*
    mul_s2_out = n258_o; // (isignal)
  initial
    mul_s2_out = 3'b000;
  /* HPC2/or_HPC2.vhd:61:16  */
  always @*
    z_sum = n262_o; // (isignal)
  initial
    z_sum = 12'b000000000000;
  /* HPC2/or_HPC2.vhd:67:81  */
  assign n16_o = a[0];
  /* HPC2/or_HPC2.vhd:67:76  */
  assign n17_o = ~n16_o;
  /* HPC2/or_HPC2.vhd:68:45  */
  assign n18_o = a[2:1];
  /* HPC2/or_HPC2.vhd:70:81  */
  assign n19_o = b[0];
  /* HPC2/or_HPC2.vhd:70:76  */
  assign n20_o = ~n19_o;
  /* HPC2/or_HPC2.vhd:71:45  */
  assign n21_o = b[2:1];
  /* HPC2/or_HPC2.vhd:81:49  */
  assign n25_o = r[0];
  /* HPC2/or_HPC2.vhd:82:49  */
  assign n26_o = r[0];
  /* HPC2/or_HPC2.vhd:81:49  */
  assign n27_o = r[1];
  /* HPC2/or_HPC2.vhd:82:49  */
  assign n28_o = r[1];
  /* HPC2/or_HPC2.vhd:81:49  */
  assign n29_o = r[2];
  /* HPC2/or_HPC2.vhd:82:49  */
  assign n30_o = r[2];
  /* HPC2/or_HPC2.vhd:90:29  */
  assign n33_o = na[0];
  /* HPC2/or_HPC2.vhd:90:39  */
  assign n34_o = nb[0];
  /* HPC2/or_HPC2.vhd:90:33  */
  assign n35_o = n33_o & n34_o;
  /* HPC2/or_HPC2.vhd:91:38  */
  assign n36_o = mul_s2_out[0];
  /* HPC2/or_HPC2.vhd:94:17  */
  my_register gen_i_n1_mul_pipe_s1 (
    .clk(clk),
    .d(n37_o),
    .q(gen_i_n1_mul_pipe_s1_q));
  /* HPC2/or_HPC2.vhd:94:73  */
  assign n37_o = mul[0];
  /* HPC2/or_HPC2.vhd:95:17  */
  my_register gen_i_n1_mul_pipe_s2 (
    .clk(clk),
    .d(n39_o),
    .q(gen_i_n1_mul_pipe_s2_q));
  /* HPC2/or_HPC2.vhd:95:80  */
  assign n39_o = mul_s1_out[0];
  /* HPC2/or_HPC2.vhd:96:17  */
  my_register gen_i_n1_a_i (
    .clk(clk),
    .d(n41_o),
    .q(gen_i_n1_a_i_q));
  /* HPC2/or_HPC2.vhd:96:63  */
  assign n41_o = na[0];
  /* HPC2/or_HPC2.vhd:101:49  */
  assign n43_o = nb[1];
  /* HPC2/or_HPC2.vhd:101:63  */
  assign n44_o = r_m[1];
  /* HPC2/or_HPC2.vhd:101:53  */
  assign n45_o = n43_o ^ n44_o;
  /* HPC2/or_HPC2.vhd:102:56  */
  assign n46_o = na[0];
  /* HPC2/or_HPC2.vhd:102:50  */
  assign n47_o = ~n46_o;
  /* HPC2/or_HPC2.vhd:102:71  */
  assign n48_o = r_m[1];
  /* HPC2/or_HPC2.vhd:102:61  */
  assign n49_o = n47_o & n48_o;
  /* HPC2/or_HPC2.vhd:103:57  */
  assign n50_o = s_out[1];
  /* HPC2/or_HPC2.vhd:103:70  */
  assign n51_o = a_reg[0];
  /* HPC2/or_HPC2.vhd:103:61  */
  assign n52_o = n50_o & n51_o;
  /* HPC2/or_HPC2.vhd:104:59  */
  assign n53_o = p_0_pipe_out[1];
  /* HPC2/or_HPC2.vhd:104:77  */
  assign n54_o = p_1_out[1];
  /* HPC2/or_HPC2.vhd:104:63  */
  assign n55_o = n53_o ^ n54_o;
  /* HPC2/or_HPC2.vhd:107:33  */
  my_register gen_i_n1_gen_j_n2_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n56_o),
    .q(gen_i_n1_gen_j_n2_gen_i_neq_j_s_reg_q));
  /* HPC2/or_HPC2.vhd:107:86  */
  assign n56_o = s_in[1];
  /* HPC2/or_HPC2.vhd:108:33  */
  my_register gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n58_o),
    .q(gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_reg_q));
  /* HPC2/or_HPC2.vhd:108:90  */
  assign n58_o = p_0_in[1];
  /* HPC2/or_HPC2.vhd:109:33  */
  my_register gen_i_n1_gen_j_n2_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n60_o),
    .q(gen_i_n1_gen_j_n2_gen_i_neq_j_p_1_reg_q));
  /* HPC2/or_HPC2.vhd:109:90  */
  assign n60_o = p_1_in[1];
  /* HPC2/or_HPC2.vhd:112:33  */
  my_register gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n62_o),
    .q(gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/or_HPC2.vhd:112:93  */
  assign n62_o = p_0_out[1];
  /* HPC2/or_HPC2.vhd:101:49  */
  assign n64_o = nb[2];
  /* HPC2/or_HPC2.vhd:101:63  */
  assign n65_o = r_m[2];
  /* HPC2/or_HPC2.vhd:101:53  */
  assign n66_o = n64_o ^ n65_o;
  /* HPC2/or_HPC2.vhd:102:56  */
  assign n67_o = na[0];
  /* HPC2/or_HPC2.vhd:102:50  */
  assign n68_o = ~n67_o;
  /* HPC2/or_HPC2.vhd:102:71  */
  assign n69_o = r_m[2];
  /* HPC2/or_HPC2.vhd:102:61  */
  assign n70_o = n68_o & n69_o;
  /* HPC2/or_HPC2.vhd:103:57  */
  assign n71_o = s_out[2];
  /* HPC2/or_HPC2.vhd:103:70  */
  assign n72_o = a_reg[0];
  /* HPC2/or_HPC2.vhd:103:61  */
  assign n73_o = n71_o & n72_o;
  /* HPC2/or_HPC2.vhd:104:59  */
  assign n74_o = p_0_pipe_out[2];
  /* HPC2/or_HPC2.vhd:104:77  */
  assign n75_o = p_1_out[2];
  /* HPC2/or_HPC2.vhd:104:63  */
  assign n76_o = n74_o ^ n75_o;
  /* HPC2/or_HPC2.vhd:107:33  */
  my_register gen_i_n1_gen_j_n3_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n77_o),
    .q(gen_i_n1_gen_j_n3_gen_i_neq_j_s_reg_q));
  /* HPC2/or_HPC2.vhd:107:86  */
  assign n77_o = s_in[2];
  /* HPC2/or_HPC2.vhd:108:33  */
  my_register gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n79_o),
    .q(gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_reg_q));
  /* HPC2/or_HPC2.vhd:108:90  */
  assign n79_o = p_0_in[2];
  /* HPC2/or_HPC2.vhd:109:33  */
  my_register gen_i_n1_gen_j_n3_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n81_o),
    .q(gen_i_n1_gen_j_n3_gen_i_neq_j_p_1_reg_q));
  /* HPC2/or_HPC2.vhd:109:90  */
  assign n81_o = p_1_in[2];
  /* HPC2/or_HPC2.vhd:112:33  */
  my_register gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n83_o),
    .q(gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/or_HPC2.vhd:112:93  */
  assign n83_o = p_0_out[2];
  /* HPC2/or_HPC2.vhd:90:29  */
  assign n85_o = na[1];
  /* HPC2/or_HPC2.vhd:90:39  */
  assign n86_o = nb[1];
  /* HPC2/or_HPC2.vhd:90:33  */
  assign n87_o = n85_o & n86_o;
  /* HPC2/or_HPC2.vhd:91:38  */
  assign n88_o = mul_s2_out[1];
  /* HPC2/or_HPC2.vhd:94:17  */
  my_register gen_i_n2_mul_pipe_s1 (
    .clk(clk),
    .d(n89_o),
    .q(gen_i_n2_mul_pipe_s1_q));
  /* HPC2/or_HPC2.vhd:94:73  */
  assign n89_o = mul[1];
  /* HPC2/or_HPC2.vhd:95:17  */
  my_register gen_i_n2_mul_pipe_s2 (
    .clk(clk),
    .d(n91_o),
    .q(gen_i_n2_mul_pipe_s2_q));
  /* HPC2/or_HPC2.vhd:95:80  */
  assign n91_o = mul_s1_out[1];
  /* HPC2/or_HPC2.vhd:96:17  */
  my_register gen_i_n2_a_i (
    .clk(clk),
    .d(n93_o),
    .q(gen_i_n2_a_i_q));
  /* HPC2/or_HPC2.vhd:96:63  */
  assign n93_o = na[1];
  /* HPC2/or_HPC2.vhd:101:49  */
  assign n95_o = nb[0];
  /* HPC2/or_HPC2.vhd:101:63  */
  assign n96_o = r_m[3];
  /* HPC2/or_HPC2.vhd:101:53  */
  assign n97_o = n95_o ^ n96_o;
  /* HPC2/or_HPC2.vhd:102:56  */
  assign n98_o = na[1];
  /* HPC2/or_HPC2.vhd:102:50  */
  assign n99_o = ~n98_o;
  /* HPC2/or_HPC2.vhd:102:71  */
  assign n100_o = r_m[3];
  /* HPC2/or_HPC2.vhd:102:61  */
  assign n101_o = n99_o & n100_o;
  /* HPC2/or_HPC2.vhd:103:57  */
  assign n102_o = s_out[3];
  /* HPC2/or_HPC2.vhd:103:70  */
  assign n103_o = a_reg[1];
  /* HPC2/or_HPC2.vhd:103:61  */
  assign n104_o = n102_o & n103_o;
  /* HPC2/or_HPC2.vhd:104:59  */
  assign n105_o = p_0_pipe_out[3];
  /* HPC2/or_HPC2.vhd:104:77  */
  assign n106_o = p_1_out[3];
  /* HPC2/or_HPC2.vhd:104:63  */
  assign n107_o = n105_o ^ n106_o;
  /* HPC2/or_HPC2.vhd:107:33  */
  my_register gen_i_n2_gen_j_n1_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n108_o),
    .q(gen_i_n2_gen_j_n1_gen_i_neq_j_s_reg_q));
  /* HPC2/or_HPC2.vhd:107:86  */
  assign n108_o = s_in[3];
  /* HPC2/or_HPC2.vhd:108:33  */
  my_register gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n110_o),
    .q(gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_reg_q));
  /* HPC2/or_HPC2.vhd:108:90  */
  assign n110_o = p_0_in[3];
  /* HPC2/or_HPC2.vhd:109:33  */
  my_register gen_i_n2_gen_j_n1_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n112_o),
    .q(gen_i_n2_gen_j_n1_gen_i_neq_j_p_1_reg_q));
  /* HPC2/or_HPC2.vhd:109:90  */
  assign n112_o = p_1_in[3];
  /* HPC2/or_HPC2.vhd:112:33  */
  my_register gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n114_o),
    .q(gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/or_HPC2.vhd:112:93  */
  assign n114_o = p_0_out[3];
  /* HPC2/or_HPC2.vhd:101:49  */
  assign n116_o = nb[2];
  /* HPC2/or_HPC2.vhd:101:63  */
  assign n117_o = r_m[5];
  /* HPC2/or_HPC2.vhd:101:53  */
  assign n118_o = n116_o ^ n117_o;
  /* HPC2/or_HPC2.vhd:102:56  */
  assign n119_o = na[1];
  /* HPC2/or_HPC2.vhd:102:50  */
  assign n120_o = ~n119_o;
  /* HPC2/or_HPC2.vhd:102:71  */
  assign n121_o = r_m[5];
  /* HPC2/or_HPC2.vhd:102:61  */
  assign n122_o = n120_o & n121_o;
  /* HPC2/or_HPC2.vhd:103:57  */
  assign n123_o = s_out[5];
  /* HPC2/or_HPC2.vhd:103:70  */
  assign n124_o = a_reg[1];
  /* HPC2/or_HPC2.vhd:103:61  */
  assign n125_o = n123_o & n124_o;
  /* HPC2/or_HPC2.vhd:104:59  */
  assign n126_o = p_0_pipe_out[5];
  /* HPC2/or_HPC2.vhd:104:77  */
  assign n127_o = p_1_out[5];
  /* HPC2/or_HPC2.vhd:104:63  */
  assign n128_o = n126_o ^ n127_o;
  /* HPC2/or_HPC2.vhd:107:33  */
  my_register gen_i_n2_gen_j_n3_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n129_o),
    .q(gen_i_n2_gen_j_n3_gen_i_neq_j_s_reg_q));
  /* HPC2/or_HPC2.vhd:107:86  */
  assign n129_o = s_in[5];
  /* HPC2/or_HPC2.vhd:108:33  */
  my_register gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n131_o),
    .q(gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_reg_q));
  /* HPC2/or_HPC2.vhd:108:90  */
  assign n131_o = p_0_in[5];
  /* HPC2/or_HPC2.vhd:109:33  */
  my_register gen_i_n2_gen_j_n3_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n133_o),
    .q(gen_i_n2_gen_j_n3_gen_i_neq_j_p_1_reg_q));
  /* HPC2/or_HPC2.vhd:109:90  */
  assign n133_o = p_1_in[5];
  /* HPC2/or_HPC2.vhd:112:33  */
  my_register gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n135_o),
    .q(gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/or_HPC2.vhd:112:93  */
  assign n135_o = p_0_out[5];
  /* HPC2/or_HPC2.vhd:90:29  */
  assign n137_o = na[2];
  /* HPC2/or_HPC2.vhd:90:39  */
  assign n138_o = nb[2];
  /* HPC2/or_HPC2.vhd:90:33  */
  assign n139_o = n137_o & n138_o;
  /* HPC2/or_HPC2.vhd:91:38  */
  assign n140_o = mul_s2_out[2];
  /* HPC2/or_HPC2.vhd:94:17  */
  my_register gen_i_n3_mul_pipe_s1 (
    .clk(clk),
    .d(n141_o),
    .q(gen_i_n3_mul_pipe_s1_q));
  /* HPC2/or_HPC2.vhd:94:73  */
  assign n141_o = mul[2];
  /* HPC2/or_HPC2.vhd:95:17  */
  my_register gen_i_n3_mul_pipe_s2 (
    .clk(clk),
    .d(n143_o),
    .q(gen_i_n3_mul_pipe_s2_q));
  /* HPC2/or_HPC2.vhd:95:80  */
  assign n143_o = mul_s1_out[2];
  /* HPC2/or_HPC2.vhd:96:17  */
  my_register gen_i_n3_a_i (
    .clk(clk),
    .d(n145_o),
    .q(gen_i_n3_a_i_q));
  /* HPC2/or_HPC2.vhd:96:63  */
  assign n145_o = na[2];
  /* HPC2/or_HPC2.vhd:101:49  */
  assign n147_o = nb[0];
  /* HPC2/or_HPC2.vhd:101:63  */
  assign n148_o = r_m[6];
  /* HPC2/or_HPC2.vhd:101:53  */
  assign n149_o = n147_o ^ n148_o;
  /* HPC2/or_HPC2.vhd:102:56  */
  assign n150_o = na[2];
  /* HPC2/or_HPC2.vhd:102:50  */
  assign n151_o = ~n150_o;
  /* HPC2/or_HPC2.vhd:102:71  */
  assign n152_o = r_m[6];
  /* HPC2/or_HPC2.vhd:102:61  */
  assign n153_o = n151_o & n152_o;
  /* HPC2/or_HPC2.vhd:103:57  */
  assign n154_o = s_out[6];
  /* HPC2/or_HPC2.vhd:103:70  */
  assign n155_o = a_reg[2];
  /* HPC2/or_HPC2.vhd:103:61  */
  assign n156_o = n154_o & n155_o;
  /* HPC2/or_HPC2.vhd:104:59  */
  assign n157_o = p_0_pipe_out[6];
  /* HPC2/or_HPC2.vhd:104:77  */
  assign n158_o = p_1_out[6];
  /* HPC2/or_HPC2.vhd:104:63  */
  assign n159_o = n157_o ^ n158_o;
  /* HPC2/or_HPC2.vhd:107:33  */
  my_register gen_i_n3_gen_j_n1_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n160_o),
    .q(gen_i_n3_gen_j_n1_gen_i_neq_j_s_reg_q));
  /* HPC2/or_HPC2.vhd:107:86  */
  assign n160_o = s_in[6];
  /* HPC2/or_HPC2.vhd:108:33  */
  my_register gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n162_o),
    .q(gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_reg_q));
  /* HPC2/or_HPC2.vhd:108:90  */
  assign n162_o = p_0_in[6];
  /* HPC2/or_HPC2.vhd:109:33  */
  my_register gen_i_n3_gen_j_n1_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n164_o),
    .q(gen_i_n3_gen_j_n1_gen_i_neq_j_p_1_reg_q));
  /* HPC2/or_HPC2.vhd:109:90  */
  assign n164_o = p_1_in[6];
  /* HPC2/or_HPC2.vhd:112:33  */
  my_register gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n166_o),
    .q(gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/or_HPC2.vhd:112:93  */
  assign n166_o = p_0_out[6];
  /* HPC2/or_HPC2.vhd:101:49  */
  assign n168_o = nb[1];
  /* HPC2/or_HPC2.vhd:101:63  */
  assign n169_o = r_m[7];
  /* HPC2/or_HPC2.vhd:101:53  */
  assign n170_o = n168_o ^ n169_o;
  /* HPC2/or_HPC2.vhd:102:56  */
  assign n171_o = na[2];
  /* HPC2/or_HPC2.vhd:102:50  */
  assign n172_o = ~n171_o;
  /* HPC2/or_HPC2.vhd:102:71  */
  assign n173_o = r_m[7];
  /* HPC2/or_HPC2.vhd:102:61  */
  assign n174_o = n172_o & n173_o;
  /* HPC2/or_HPC2.vhd:103:57  */
  assign n175_o = s_out[7];
  /* HPC2/or_HPC2.vhd:103:70  */
  assign n176_o = a_reg[2];
  /* HPC2/or_HPC2.vhd:103:61  */
  assign n177_o = n175_o & n176_o;
  /* HPC2/or_HPC2.vhd:104:59  */
  assign n178_o = p_0_pipe_out[7];
  /* HPC2/or_HPC2.vhd:104:77  */
  assign n179_o = p_1_out[7];
  /* HPC2/or_HPC2.vhd:104:63  */
  assign n180_o = n178_o ^ n179_o;
  /* HPC2/or_HPC2.vhd:107:33  */
  my_register gen_i_n3_gen_j_n2_gen_i_neq_j_s_reg (
    .clk(clk),
    .d(n181_o),
    .q(gen_i_n3_gen_j_n2_gen_i_neq_j_s_reg_q));
  /* HPC2/or_HPC2.vhd:107:86  */
  assign n181_o = s_in[7];
  /* HPC2/or_HPC2.vhd:108:33  */
  my_register gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_reg (
    .clk(clk),
    .d(n183_o),
    .q(gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_reg_q));
  /* HPC2/or_HPC2.vhd:108:90  */
  assign n183_o = p_0_in[7];
  /* HPC2/or_HPC2.vhd:109:33  */
  my_register gen_i_n3_gen_j_n2_gen_i_neq_j_p_1_reg (
    .clk(clk),
    .d(n185_o),
    .q(gen_i_n3_gen_j_n2_gen_i_neq_j_p_1_reg_q));
  /* HPC2/or_HPC2.vhd:109:90  */
  assign n185_o = p_1_in[7];
  /* HPC2/or_HPC2.vhd:112:33  */
  my_register gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_pipe (
    .clk(clk),
    .d(n187_o),
    .q(gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_pipe_q));
  /* HPC2/or_HPC2.vhd:112:93  */
  assign n187_o = p_0_out[7];
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n189_o = z_sum[0];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n190_o = z[0];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n191_o = n189_o ^ n190_o;
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n192_o = z_sum[1];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n193_o = z[1];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n194_o = n192_o ^ n193_o;
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n195_o = z_sum[2];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n196_o = z[2];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n197_o = n195_o ^ n196_o;
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n198_o = z_sum[4];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n199_o = z[3];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n200_o = n198_o ^ n199_o;
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n201_o = z_sum[5];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n202_o = z[4];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n203_o = n201_o ^ n202_o;
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n204_o = z_sum[6];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n205_o = z[5];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n206_o = n204_o ^ n205_o;
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n207_o = z_sum[8];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n208_o = z[6];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n209_o = n207_o ^ n208_o;
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n210_o = z_sum[9];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n211_o = z[7];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n212_o = n210_o ^ n211_o;
  /* HPC2/or_HPC2.vhd:122:50  */
  assign n213_o = z_sum[10];
  /* HPC2/or_HPC2.vhd:122:62  */
  assign n214_o = z[8];
  /* HPC2/or_HPC2.vhd:122:54  */
  assign n215_o = n213_o ^ n214_o;
  /* HPC2/or_HPC2.vhd:128:29  */
  assign n216_o = z_sum[3];
  /* HPC2/or_HPC2.vhd:128:17  */
  assign n217_o = ~n216_o;
  /* HPC2/or_HPC2.vhd:131:33  */
  assign n218_o = z_sum[7];
  /* HPC2/or_HPC2.vhd:131:33  */
  assign n219_o = z_sum[11];
  assign n220_o = {n18_o, n17_o};
  assign n221_o = {n21_o, n20_o};
  assign n225_o = {1'bZ, n30_o, n28_o, n29_o, 1'bZ, n26_o, n27_o, n25_o, 1'bZ};
  assign n229_o = {1'bZ, n170_o, n149_o, n118_o, 1'bZ, n97_o, n66_o, n45_o, 1'bZ};
  assign n233_o = {1'bZ, gen_i_n3_gen_j_n2_gen_i_neq_j_s_reg_q, gen_i_n3_gen_j_n1_gen_i_neq_j_s_reg_q, gen_i_n2_gen_j_n3_gen_i_neq_j_s_reg_q, 1'bZ, gen_i_n2_gen_j_n1_gen_i_neq_j_s_reg_q, gen_i_n1_gen_j_n3_gen_i_neq_j_s_reg_q, gen_i_n1_gen_j_n2_gen_i_neq_j_s_reg_q, 1'bZ};
  assign n237_o = {1'bZ, n174_o, n153_o, n122_o, 1'bZ, n101_o, n70_o, n49_o, 1'bZ};
  assign n241_o = {1'bZ, n177_o, n156_o, n125_o, 1'bZ, n104_o, n73_o, n52_o, 1'bZ};
  assign n245_o = {1'bZ, gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_reg_q, gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_reg_q, gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_reg_q, 1'bZ, gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_reg_q, gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_reg_q, gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_reg_q, 1'bZ};
  assign n249_o = {1'bZ, gen_i_n3_gen_j_n2_gen_i_neq_j_p_1_reg_q, gen_i_n3_gen_j_n1_gen_i_neq_j_p_1_reg_q, gen_i_n2_gen_j_n3_gen_i_neq_j_p_1_reg_q, 1'bZ, gen_i_n2_gen_j_n1_gen_i_neq_j_p_1_reg_q, gen_i_n1_gen_j_n3_gen_i_neq_j_p_1_reg_q, gen_i_n1_gen_j_n2_gen_i_neq_j_p_1_reg_q, 1'bZ};
  assign n250_o = {n140_o, n180_o, n159_o, n128_o, n88_o, n107_o, n76_o, n55_o, n36_o};
  assign n254_o = {1'bZ, gen_i_n3_gen_j_n2_gen_i_neq_j_p_0_pipe_q, gen_i_n3_gen_j_n1_gen_i_neq_j_p_0_pipe_q, gen_i_n2_gen_j_n3_gen_i_neq_j_p_0_pipe_q, 1'bZ, gen_i_n2_gen_j_n1_gen_i_neq_j_p_0_pipe_q, gen_i_n1_gen_j_n3_gen_i_neq_j_p_0_pipe_q, gen_i_n1_gen_j_n2_gen_i_neq_j_p_0_pipe_q, 1'bZ};
  assign n255_o = {n139_o, n87_o, n35_o};
  assign n256_o = {gen_i_n3_a_i_q, gen_i_n2_a_i_q, gen_i_n1_a_i_q};
  assign n257_o = {gen_i_n3_mul_pipe_s1_q, gen_i_n2_mul_pipe_s1_q, gen_i_n1_mul_pipe_s1_q};
  assign n258_o = {gen_i_n3_mul_pipe_s2_q, gen_i_n2_mul_pipe_s2_q, gen_i_n1_mul_pipe_s2_q};
  assign n262_o = {n215_o, n212_o, n209_o, 1'bZ, n206_o, n203_o, n200_o, 1'bZ, n197_o, n194_o, n191_o, 1'bZ};
  assign n263_o = {n219_o, n218_o, n217_o};
endmodule

