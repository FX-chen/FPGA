`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/17 22:05:53
// Design Name: 
// Module Name: uart_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define CLOCK 20

module uart_tb();
reg sys_clk;         
reg sys_rst_n;        
reg uart_rxd;
wire uart_txd;
initial begin
	sys_clk <= 1'b0;
	sys_rst_n <= 1'b0;
	uart_rxd = 1'b1;
	#(100*`CLOCK)
	sys_rst_n = 1'b1;
	data_send(0000_1111);
	data_send(1111_0000);
	data_send(1010_1010);
	data_send(1001_1001);
end
always  #(`CLOCK/2) sys_clk <= ~sys_clk;
task data_send;
	input [7:0] data;
	integer i;
	begin 
		uart_rxd <= 1'b0;
		#(434*`CLOCK);
		for(i = 0;i <= 7;i = i+1)begin
			uart_rxd <= data[i];
			#(434*`CLOCK);
		end
		uart_rxd <= 1'b0;
		#(434*`CLOCK);
	end
endtask
uart_loopback_top uart_loopback_top_tb(
	.sys_clk(sys_clk),
	.sys_rst_n(sys_rst_n),
	.uart_rxd(uart_rxd),
	.uart_txd(uart_txd)
);
	
	
endmodule
