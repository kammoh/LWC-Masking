module my_register
  (input  clk,
   input  d,
   output q);
  reg s_current_state;
  reg s_next_state;
  reg n7_q;
  assign q = s_current_state;
  /* general/my_register.vhd:36:16  */
  always @*
    s_current_state = n7_q; // (isignal)
  initial
    s_current_state = 1'b0;
  /* general/my_register.vhd:36:33  */
  always @*
    s_next_state = d; // (isignal)
  initial
    s_next_state = 1'b0;
  /* general/my_register.vhd:44:17  */
  always @(posedge clk)
    n7_q <= s_next_state;
  initial
    n7_q = 1'b0;
endmodule

