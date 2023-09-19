//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           ip_2port_ram
// Last modified Date:  2021/8/7 9:20:14
// Last Version:        V1.0
// Descriptions:        IP��֮˫�˿�RAMʵ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2021/8/7 9:20:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ip_2port_ram(
    input       sys_clk    ,  //ϵͳʱ��
    input       sys_rst_n     //ϵͳ��λ���͵�ƽ��Ч
    );

//wire define
wire             ram_wr_en  ; //�˿�Aʹ��
wire             ram_wr_we  ; //ram�˿�Aдʹ��
wire             ram_rd_en  ; //�˿�Bʹ��
wire             rd_flag    ; //��������־
wire    [5:0]    ram_wr_addr; //ramд��ַ
wire    [7:0]    ram_wr_data; //ramд����
wire    [5:0]    ram_rd_addr; //ram����ַ
wire    [7:0]    ram_rd_data; //ram������
   
//*****************************************************
//**                    main code
//*****************************************************

//RAMдģ��
ram_wr u_ram_wr(
    .clk           (sys_clk    ),
    .rst_n         (sys_rst_n  ),

    .rd_flag       (rd_flag    ),
    .ram_wr_en     (ram_wr_en  ),
    .ram_wr_we     (ram_wr_we  ),
    .ram_wr_addr   (ram_wr_addr),
    .ram_wr_data   (ram_wr_data)
    );

//��˫�˿�RAM
blk_mem_gen_0 u_blk_mem_gen_0 (
  .clka   (sys_clk    ), // input wire clka
  .ena    (ram_wr_en  ), // input wire ena
  .wea    (ram_wr_we  ), // input wire [0 : 0] wea
  .addra  (ram_wr_addr), // input wire [5 : 0] addra
  .dina   (ram_wr_data), // input wire [7 : 0] dina
  .clkb   (sys_clk    ), // input wire clkb
  .enb    (ram_rd_en  ), // input wire enb
  .addrb  (ram_rd_addr), // input wire [5 : 0] addrb
  .doutb  (ram_rd_data)  // output wire [7 : 0] doutb
);

//RAM��ģ��    
ram_rd u_ram_rd(
    .clk           (sys_clk    ),
    .rst_n         (sys_rst_n  ),

    .rd_flag       (rd_flag    ),
    .ram_rd_en     (ram_rd_en  ),
    .ram_rd_addr   (ram_rd_addr),
    .ram_rd_data   (ram_rd_data)
    ); 
   
ila_0 u_ila_0 (
    .clk    (sys_clk    ), // input wire clk
    
    .probe0 (ram_wr_en  ), // input wire [0:0]  probe0  
    .probe1 (ram_wr_we  ), // input wire [0:0]  probe1 
    .probe2 (ram_rd_en  ), // input wire [0:0]  probe2 
    .probe3 (rd_flag    ), // input wire [0:0]  probe3 
    .probe4 (ram_wr_addr), // input wire [5:0]  probe4 
    .probe5 (ram_wr_data), // input wire [7:0]  probe5 
    .probe6 (ram_rd_addr), // input wire [5:0]  probe6 
    .probe7 (ram_rd_data)  // input wire [7:0]  probe7
);

endmodule
