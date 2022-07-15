
module uart_loopback_top(
    input           sys_clk,            //�ⲿ50Mʱ��
    input           sys_rst_n,          //�ⲿ��λ�źţ�����Ч

   (*mark_debug = "true"*) input           uart_rxd,           //UART���ն˿�
   (*mark_debug = "true"*) output          uart_txd            //UART���Ͷ˿�
    );

//parameter define
parameter  CLK_FREQ = 50000000;         //����ϵͳʱ��Ƶ��
parameter  UART_BPS = 115200;           //���崮�ڲ�����
    
//wire define   
(*mark_debug = "true"*)wire       uart_recv_done;              //UART�������
(*mark_debug = "true"*)wire [7:0] uart_recv_data;              //UART��������
(*mark_debug = "true"*)wire       uart_send_en;                //UART����ʹ��
(*mark_debug = "true"*)wire [7:0] uart_send_data;              //UART��������
(*mark_debug = "true"*)wire       uart_tx_busy;                //UART����æ״̬��־

//*****************************************************
//**                    main code
//*****************************************************

//���ڽ���ģ��     
uart_recv #(                          
    .CLK_FREQ       (CLK_FREQ),         //����ϵͳʱ��Ƶ��
    .UART_BPS       (UART_BPS))         //���ô��ڽ��ղ�����
u_uart_recv(                 
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .uart_rxd       (uart_rxd),
    .uart_done      (uart_recv_done),
    .uart_data      (uart_recv_data)
    );

//���ڷ���ģ��    
uart_send #(                          
    .CLK_FREQ       (CLK_FREQ),         //����ϵͳʱ��Ƶ��
    .UART_BPS       (UART_BPS))         //���ô��ڷ��Ͳ�����
u_uart_send(                 
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
     
    .uart_en        (uart_send_en),
    .uart_din       (uart_send_data),
    .uart_tx_busy   (uart_tx_busy),
    .uart_txd       (uart_txd)
    );
    
//���ڻ���ģ��    
uart_loop u_uart_loop(
    .sys_clk        (sys_clk),             
    .sys_rst_n      (sys_rst_n),           
   
    .recv_done      (uart_recv_done),   //����һ֡������ɱ�־�ź�
    .recv_data      (uart_recv_data),   //���յ�����
   
    .tx_busy        (uart_tx_busy),     //����æ״̬��־      
    .send_en        (uart_send_en),     //����ʹ���ź�
    .send_data      (uart_send_data)    //����������
    );
    
endmodule