
module uart_recv(
    input			  sys_clk,                  //ϵͳʱ��
    input             sys_rst_n,                //ϵͳ��λ���͵�ƽ��Ч
    
    input             uart_rxd,                 //UART���ն˿�
    output  reg       uart_done,                //����һ֡������ɱ�־
    output  reg [7:0] uart_data                 //���յ�����
    );
    
//parameter define
parameter  CLK_FREQ = 50000000;                //ϵͳʱ��Ƶ��
parameter  UART_BPS = 9600;                    //���ڲ�����
localparam  BPS_CNT  = CLK_FREQ/UART_BPS;       //Ϊ�õ�ָ�������ʣ�
                                                //��Ҫ��ϵͳʱ�Ӽ���BPS_CNT��
//reg define
reg        uart_rxd_d0;
reg        uart_rxd_d1;
reg [15:0] clk_cnt;                             //ϵͳʱ�Ӽ�����
reg [ 3:0] rx_cnt;                              //�������ݼ�����
reg        rx_flag;                             //���չ��̱�־�ź�
reg [ 7:0] rxdata;                              //�������ݼĴ���

//wire define
wire       start_flag;

//*****************************************************
//**                    main code
//*****************************************************
//������ն˿��½���(��ʼλ)���õ�һ��ʱ�����ڵ������ź�
assign  start_flag = uart_rxd_d1 & (~uart_rxd_d0);    

//��UART���ն˿ڵ������ӳ�����ʱ������
always @(posedge sys_clk or negedge sys_rst_n) begin 
    if (!sys_rst_n) begin 
        uart_rxd_d0 <= 1'b0;
        uart_rxd_d1 <= 1'b0;          
    end
    else begin
        uart_rxd_d0  <= uart_rxd;                   
        uart_rxd_d1  <= uart_rxd_d0;
    end   
end

//�������ź�start_flag����ʱ��������չ���           
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n)                                  
        rx_flag <= 1'b0;
    else begin
        if(start_flag)                          //��⵽��ʼλ
            rx_flag <= 1'b1;                    //������չ��̣���־λrx_flag����
                                                //������ֹͣλ�м�ʱ��ֹͣ���չ���
        else if((rx_cnt == 4'd9) && (clk_cnt == BPS_CNT/2))
            rx_flag <= 1'b0;                    //���չ��̽�������־λrx_flag����
        else
            rx_flag <= rx_flag;
    end
end

//������չ��̺�����ϵͳʱ�Ӽ�����
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n)                             
        clk_cnt <= 16'd0;                                  
    else if ( rx_flag ) begin                   //���ڽ��չ���
        if (clk_cnt < BPS_CNT - 1)
            clk_cnt <= clk_cnt + 1'b1;
        else
            clk_cnt <= 16'd0;               	//��ϵͳʱ�Ӽ�����һ�����������ں�����
    end
    else                              				
        clk_cnt <= 16'd0;						//���չ��̽���������������
end

//������չ��̺������������ݼ�����
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n)                             
        rx_cnt  <= 4'd0;
    else if ( rx_flag ) begin                   //���ڽ��չ���
        if (clk_cnt == BPS_CNT - 1)				//��ϵͳʱ�Ӽ�����һ������������
            rx_cnt <= rx_cnt + 1'b1;			//��ʱ�������ݼ�������1
        else
            rx_cnt <= rx_cnt;       
    end
	 else
        rx_cnt  <= 4'd0;						//���չ��̽���������������
end

//���ݽ������ݼ��������Ĵ�uart���ն˿�����
always @(posedge sys_clk or negedge sys_rst_n) begin 
    if ( !sys_rst_n)  
        rxdata <= 8'd0;                                     
    else if(rx_flag)                            //ϵͳ���ڽ��չ���
        if (clk_cnt == BPS_CNT/2) begin         //�ж�ϵͳʱ�Ӽ���������������λ�м�
            case ( rx_cnt )
             4'd1 : rxdata[0] <= uart_rxd_d1;   //�Ĵ�����λ���λ
             4'd2 : rxdata[1] <= uart_rxd_d1;
             4'd3 : rxdata[2] <= uart_rxd_d1;
             4'd4 : rxdata[3] <= uart_rxd_d1;
             4'd5 : rxdata[4] <= uart_rxd_d1;
             4'd6 : rxdata[5] <= uart_rxd_d1;
             4'd7 : rxdata[6] <= uart_rxd_d1;
             4'd8 : rxdata[7] <= uart_rxd_d1;   //�Ĵ�����λ���λ
             default:;                                    
            endcase
        end
        else 
            rxdata <= rxdata;
    else
        rxdata <= 8'd0;
end

//���ݽ�����Ϻ������־�źŲ��Ĵ�������յ�������
always @(posedge sys_clk or negedge sys_rst_n) begin        
    if (!sys_rst_n) begin
        uart_data <= 8'd0;                               
        uart_done <= 1'b0;
    end
    else if(rx_cnt == 4'd9) begin               //�������ݼ�����������ֹͣλʱ           
        uart_data <= rxdata;                    //�Ĵ�������յ�������
        uart_done <= 1'b1;                      //����������ɱ�־λ����
    end
    else begin
        uart_data <= 8'd0;                                   
        uart_done <= 1'b0; 
    end    
end

endmodule	