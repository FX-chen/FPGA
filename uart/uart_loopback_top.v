
module uart_loopback_top(
    input           sys_clk,           
    input           sys_rst_n,        

   (*mark_debug = "true"*) input           uart_rxd,         
   (*mark_debug = "true"*) output          uart_txd         
    );

//parameter define
parameter  CLK_FREQ = 50000000;      
parameter  UART_BPS = 115200;        
    
//wire define   
(*mark_debug = "true"*)wire       uart_recv_done;         
(*mark_debug = "true"*)wire [7:0] uart_recv_data;            
(*mark_debug = "true"*)wire       uart_send_en;          
(*mark_debug = "true"*)wire [7:0] uart_send_data;            
(*mark_debug = "true"*)wire       uart_tx_busy;             

   
uart_rx #(                          
    .CLK_FREQ       (CLK_FREQ),         
    .UART_BPS       (UART_BPS))     
u_uart_rx(                 
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .uart_rxd       (uart_rxd),
    .uart_done      (uart_recv_done),
    .uart_data      (uart_recv_data)
    );


uart_tx #(                          
    .CLK_FREQ       (CLK_FREQ),        
    .UART_BPS       (UART_BPS))      
u_uart_tx(                 
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
     
    .uart_en        (uart_send_en),
    .uart_din       (uart_send_data),
    .uart_tx_busy   (uart_tx_busy),
    .uart_txd       (uart_txd)
    );
    
  
uart_loopback u_uart_loopback(
    .sys_clk        (sys_clk),             
    .sys_rst_n      (sys_rst_n),           
   
    .recv_done      (uart_recv_done),  
    .recv_data      (uart_recv_data),  
   
    .tx_busy        (uart_tx_busy),       
    .send_en        (uart_send_en),    
    .send_data      (uart_send_data)   
    );
    
endmodule