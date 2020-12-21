// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Sun Dec 20 18:23:20 2020
// Host        : LAPTOP-KSVOJTV9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_d_conv_0_0 -prefix
//               design_1_d_conv_0_0_ design_1_d_conv_0_0_stub.v
// Design      : design_1_d_conv_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "d_conv,Vivado 2019.1.2" *)
module design_1_d_conv_0_0(x_V_ap_vld, ref_i_V_ap_vld, ref_q_V_ap_vld, 
  y_i_V_ap_vld, y_q_V_ap_vld, x_V, ref_i_V, ref_q_V, y_i_V, y_q_V, ap_clk, ap_rst)
/* synthesis syn_black_box black_box_pad_pin="x_V_ap_vld,ref_i_V_ap_vld,ref_q_V_ap_vld,y_i_V_ap_vld,y_q_V_ap_vld,x_V[7:0],ref_i_V[7:0],ref_q_V[7:0],y_i_V[31:0],y_q_V[31:0],ap_clk,ap_rst" */;
  input x_V_ap_vld;
  input ref_i_V_ap_vld;
  input ref_q_V_ap_vld;
  output y_i_V_ap_vld;
  output y_q_V_ap_vld;
  input [7:0]x_V;
  input [7:0]ref_i_V;
  input [7:0]ref_q_V;
  output [31:0]y_i_V;
  output [31:0]y_q_V;
  input ap_clk;
  input ap_rst;
endmodule
