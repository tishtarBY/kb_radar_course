// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1.3
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mod_sub_entry23 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        ix_V,
        ix_V_ap_vld,
        qx_V,
        qx_V_ap_vld,
        i_mod_V,
        i_mod_V_ap_vld,
        q_mod_V,
        q_mod_V_ap_vld,
        period_V,
        period_V_ap_vld,
        mux_V,
        mux_V_ap_vld,
        ix_V_out_din,
        ix_V_out_full_n,
        ix_V_out_write,
        qx_V_out_din,
        qx_V_out_full_n,
        qx_V_out_write,
        i_mod_V_out_din,
        i_mod_V_out_full_n,
        i_mod_V_out_write,
        q_mod_V_out_din,
        q_mod_V_out_full_n,
        q_mod_V_out_write,
        period_V_out_din,
        period_V_out_full_n,
        period_V_out_write,
        mux_V_out_din,
        mux_V_out_full_n,
        mux_V_out_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] ix_V;
input   ix_V_ap_vld;
input  [31:0] qx_V;
input   qx_V_ap_vld;
input  [7:0] i_mod_V;
input   i_mod_V_ap_vld;
input  [7:0] q_mod_V;
input   q_mod_V_ap_vld;
input  [7:0] period_V;
input   period_V_ap_vld;
input  [1:0] mux_V;
input   mux_V_ap_vld;
output  [31:0] ix_V_out_din;
input   ix_V_out_full_n;
output   ix_V_out_write;
output  [31:0] qx_V_out_din;
input   qx_V_out_full_n;
output   qx_V_out_write;
output  [7:0] i_mod_V_out_din;
input   i_mod_V_out_full_n;
output   i_mod_V_out_write;
output  [7:0] q_mod_V_out_din;
input   q_mod_V_out_full_n;
output   q_mod_V_out_write;
output  [7:0] period_V_out_din;
input   period_V_out_full_n;
output   period_V_out_write;
output  [1:0] mux_V_out_din;
input   mux_V_out_full_n;
output   mux_V_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg ix_V_out_write;
reg qx_V_out_write;
reg i_mod_V_out_write;
reg q_mod_V_out_write;
reg period_V_out_write;
reg mux_V_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    ix_V_blk_n;
reg    qx_V_blk_n;
reg    i_mod_V_blk_n;
reg    q_mod_V_blk_n;
reg    period_V_blk_n;
reg    mux_V_blk_n;
reg    ix_V_out_blk_n;
reg    qx_V_out_blk_n;
reg    i_mod_V_out_blk_n;
reg    q_mod_V_out_blk_n;
reg    period_V_out_blk_n;
reg    mux_V_out_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_mod_V_blk_n = i_mod_V_ap_vld;
    end else begin
        i_mod_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_mod_V_out_blk_n = i_mod_V_out_full_n;
    end else begin
        i_mod_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_mod_V_out_write = 1'b1;
    end else begin
        i_mod_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ix_V_blk_n = ix_V_ap_vld;
    end else begin
        ix_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ix_V_out_blk_n = ix_V_out_full_n;
    end else begin
        ix_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ix_V_out_write = 1'b1;
    end else begin
        ix_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mux_V_blk_n = mux_V_ap_vld;
    end else begin
        mux_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mux_V_out_blk_n = mux_V_out_full_n;
    end else begin
        mux_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mux_V_out_write = 1'b1;
    end else begin
        mux_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        period_V_blk_n = period_V_ap_vld;
    end else begin
        period_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        period_V_out_blk_n = period_V_out_full_n;
    end else begin
        period_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        period_V_out_write = 1'b1;
    end else begin
        period_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        q_mod_V_blk_n = q_mod_V_ap_vld;
    end else begin
        q_mod_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        q_mod_V_out_blk_n = q_mod_V_out_full_n;
    end else begin
        q_mod_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        q_mod_V_out_write = 1'b1;
    end else begin
        q_mod_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        qx_V_blk_n = qx_V_ap_vld;
    end else begin
        qx_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        qx_V_out_blk_n = qx_V_out_full_n;
    end else begin
        qx_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        qx_V_out_write = 1'b1;
    end else begin
        qx_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((mux_V_out_full_n == 1'b0) | (real_start == 1'b0) | (period_V_out_full_n == 1'b0) | (q_mod_V_out_full_n == 1'b0) | (i_mod_V_out_full_n == 1'b0) | (qx_V_out_full_n == 1'b0) | (ix_V_out_full_n == 1'b0) | (mux_V_ap_vld == 1'b0) | (period_V_ap_vld == 1'b0) | (q_mod_V_ap_vld == 1'b0) | (i_mod_V_ap_vld == 1'b0) | (qx_V_ap_vld == 1'b0) | (ix_V_ap_vld == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign i_mod_V_out_din = i_mod_V;

assign ix_V_out_din = ix_V;

assign mux_V_out_din = mux_V;

assign period_V_out_din = period_V;

assign q_mod_V_out_din = q_mod_V;

assign qx_V_out_din = qx_V;

assign start_out = real_start;

endmodule //mod_sub_entry23