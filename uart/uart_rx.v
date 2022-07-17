module uart_rx(
    input sys_clk,
    input sys_rst_n,
    input uart_rxd,

    output reg uart_done,
    output reg [7:0] uart_data
);

    parameter CLK_FREQ = 50000000;  //50MHZ
    parameter UART_BPS = 115200;
    localparam BPS_CNT = CLK_FREQ/UART_BPS;

    reg uart_rxd_d0;
    reg uart_rxd_d1; // get negedge 

    reg rx_flag;

    reg [15:0] clk_cnt;  //434 -- 2^9+
    reg [3:0] rx_cnt;

    reg [7:0] rx_data;

    wire start_flag;
    
    // start_flag
    assign start_flag = (~uart_rxd_d0) & uart_rxd_d1;
    
    always @(posedge sys_clk or negedge sys_rst_n)begin
        if(sys_rst_n == 1'b0)begin
            uart_rxd_d0 <= 1'b0;
            uart_rxd_d1 <= 1'b0;
        end
        else begin
            uart_rxd_d0 <= uart_rxd;
            uart_rxd_d1 <= uart_rxd_d0;
        end
    end

    //rx_flag
    always @(posedge sys_clk or negedge sys_rst_n)begin
        if(sys_rst_n == 1'b0)begin
            rx_flag <= 1'b0;
        end
        else begin
            if(start_flag == 1'b1)begin
                rx_flag <= 1'b1;
            end
            else if((rx_cnt == 4'd9) && (clk_cnt == BPS_CNT/2))begin
                rx_flag <= 1'b0;
            end
            else 
                rx_flag <= rx_flag;
        end

    end

    //clk_cnt
    always @(posedge sys_clk or negedge sys_rst_n)begin
        if(!sys_rst_n)begin
            clk_cnt <= 16'd0;
        end
        else if(rx_flag)begin
            if(clk_cnt < BPS_CNT)begin
                clk_cnt <= clk_cnt + 1'b1;
            end
            else begin
                clk_cnt <= 16'd0;
            end
        end
        else begin
            clk_cnt <= 16'd0;
        end
    end

    //rx_cnt
    always @(posedge sys_clk or negedge sys_rst_n)begin
        if(!sys_rst_n )begin
            rx_cnt <= 4'd0;
        end
        else if(rx_flag)begin
            if(clk_cnt == BPS_CNT)begin
                rx_cnt <= rx_cnt + 1'b1;
            end
            else begin
                rx_cnt <= rx_cnt;
            end
        end
        else begin
            rx_cnt <= 4'd0;
        end
    end

    always @(posedge sys_clk or negedge sys_rst_n)begin
        if(!sys_rst_n)begin
            rx_data <= 8'b0000_0000;
        end
        else if(rx_flag)begin
            if(clk_cnt == BPS_CNT/2)begin
                case(rx_cnt)
                4'd1: begin rx_data[0] <= uart_rxd_d1; end
                4'd2: begin rx_data[1] <= uart_rxd_d1; end
                4'd3: begin rx_data[2] <= uart_rxd_d1; end
                4'd4: begin rx_data[3] <= uart_rxd_d1; end
                4'd5: begin rx_data[4] <= uart_rxd_d1; end
                4'd6: begin rx_data[5] <= uart_rxd_d1; end
                4'd7: begin rx_data[6] <= uart_rxd_d1; end
                4'd8: begin rx_data[7] <= uart_rxd_d1; end
                default : ;
                endcase
            end
            else 
                rx_data <= rx_data;
        end
        else 
            rx_data <= 8'b0000_0000;

    end

    always @(posedge sys_clk or negedge sys_rst_n)begin
        if(!sys_rst_n)begin
            uart_data <= 2'h00;
            uart_done <= 1'b0;
        end
        else if(rx_flag)begin
            if(rx_cnt == 4'd9)begin
                uart_data <= rx_data;
                uart_done <= 1'd1;
            end
            else begin
                uart_data <= uart_data;
                uart_done <= 1'd0;
            end

        end
        else begin
            uart_data <= 8'b0000_0000;
            uart_done <= 1'b0;
        end

    end

endmodule