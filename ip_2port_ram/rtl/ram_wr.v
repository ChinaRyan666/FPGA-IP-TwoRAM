//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           ram_wr
// Last modified Date:  2021/8/7 9:20:14
// Last Version:        V1.0
// Descriptions:        RAMд����
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2021/8/7 9:20:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ram_wr(
    input            clk         , //ʱ���ź�
    input            rst_n       , //��λ�źţ��͵�ƽ��Ч
                                    
    //RAMд�˿ڲ���                
    output           ram_wr_we   , //ramдʹ��
    output reg       ram_wr_en   , //�˿�ʹ��
    output reg       rd_flag     , //�������ź�
    output reg [5:0] ram_wr_addr , //ramд��ַ        
    output     [7:0] ram_wr_data   //ramд����
);

//*****************************************************
//**                    main code
//*****************************************************

//ram_wr_weΪ�ߵ�ƽ��ʾд����
assign ram_wr_we = ram_wr_en ;

//д������д��ַ��ͬ����λ���ȣ����Ը�λ��0
assign ram_wr_data = {2'b0,ram_wr_addr} ;

//����RAMʹ���ź�
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        ram_wr_en <= 1'b0;
    else 
        ram_wr_en <= 1'b1;
end

//д��ַ�ź� ��Χ:0~63        
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)        
        ram_wr_addr <= 6'd0;
    else if(ram_wr_addr < 6'd63 && ram_wr_we)
        ram_wr_addr <= ram_wr_addr + 1'b1;
    else
        ram_wr_addr <= 6'd0;
end  

//��д��32�����ݣ�0~31�������߶������ź�
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        rd_flag <= 1'b0;
    else if(ram_wr_addr == 6'd31)  
        rd_flag <= 1'b1;
    else
        rd_flag <= rd_flag;
end             

endmodule