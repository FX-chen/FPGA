// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jul 17 23:12:13 2022
// Host        : FXC-LAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/13451/Desktop/FPGA/uart/7020/uart_loopback/uart_loopback.sim/sim_1/impl/timing/xsim/uart_tb_time_impl.v
// Design      : uart_loopback_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module uart_loopback
   (sys_clk,
    sys_rst_n,
    recv_done,
    recv_data,
    tx_busy,
    send_en,
    send_data);
  input sys_clk;
  input sys_rst_n;
  input recv_done;
  input [7:0]recv_data;
  input tx_busy;
  output send_en;
  output [7:0]send_data;

  wire [7:0]recv_data;
  wire recv_done;
  wire recv_done_d0;
  wire recv_done_d1;
  wire recv_done_flag;
  wire [7:0]send_data;
  wire send_en;
  wire send_en_i_1_n_0;
  wire send_en_i_2_n_0;
  wire sys_clk;
  wire sys_rst_n;
  wire tx_busy;
  wire tx_ready;
  wire tx_ready_i_1_n_0;

  FDCE #(
    .INIT(1'b0)) 
    recv_done_d0_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(send_en_i_2_n_0),
        .D(recv_done),
        .Q(recv_done_d0));
  FDCE #(
    .INIT(1'b0)) 
    recv_done_d1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(send_en_i_2_n_0),
        .D(recv_done_d0),
        .Q(recv_done_d1));
  LUT2 #(
    .INIT(4'h2)) 
    \send_data[7]_i_1 
       (.I0(recv_done_d0),
        .I1(recv_done_d1),
        .O(recv_done_flag));
  FDCE #(
    .INIT(1'b0)) 
    \send_data_reg[0] 
       (.C(sys_clk),
        .CE(recv_done_flag),
        .CLR(send_en_i_2_n_0),
        .D(recv_data[0]),
        .Q(send_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \send_data_reg[1] 
       (.C(sys_clk),
        .CE(recv_done_flag),
        .CLR(send_en_i_2_n_0),
        .D(recv_data[1]),
        .Q(send_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \send_data_reg[2] 
       (.C(sys_clk),
        .CE(recv_done_flag),
        .CLR(send_en_i_2_n_0),
        .D(recv_data[2]),
        .Q(send_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \send_data_reg[3] 
       (.C(sys_clk),
        .CE(recv_done_flag),
        .CLR(send_en_i_2_n_0),
        .D(recv_data[3]),
        .Q(send_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \send_data_reg[4] 
       (.C(sys_clk),
        .CE(recv_done_flag),
        .CLR(send_en_i_2_n_0),
        .D(recv_data[4]),
        .Q(send_data[4]));
  (* \PinAttr:D:HOLD_DETOUR  = "123" *) 
  FDCE #(
    .INIT(1'b0)) 
    \send_data_reg[5] 
       (.C(sys_clk),
        .CE(recv_done_flag),
        .CLR(send_en_i_2_n_0),
        .D(recv_data[5]),
        .Q(send_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \send_data_reg[6] 
       (.C(sys_clk),
        .CE(recv_done_flag),
        .CLR(send_en_i_2_n_0),
        .D(recv_data[6]),
        .Q(send_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \send_data_reg[7] 
       (.C(sys_clk),
        .CE(recv_done_flag),
        .CLR(send_en_i_2_n_0),
        .D(recv_data[7]),
        .Q(send_data[7]));
  (* \PinAttr:I4:HOLD_DETOUR  = "179" *) 
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hBBBB0B00)) 
    send_en_i_1
       (.I0(recv_done_d1),
        .I1(recv_done_d0),
        .I2(tx_busy),
        .I3(tx_ready),
        .I4(send_en),
        .O(send_en_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    send_en_i_2
       (.I0(sys_rst_n),
        .O(send_en_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    send_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(send_en_i_2_n_0),
        .D(send_en_i_1_n_0),
        .Q(send_en));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    tx_ready_i_1
       (.I0(recv_done_d1),
        .I1(recv_done_d0),
        .I2(tx_busy),
        .I3(tx_ready),
        .O(tx_ready_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_ready_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(send_en_i_2_n_0),
        .D(tx_ready_i_1_n_0),
        .Q(tx_ready));
endmodule

(* CLK_FREQ = "50000000" *) (* ECO_CHECKSUM = "8125d0db" *) (* UART_BPS = "115200" *) 
(* keep_hierarchy = "soft" *) 
(* NotValidForBitStream *)
module uart_loopback_top
   (sys_clk,
    sys_rst_n,
    uart_rxd,
    uart_txd);
  input sys_clk;
  input sys_rst_n;
  (* mark_debug = "true" *) input uart_rxd;
  (* mark_debug = "true" *) output uart_txd;

  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire sys_rst_n;
  wire sys_rst_n_IBUF;
  (* MARK_DEBUG *) wire [7:0]uart_recv_data;
  (* MARK_DEBUG *) wire uart_recv_done;
  wire uart_rxd;
  (* MARK_DEBUG *) wire uart_rxd_IBUF;
  (* MARK_DEBUG *) wire [7:0]uart_send_data;
  (* MARK_DEBUG *) wire uart_send_en;
  (* MARK_DEBUG *) wire uart_tx_busy;
  wire uart_txd;
  (* MARK_DEBUG *) wire uart_txd_OBUF;

initial begin
 $sdf_annotate("uart_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  IBUF sys_rst_n_IBUF_inst
       (.I(sys_rst_n),
        .O(sys_rst_n_IBUF));
  (* KEEP_HIERARCHY = "soft" *) 
  uart_loopback u_uart_loopback
       (.recv_data(uart_recv_data),
        .recv_done(uart_recv_done),
        .send_data(uart_send_data),
        .send_en(uart_send_en),
        .sys_clk(sys_clk_IBUF_BUFG),
        .sys_rst_n(sys_rst_n_IBUF),
        .tx_busy(uart_tx_busy));
  (* BPS_CNT = "434" *) 
  (* CLK_FREQ = "50000000" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* UART_BPS = "115200" *) 
  uart_rx u_uart_rx
       (.sys_clk(sys_clk_IBUF_BUFG),
        .sys_rst_n(sys_rst_n_IBUF),
        .uart_data(uart_recv_data),
        .uart_done(uart_recv_done),
        .uart_rxd(uart_rxd_IBUF));
  (* BPS_CNT = "434" *) 
  (* CLK_FREQ = "50000000" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* UART_BPS = "115200" *) 
  uart_tx u_uart_tx
       (.sys_clk(sys_clk_IBUF_BUFG),
        .sys_rst_n(sys_rst_n_IBUF),
        .uart_din(uart_send_data),
        .uart_en(uart_send_en),
        .uart_tx_busy(uart_tx_busy),
        .uart_txd(uart_txd_OBUF));
  (* mark_debug = "true" *) 
  IBUF uart_rxd_IBUF_inst
       (.I(uart_rxd),
        .O(uart_rxd_IBUF));
  (* mark_debug = "true" *) 
  OBUF uart_txd_OBUF_inst
       (.I(uart_txd_OBUF),
        .O(uart_txd));
endmodule

(* BPS_CNT = "434" *) (* CLK_FREQ = "50000000" *) (* UART_BPS = "115200" *) 
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
  wire rx_flag_i_3_n_0;
  wire rx_flag_i_4_n_0;
  wire sys_clk;
  wire sys_rst_n;
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
  wire uart_done;
  wire uart_done_i_1_n_0;
  wire uart_done_i_2_n_0;
  wire uart_rxd;
  wire uart_rxd_d0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cnt[0]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(clk_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \clk_cnt[1]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \clk_cnt[2]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \clk_cnt[3]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[2]),
        .I4(clk_cnt[3]),
        .O(p_0_in[3]));
  (* \PinAttr:I2:HOLD_DETOUR  = "171" *) 
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \clk_cnt[4]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[0]),
        .I4(clk_cnt[3]),
        .I5(clk_cnt[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \clk_cnt[5]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
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
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(\clk_cnt[8]_i_3_n_0 ),
        .I2(clk_cnt[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \clk_cnt[7]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(clk_cnt[6]),
        .I2(\clk_cnt[8]_i_3_n_0 ),
        .I3(clk_cnt[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA8888888)) 
    \clk_cnt[8]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(clk_cnt[8]),
        .I2(clk_cnt[6]),
        .I3(clk_cnt[7]),
        .I4(\clk_cnt[8]_i_3_n_0 ),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \clk_cnt[8]_i_2 
       (.I0(rx_flag),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[8]),
        .I3(\clk_cnt[8]_i_4_n_0 ),
        .O(\clk_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clk_cnt[8]_i_3 
       (.I0(clk_cnt[5]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[2]),
        .I4(clk_cnt[4]),
        .I5(clk_cnt[3]),
        .O(\clk_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    \clk_cnt[8]_i_4 
       (.I0(clk_cnt[6]),
        .I1(clk_cnt[4]),
        .I2(clk_cnt[5]),
        .I3(clk_cnt[3]),
        .I4(clk_cnt[2]),
        .I5(clk_cnt[1]),
        .O(\clk_cnt[8]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[0]),
        .Q(clk_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[1]),
        .Q(clk_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[2]),
        .Q(clk_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[3]),
        .Q(clk_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[4]),
        .Q(clk_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[5]),
        .Q(clk_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[6]),
        .Q(clk_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[7]),
        .Q(clk_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in[8]),
        .Q(clk_cnt[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \rx_cnt[0]_i_1 
       (.I0(rx_flag),
        .I1(rx_cnt_reg[0]),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'h60)) 
    \rx_cnt[1]_i_1 
       (.I0(rx_cnt_reg[0]),
        .I1(rx_cnt_reg[1]),
        .I2(rx_flag),
        .O(\rx_cnt[1]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* \PinAttr:I2:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
       (.C(sys_clk),
        .CE(\rx_cnt[3]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(rx_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[1] 
       (.C(sys_clk),
        .CE(\rx_cnt[3]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_cnt[1]_i_1_n_0 ),
        .Q(rx_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[2] 
       (.C(sys_clk),
        .CE(\rx_cnt[3]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(rx_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[3] 
       (.C(sys_clk),
        .CE(\rx_cnt[3]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(rx_cnt_reg[3]));
  LUT6 #(
    .INIT(64'hEFFF000020000000)) 
    \rx_data[0]_i_1 
       (.I0(p_7_in),
        .I1(rx_cnt_reg[3]),
        .I2(rx_flag_i_2_n_0),
        .I3(\rx_data[0]_i_2_n_0 ),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[0] ),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
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
        .I1(rx_flag_i_4_n_0),
        .I2(clk_cnt[6]),
        .I3(clk_cnt[0]),
        .I4(clk_cnt[3]),
        .I5(clk_cnt[4]),
        .O(\rx_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000002000000)) 
    \rx_data[3]_i_1 
       (.I0(p_7_in),
        .I1(\rx_data[6]_i_3_n_0 ),
        .I2(\rx_data[3]_i_2_n_0 ),
        .I3(rx_flag_i_2_n_0),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[3] ),
        .O(\rx_data[3]_i_1_n_0 ));
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
        .I3(rx_flag_i_2_n_0),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[4] ),
        .O(\rx_data[4]_i_1_n_0 ));
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
        .I3(rx_flag_i_2_n_0),
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
        .I3(rx_flag_i_2_n_0),
        .I4(rx_flag),
        .I5(\rx_data_reg_n_0_[6] ),
        .O(\rx_data[6]_i_1_n_0 ));
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
        .I2(rx_flag_i_2_n_0),
        .I3(rx_flag),
        .I4(\rx_data_reg_n_0_[7] ),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rx_data[7]_i_2 
       (.I0(rx_cnt_reg[3]),
        .I1(rx_cnt_reg[2]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[1]),
        .O(\rx_data[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h4FFF4444)) 
    rx_flag_i_1
       (.I0(uart_rxd_d0),
        .I1(p_7_in),
        .I2(rx_flag_i_2_n_0),
        .I3(rx_flag_i_3_n_0),
        .I4(rx_flag),
        .O(rx_flag_i_1_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    rx_flag_i_2
       (.I0(clk_cnt[4]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[6]),
        .I4(rx_flag_i_4_n_0),
        .O(rx_flag_i_2_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    rx_flag_i_3
       (.I0(rx_cnt_reg[1]),
        .I1(rx_cnt_reg[0]),
        .I2(rx_cnt_reg[2]),
        .I3(rx_cnt_reg[3]),
        .O(rx_flag_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    rx_flag_i_4
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[8]),
        .I3(clk_cnt[7]),
        .I4(clk_cnt[5]),
        .O(rx_flag_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_flag_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(rx_flag_i_1_n_0),
        .Q(rx_flag));
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
    .INIT(32'h0020FFFF)) 
    \uart_data[7]_i_1 
       (.I0(rx_cnt_reg[3]),
        .I1(rx_cnt_reg[2]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[1]),
        .I4(rx_flag),
        .O(\uart_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_data[7]_i_2 
       (.I0(rx_flag),
        .I1(\rx_data_reg_n_0_[7] ),
        .O(\uart_data[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[0] 
       (.C(sys_clk),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\uart_data[0]_i_1_n_0 ),
        .Q(uart_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[1] 
       (.C(sys_clk),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\uart_data[1]_i_1_n_0 ),
        .Q(uart_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[2] 
       (.C(sys_clk),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\uart_data[2]_i_1_n_0 ),
        .Q(uart_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[3] 
       (.C(sys_clk),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\uart_data[3]_i_1_n_0 ),
        .Q(uart_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[4] 
       (.C(sys_clk),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\uart_data[4]_i_1_n_0 ),
        .Q(uart_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[5] 
       (.C(sys_clk),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\uart_data[5]_i_1_n_0 ),
        .Q(uart_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[6] 
       (.C(sys_clk),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\uart_data[6]_i_1_n_0 ),
        .Q(uart_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[7] 
       (.C(sys_clk),
        .CE(\uart_data[7]_i_1_n_0 ),
        .CLR(uart_done_i_2_n_0),
        .D(\uart_data[7]_i_2_n_0 ),
        .Q(uart_data[7]));
  LUT5 #(
    .INIT(32'h00200000)) 
    uart_done_i_1
       (.I0(rx_cnt_reg[3]),
        .I1(rx_cnt_reg[2]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[1]),
        .I4(rx_flag),
        .O(uart_done_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    uart_done_i_2
       (.I0(sys_rst_n),
        .O(uart_done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    uart_done_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(uart_done_i_1_n_0),
        .Q(uart_done));
  FDCE #(
    .INIT(1'b0)) 
    uart_rxd_d0_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(uart_rxd),
        .Q(uart_rxd_d0));
  FDCE #(
    .INIT(1'b0)) 
    uart_rxd_d1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(uart_done_i_2_n_0),
        .D(uart_rxd_d0),
        .Q(p_7_in));
endmodule

(* BPS_CNT = "434" *) (* CLK_FREQ = "50000000" *) (* UART_BPS = "115200" *) 
module uart_tx
   (sys_clk,
    sys_rst_n,
    uart_en,
    uart_din,
    uart_tx_busy,
    uart_txd);
  input sys_clk;
  input sys_rst_n;
  input uart_en;
  input [7:0]uart_din;
  output uart_tx_busy;
  output uart_txd;

  wire [8:0]clk_cnt;
  wire \clk_cnt[2]_i_2_n_0 ;
  wire \clk_cnt[3]_i_2_n_0 ;
  wire \clk_cnt[4]_i_2_n_0 ;
  wire \clk_cnt[5]_i_2_n_0 ;
  wire \clk_cnt[8]_i_2_n_0 ;
  wire \clk_cnt[8]_i_3_n_0 ;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire en_flag;
  wire [8:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [7:0]p_1_in;
  wire sys_clk;
  wire sys_rst_n;
  wire tx_cnt0;
  wire \tx_cnt[3]_i_3_n_0 ;
  wire [3:0]tx_cnt_reg;
  wire \tx_data_reg_n_0_[0] ;
  wire tx_flag_i_1_n_0;
  wire tx_flag_i_3_n_0;
  wire tx_flag_i_4_n_0;
  wire tx_flag_i_5_n_0;
  wire [7:0]uart_din;
  wire uart_en;
  wire uart_en_d0;
  wire uart_en_d1;
  wire uart_tx_busy;
  wire uart_txd;
  wire uart_txd_i_1_n_0;
  wire uart_txd_i_2_n_0;
  wire uart_txd_i_3_n_0;
  wire uart_txd_i_4_n_0;
  wire uart_txd_i_5_n_0;

  LUT5 #(
    .INIT(32'h00008AAA)) 
    \clk_cnt[0]_i_1 
       (.I0(uart_tx_busy),
        .I1(\clk_cnt[8]_i_3_n_0 ),
        .I2(clk_cnt[8]),
        .I3(clk_cnt[7]),
        .I4(clk_cnt[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h0000F700F7000000)) 
    \clk_cnt[1]_i_1 
       (.I0(clk_cnt[7]),
        .I1(clk_cnt[8]),
        .I2(\clk_cnt[8]_i_3_n_0 ),
        .I3(uart_tx_busy),
        .I4(clk_cnt[0]),
        .I5(clk_cnt[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \clk_cnt[2]_i_1 
       (.I0(\clk_cnt[2]_i_2_n_0 ),
        .I1(\clk_cnt[8]_i_3_n_0 ),
        .I2(uart_tx_busy),
        .I3(clk_cnt[0]),
        .I4(clk_cnt[1]),
        .I5(clk_cnt[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \clk_cnt[2]_i_2 
       (.I0(clk_cnt[7]),
        .I1(clk_cnt[8]),
        .O(\clk_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F700F7000000)) 
    \clk_cnt[3]_i_1 
       (.I0(clk_cnt[7]),
        .I1(clk_cnt[8]),
        .I2(\clk_cnt[8]_i_3_n_0 ),
        .I3(uart_tx_busy),
        .I4(\clk_cnt[3]_i_2_n_0 ),
        .I5(clk_cnt[3]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \clk_cnt[3]_i_2 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .O(\clk_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F700F7000000)) 
    \clk_cnt[4]_i_1 
       (.I0(clk_cnt[7]),
        .I1(clk_cnt[8]),
        .I2(\clk_cnt[8]_i_3_n_0 ),
        .I3(uart_tx_busy),
        .I4(\clk_cnt[4]_i_2_n_0 ),
        .I5(clk_cnt[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h8000)) 
    \clk_cnt[4]_i_2 
       (.I0(clk_cnt[3]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[2]),
        .O(\clk_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4044444480888888)) 
    \clk_cnt[5]_i_1 
       (.I0(\clk_cnt[5]_i_2_n_0 ),
        .I1(uart_tx_busy),
        .I2(\clk_cnt[8]_i_3_n_0 ),
        .I3(clk_cnt[8]),
        .I4(clk_cnt[7]),
        .I5(clk_cnt[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \clk_cnt[5]_i_2 
       (.I0(clk_cnt[4]),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[1]),
        .I4(clk_cnt[3]),
        .O(\clk_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4044444480888888)) 
    \clk_cnt[6]_i_1 
       (.I0(\clk_cnt[8]_i_2_n_0 ),
        .I1(uart_tx_busy),
        .I2(\clk_cnt[8]_i_3_n_0 ),
        .I3(clk_cnt[8]),
        .I4(clk_cnt[7]),
        .I5(clk_cnt[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7000707080808080)) 
    \clk_cnt[7]_i_1 
       (.I0(clk_cnt[6]),
        .I1(\clk_cnt[8]_i_2_n_0 ),
        .I2(uart_tx_busy),
        .I3(\clk_cnt[8]_i_3_n_0 ),
        .I4(clk_cnt[8]),
        .I5(clk_cnt[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7F00550080008000)) 
    \clk_cnt[8]_i_1 
       (.I0(clk_cnt[7]),
        .I1(\clk_cnt[8]_i_2_n_0 ),
        .I2(clk_cnt[6]),
        .I3(uart_tx_busy),
        .I4(\clk_cnt[8]_i_3_n_0 ),
        .I5(clk_cnt[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clk_cnt[8]_i_2 
       (.I0(clk_cnt[5]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[0]),
        .I4(clk_cnt[2]),
        .I5(clk_cnt[4]),
        .O(\clk_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FFFFFF)) 
    \clk_cnt[8]_i_3 
       (.I0(clk_cnt[3]),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[4]),
        .I4(clk_cnt[5]),
        .I5(clk_cnt[6]),
        .O(\clk_cnt[8]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[0]),
        .Q(clk_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[1]),
        .Q(clk_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[2]),
        .Q(clk_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[3]),
        .Q(clk_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[4]),
        .Q(clk_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[5]),
        .Q(clk_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[6]),
        .Q(clk_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[7]),
        .Q(clk_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in[8]),
        .Q(clk_cnt[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \tx_cnt[0]_i_1 
       (.I0(uart_tx_busy),
        .I1(tx_cnt_reg[0]),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \tx_cnt[1]_i_1 
       (.I0(uart_tx_busy),
        .I1(tx_cnt_reg[0]),
        .I2(tx_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* \PinAttr:I3:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \tx_cnt[2]_i_1 
       (.I0(tx_cnt_reg[1]),
        .I1(tx_cnt_reg[0]),
        .I2(uart_tx_busy),
        .I3(tx_cnt_reg[2]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h0400FFFF)) 
    \tx_cnt[3]_i_1 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[0]),
        .I3(\tx_cnt[3]_i_3_n_0 ),
        .I4(uart_tx_busy),
        .O(tx_cnt0));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \tx_cnt[3]_i_2 
       (.I0(tx_cnt_reg[2]),
        .I1(tx_cnt_reg[0]),
        .I2(tx_cnt_reg[1]),
        .I3(uart_tx_busy),
        .I4(tx_cnt_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \tx_cnt[3]_i_3 
       (.I0(clk_cnt[4]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[5]),
        .I3(clk_cnt[6]),
        .I4(clk_cnt[8]),
        .I5(clk_cnt[7]),
        .O(\tx_cnt[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[0] 
       (.C(sys_clk),
        .CE(tx_cnt0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in__0[0]),
        .Q(tx_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[1] 
       (.C(sys_clk),
        .CE(tx_cnt0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in__0[1]),
        .Q(tx_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[2] 
       (.C(sys_clk),
        .CE(tx_cnt0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in__0[2]),
        .Q(tx_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[3] 
       (.C(sys_clk),
        .CE(tx_cnt0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_0_in__0[3]),
        .Q(tx_cnt_reg[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[0]_i_1 
       (.I0(uart_en_d1),
        .I1(uart_en_d0),
        .I2(uart_din[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[1]_i_1 
       (.I0(uart_en_d1),
        .I1(uart_en_d0),
        .I2(uart_din[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[2]_i_1 
       (.I0(uart_en_d1),
        .I1(uart_en_d0),
        .I2(uart_din[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[3]_i_1 
       (.I0(uart_en_d1),
        .I1(uart_en_d0),
        .I2(uart_din[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[4]_i_1 
       (.I0(uart_en_d1),
        .I1(uart_en_d0),
        .I2(uart_din[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[5]_i_1 
       (.I0(uart_en_d1),
        .I1(uart_en_d0),
        .I2(uart_din[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[6]_i_1 
       (.I0(uart_en_d1),
        .I1(uart_en_d0),
        .I2(uart_din[6]),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_data[7]_i_1 
       (.I0(uart_en_d1),
        .I1(uart_en_d0),
        .I2(uart_din[7]),
        .O(p_1_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[0] 
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_1_in[0]),
        .Q(\tx_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_1_in[1]),
        .Q(data1));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_1_in[2]),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_1_in[3]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_1_in[4]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_1_in[5]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_1_in[6]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(p_1_in[7]),
        .Q(data7));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    tx_flag_i_1
       (.I0(tx_flag_i_4_n_0),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[2]),
        .I4(tx_flag_i_5_n_0),
        .I5(en_flag),
        .O(tx_flag_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tx_flag_i_2
       (.I0(uart_en_d0),
        .I1(uart_en_d1),
        .O(en_flag));
  LUT1 #(
    .INIT(2'h1)) 
    tx_flag_i_3
       (.I0(sys_rst_n),
        .O(tx_flag_i_3_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    tx_flag_i_4
       (.I0(tx_cnt_reg[3]),
        .I1(tx_cnt_reg[2]),
        .I2(tx_cnt_reg[0]),
        .I3(tx_cnt_reg[1]),
        .I4(clk_cnt[8]),
        .I5(clk_cnt[7]),
        .O(tx_flag_i_4_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    tx_flag_i_5
       (.I0(clk_cnt[6]),
        .I1(clk_cnt[5]),
        .I2(clk_cnt[3]),
        .I3(clk_cnt[4]),
        .O(tx_flag_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_flag_reg
       (.C(sys_clk),
        .CE(tx_flag_i_1_n_0),
        .CLR(tx_flag_i_3_n_0),
        .D(en_flag),
        .Q(uart_tx_busy));
  FDCE #(
    .INIT(1'b0)) 
    uart_en_d0_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(uart_en),
        .Q(uart_en_d0));
  FDCE #(
    .INIT(1'b0)) 
    uart_en_d1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(tx_flag_i_3_n_0),
        .D(uart_en_d0),
        .Q(uart_en_d1));
  LUT4 #(
    .INIT(16'h777F)) 
    uart_txd_i_1
       (.I0(uart_tx_busy),
        .I1(tx_cnt_reg[3]),
        .I2(tx_cnt_reg[2]),
        .I3(tx_cnt_reg[1]),
        .O(uart_txd_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFB3F3BFF3B3)) 
    uart_txd_i_2
       (.I0(data7),
        .I1(uart_tx_busy),
        .I2(tx_cnt_reg[3]),
        .I3(uart_txd_i_3_n_0),
        .I4(uart_txd_i_4_n_0),
        .I5(uart_txd_i_5_n_0),
        .O(uart_txd_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    uart_txd_i_3
       (.I0(tx_cnt_reg[0]),
        .I1(tx_cnt_reg[3]),
        .I2(tx_cnt_reg[2]),
        .O(uart_txd_i_3_n_0));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    uart_txd_i_4
       (.I0(data1),
        .I1(\tx_data_reg_n_0_[0] ),
        .I2(tx_cnt_reg[0]),
        .I3(tx_cnt_reg[1]),
        .I4(data2),
        .O(uart_txd_i_4_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    uart_txd_i_5
       (.I0(data4),
        .I1(data6),
        .I2(tx_cnt_reg[1]),
        .I3(data3),
        .I4(tx_cnt_reg[0]),
        .I5(data5),
        .O(uart_txd_i_5_n_0));
  FDPE #(
    .INIT(1'b1)) 
    uart_txd_reg
       (.C(sys_clk),
        .CE(uart_txd_i_1_n_0),
        .D(uart_txd_i_2_n_0),
        .PRE(tx_flag_i_3_n_0),
        .Q(uart_txd));
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
