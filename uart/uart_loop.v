
module uart_loop(
    input	         sys_clk,                   //ϵͳʱ��
    input            sys_rst_n,                 //ϵͳ��λ���͵�ƽ��Ч
     
    input            recv_done,                 //����һ֡������ɱ�־
    input      [7:0] recv_data,                 //���յ�����
     
    input            tx_busy,                   //����æ״̬��־      
    output reg       send_en,                   //����ʹ���ź�
    output reg [7:0] send_data                  //����������
    );

//reg define
reg recv_done_d0;
reg recv_done_d1;
reg tx_ready;

//wire define
wire recv_done_flag;

//*****************************************************
//**                    main code
//*****************************************************

//����recv_done�����أ��õ�һ��ʱ�����ڵ������ź�
assign recv_done_flag = (~recv_done_d1) & recv_done_d0;
                                                 
//�Է���ʹ���ź�recv_done�ӳ�����ʱ������
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin
        recv_done_d0 <= 1'b0;                                  
        recv_done_d1 <= 1'b0;
    end                                                      
    else begin                                               
        recv_done_d0 <= recv_done;                               
        recv_done_d1 <= recv_done_d0;                            
    end
end

//�жϽ�������źţ����ڴ��ڷ���ģ�����ʱ��������ʹ���ź�
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin
        tx_ready  <= 1'b0; 
        send_en   <= 1'b0;
        send_data <= 8'd0;
    end                                                      
    else begin                                               
        if(recv_done_flag)begin                 //��⴮�ڽ��յ�����
            tx_ready  <= 1'b1;                  //׼���������͹���
            send_en   <= 1'b0;
            send_data <= recv_data;             //�Ĵ洮�ڽ��յ�����
        end
        else if(tx_ready && (~tx_busy)) begin   //��⴮�ڷ���ģ�����
            tx_ready <= 1'b0;                   //׼�����̽���
            send_en  <= 1'b1;                   //���߷���ʹ���ź�
        end
    end
end

endmodule 