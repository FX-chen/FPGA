// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jul 17 16:48:41 2022
// Host        : FXC-LAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/13451/Desktop/FPGA/uart/7020/uart_loopback/uart_loopback.sim/sim_1/synth/timing/xsim/uart_rx_tb_time_synth.v
// Design      : uart_rx
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* BPS_CNT = "434" *) (* CLK_FREQ = "50000000" *) (* UART_BPS = "115200" *) 
(* NotValidForBitStream *)
module uart_rx
   (sys_clk,
    sys_rst_n,
    uart_rxd,
    uart_done,
    uart_data);
  input sys_clk;
  input sys_rst_n;
  input uart_rxd;
  output uart_done;
  output [7:0]uart_data;

  wire [8:0]clk_cnt;
  wire \clk_cnt[5]_i_2_n_0 ;
  wire \clk_cnt[8]_i_2_n_0 ;
  wire \clk_cnt[8]_i_3_n_0 ;
  wire \clk_cnt[8]_i_4_n_0 ;
  wire \clk_cnt[8]_i_5_n_0 ;
  wire [8:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [0:0]p_7_in;
  wire \rx_cnt[1]_i_1_n_0 ;
  wire \rx_cnt[3]_i_1_n_0 ;
  wire \rx_cnt[3]_i_3_n_0 ;
  wire [3:0]rx_cnt_reg;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[0]_i_2_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[2]_i_2_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[3]_i_2_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[4]_i_2_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[5]_i_2_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[6]_i_2_n_0 ;
  wire \rx_data[6]_i_3_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[7]_i_4_n_0 ;
  wire \rx_data_reg_n_0_[0] ;
  wire \rx_data_reg_n_0_[1] ;
  wire \rx_data_reg_n_0_[2] ;
  wire \rx_data_reg_n_0_[3] ;
  wire \rx_data_reg_n_0_[4] ;
  wire \rx_data_reg_n_0_[5] ;
  wire \rx_data_reg_n_0_[6] ;
  wire \rx_data_reg_n_0_[7] ;
  wire rx_flag;
  wire rx_flag_i_1_n_0;
  wire rx_flag_i_2_n_0;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire sys_rst_n;
  wire sys_rst_n_IBUF;
  wire [7:0]uart_data;
  wire \uart_data[0]_i_1_n_0 ;
  wire \uart_data[1]_i_1_n_0 ;
  wire \uart_data[2]_i_1_n_0 ;
  wire \uart_data[3]_i_1_n_0 ;
  wire \uart_data[4]_i_1_n_0 ;
  wire \uart_data[5]_i_1_n_0 ;
  wire \uart_data[6]_i_1_n_0 ;
  wire \uart_data[7]_i_1_n_0 ;
  wire \uart_data[7]_i_2_n_0 ;
  wire [7:0]uart_data_OBUF;
  wire uart_done;
  wire uart_done0_out;
  wire uart_done_OBUF;
  wire uart_rxd;
  wire uart_rxd_IBUF;
  wire uart_rxd_d0;

initial begin
 $sdf_annotate("uart_rx_tb_time_synth.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cnt[0]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(clk_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \clk_cnt[1]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \clk_cnt[2]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \clk_cnt[3]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[2]),
        .I4(clk_cnt[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \clk_cnt[4]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[0]),
        .I4(clk_cnt[3]),
        .I5(clk_cnt[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \clk_cnt[5]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[4]),
        .I3(\clk_cnt[5]_i_2_n_0 ),
        .I4(clk_cnt[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h7F)) 
    \clk_cnt[5]_i_2 
       (.I0(clk_cnt[0]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[2]),
        .O(\clk_cnt[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \clk_cnt[6]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(\clk_cnt[8]_i_4_n_0 ),
        .I2(clk_cnt[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \clk_cnt[7]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(clk_cnt[6]),
        .I2(\clk_cnt[8]_i_4_n_0 ),
        .I3(clk_cnt[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA8888888)) 
    \clk_cnt[8]_i_1 
       (.I0(\clk_cnt[8]_i_3_n_0 ),
        .I1(clk_cnt[8]),
        .I2(clk_cnt[6]),
        .I3(clk_cnt[7]),
        .I4(\clk_cnt[8]_i_4_n_0 ),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[8]_i_2 
       (.I0(sys_rst_n_IBUF),
        .O(\clk_cnt[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \clk_cnt[8]_i_3 
       (.I0(rx_flag),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[8]),
        .I3(\clk_cnt[8]_i_5_n_0 ),
        .O(\clk_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clk_cnt[8]_i_4 
       (.I0(clk_cnt[5]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[2]),
        .I4(clk_cnt[4]),
        .I5(clk_cnt[3]),
        .O(\clk_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    \clk_cnt[8]_i_5 
       (.I0(clk_cnt[6]),
        .I1(clk_cnt[4]),
        .I2(clk_cnt[5]),
        .I3(clk_cnt[3]),
        .I4(clk_cnt[2]),
        .I5(clk_cnt[1]),
        .O(\clk_cnt[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(clk_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(clk_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(clk_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(clk_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(clk_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(clk_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(clk_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(clk_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(clk_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_cnt[0]_i_1 
       (.I0(rx_flag),
        .I1(rx_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \rx_cnt[1]_i_1 
       (.I0(rx_cnt_reg[0]),
        .I1(rx_cnt_reg[1]),
        .I2(rx_flag),
        .O(\rx_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rx_cnt[2]_i_1 
       (.I0(rx_flag),
        .I1(rx_cnt_reg[1]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[2]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \rx_cnt[3]_i_1 
       (.I0(\rx_cnt[3]_i_3_n_0 ),
        .I1(clk_cnt[6]),
        .I2(clk_cnt[3]),
        .I3(clk_cnt[2]),
        .I4(rx_flag),
        .O(\rx_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rx_cnt[3]_i_2 
       (.I0(rx_flag),
        .I1(rx_cnt_reg[2]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[1]),
        .I4(rx_cnt_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \rx_cnt[3]_i_3 
       (.I0(clk_cnt[8]),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[1]),
        .I4(clk_cnt[4]),
        .I5(clk_cnt[5]),
        .O(\rx_cnt[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\rx_cnt[3]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(rx_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\rx_cnt[3]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_cnt[1]_i_1_n_0 ),
        .Q(rx_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\rx_cnt[3]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(rx_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\rx_cnt[3]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(rx_cnt_reg[3]));
  LUT6 #(
    .INIT(64'hFFEF000000200000)) 
    \rx_data[0]_i_1 
       (.I0(p_7_in),
        .I1(rx_cnt_reg[3]),
        .I2(\rx_data[7]_i_3_n_0 ),
        .I3(\rx_data[0]_i_2_n_0 ),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[0] ),
        .O(\rx_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \rx_data[0]_i_2 
       (.I0(rx_cnt_reg[2]),
        .I1(rx_cnt_reg[0]),
        .I2(rx_cnt_reg[1]),
        .O(\rx_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000020000)) 
    \rx_data[1]_i_1 
       (.I0(p_7_in),
        .I1(\rx_data[2]_i_2_n_0 ),
        .I2(rx_cnt_reg[2]),
        .I3(\rx_data[5]_i_2_n_0 ),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[1] ),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000020000)) 
    \rx_data[2]_i_1 
       (.I0(p_7_in),
        .I1(\rx_data[2]_i_2_n_0 ),
        .I2(rx_cnt_reg[2]),
        .I3(\rx_data[6]_i_2_n_0 ),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[2] ),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \rx_data[2]_i_2 
       (.I0(rx_cnt_reg[3]),
        .I1(\rx_data[7]_i_4_n_0 ),
        .I2(clk_cnt[3]),
        .I3(clk_cnt[4]),
        .I4(clk_cnt[6]),
        .I5(clk_cnt[0]),
        .O(\rx_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000002000000)) 
    \rx_data[3]_i_1 
       (.I0(p_7_in),
        .I1(\rx_data[6]_i_3_n_0 ),
        .I2(\rx_data[3]_i_2_n_0 ),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[3] ),
        .O(\rx_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[3]_i_2 
       (.I0(rx_cnt_reg[1]),
        .I1(rx_cnt_reg[0]),
        .O(\rx_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000002000000)) 
    \rx_data[4]_i_1 
       (.I0(p_7_in),
        .I1(\rx_data[4]_i_2_n_0 ),
        .I2(\rx_data[6]_i_3_n_0 ),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[4] ),
        .O(\rx_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[4]_i_2 
       (.I0(rx_cnt_reg[1]),
        .I1(rx_cnt_reg[0]),
        .O(\rx_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000002000000)) 
    \rx_data[5]_i_1 
       (.I0(p_7_in),
        .I1(\rx_data[6]_i_3_n_0 ),
        .I2(\rx_data[5]_i_2_n_0 ),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[5] ),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[5]_i_2 
       (.I0(rx_cnt_reg[0]),
        .I1(rx_cnt_reg[1]),
        .O(\rx_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000002000000)) 
    \rx_data[6]_i_1 
       (.I0(p_7_in),
        .I1(\rx_data[6]_i_2_n_0 ),
        .I2(\rx_data[6]_i_3_n_0 ),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[6] ),
        .O(\rx_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rx_data[6]_i_2 
       (.I0(rx_cnt_reg[1]),
        .I1(rx_cnt_reg[0]),
        .O(\rx_data[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[6]_i_3 
       (.I0(rx_cnt_reg[3]),
        .I1(rx_cnt_reg[2]),
        .O(\rx_data[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \rx_data[7]_i_1 
       (.I0(p_7_in),
        .I1(\rx_data[7]_i_2_n_0 ),
        .I2(\rx_data[7]_i_3_n_0 ),
        .I3(rx_flag),
        .I4(\rx_data_reg_n_0_[7] ),
        .O(\rx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rx_data[7]_i_2 
       (.I0(rx_cnt_reg[3]),
        .I1(rx_cnt_reg[2]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[1]),
        .O(\rx_data[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rx_data[7]_i_3 
       (.I0(clk_cnt[0]),
        .I1(clk_cnt[6]),
        .I2(clk_cnt[4]),
        .I3(clk_cnt[3]),
        .I4(\rx_data[7]_i_4_n_0 ),
        .O(\rx_data[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \rx_data[7]_i_4 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[8]),
        .I3(clk_cnt[7]),
        .I4(clk_cnt[5]),
        .O(\rx_data[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    rx_flag_i_1
       (.I0(uart_rxd_d0),
        .I1(p_7_in),
        .I2(rx_flag_i_2_n_0),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(rx_flag),
        .O(rx_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    rx_flag_i_2
       (.I0(rx_cnt_reg[1]),
        .I1(rx_cnt_reg[0]),
        .I2(rx_cnt_reg[2]),
        .I3(rx_cnt_reg[3]),
        .O(rx_flag_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_flag_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(rx_flag_i_1_n_0),
        .Q(rx_flag));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  IBUF sys_rst_n_IBUF_inst
       (.I(sys_rst_n),
        .O(sys_rst_n_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[0]_i_1 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[0] ),
        .O(\uart_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[1]_i_1 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[1] ),
        .O(\uart_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[2]_i_1 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[2] ),
        .O(\uart_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[3]_i_1 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[3] ),
        .O(\uart_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[4]_i_1 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[4] ),
        .O(\uart_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[5]_i_1 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[5] ),
        .O(\uart_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[6]_i_1 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[6] ),
        .O(\uart_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55555D55)) 
    \uart_data[7]_i_1 
       (.I0(rx_flag),
        .I1(rx_cnt_reg[3]),
        .I2(rx_cnt_reg[2]),
        .I3(rx_cnt_reg[0]),
        .I4(rx_cnt_reg[1]),
        .O(\uart_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[7]_i_2 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[7] ),
        .O(\uart_data[7]_i_2_n_0 ));
  OBUF \uart_data_OBUF[0]_inst 
       (.I(uart_data_OBUF[0]),
        .O(uart_data[0]));
  OBUF \uart_data_OBUF[1]_inst 
       (.I(uart_data_OBUF[1]),
        .O(uart_data[1]));
  OBUF \uart_data_OBUF[2]_inst 
       (.I(uart_data_OBUF[2]),
        .O(uart_data[2]));
  OBUF \uart_data_OBUF[3]_inst 
       (.I(uart_data_OBUF[3]),
        .O(uart_data[3]));
  OBUF \uart_data_OBUF[4]_inst 
       (.I(uart_data_OBUF[4]),
        .O(uart_data[4]));
  OBUF \uart_data_OBUF[5]_inst 
       (.I(uart_data_OBUF[5]),
        .O(uart_data[5]));
  OBUF \uart_data_OBUF[6]_inst 
       (.I(uart_data_OBUF[6]),
        .O(uart_data[6]));
  OBUF \uart_data_OBUF[7]_inst 
       (.I(uart_data_OBUF[7]),
        .O(uart_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\uart_data[0]_i_1_n_0 ),
        .Q(uart_data_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\uart_data[1]_i_1_n_0 ),
        .Q(uart_data_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\uart_data[2]_i_1_n_0 ),
        .Q(uart_data_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\uart_data[3]_i_1_n_0 ),
        .Q(uart_data_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\uart_data[4]_i_1_n_0 ),
        .Q(uart_data_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\uart_data[5]_i_1_n_0 ),
        .Q(uart_data_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\uart_data[6]_i_1_n_0 ),
        .Q(uart_data_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(\uart_data[7]_i_2_n_0 ),
        .Q(uart_data_OBUF[7]));
  OBUF uart_done_OBUF_inst
       (.I(uart_done_OBUF),
        .O(uart_done));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    uart_done_i_1
       (.I0(rx_flag),
        .I1(rx_cnt_reg[3]),
        .I2(rx_cnt_reg[2]),
        .I3(rx_cnt_reg[0]),
        .I4(rx_cnt_reg[1]),
        .O(uart_done0_out));
  FDCE #(
    .INIT(1'b0)) 
    uart_done_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(uart_done0_out),
        .Q(uart_done_OBUF));
  IBUF uart_rxd_IBUF_inst
       (.I(uart_rxd),
        .O(uart_rxd_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    uart_rxd_d0_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(uart_rxd_IBUF),
        .Q(uart_rxd_d0));
  FDCE #(
    .INIT(1'b0)) 
    uart_rxd_d1_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\clk_cnt[8]_i_2_n_0 ),
        .D(uart_rxd_d0),
        .Q(p_7_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
