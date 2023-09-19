//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           ram_rd
// Last modified Date:  2021/8/7 9:20:14
// Last Version:        V1.0
// Descriptions:        RAM������
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2021/8/7 9:20:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ram_rd(
    input            clk        ,   //ʱ���ź�
    input            rst_n      ,   //��λ�źţ��͵�ƽ��Ч
                                    
    //RAM���˿ڲ���                 
    input            rd_flag    ,   //��������־
    input      [7:0] ram_rd_data,   //ram������
    output           ram_rd_en  ,   //�˿�ʹ��
    output reg [5:0] ram_rd_addr    //ram����ַ       
);
//*****************************************************
//**                    main code
//*****************************************************

//����RAMʹ���ź�
assign ram_rd_en = rd_flag;      

//����ַ�ź� ��Χ:0~63        
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)        
        ram_rd_addr <= 6'd0;
    else if(ram_rd_addr < 6'd63 && ram_rd_en)
        ram_rd_addr <= ram_rd_addr + 1'b1;
    else
        ram_rd_addr <= 6'd0;
end

endmodule