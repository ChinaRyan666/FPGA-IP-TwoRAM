# （三）FPGA IP核使用教程——双端口RAM
# 0 致读者

此篇为专栏 **《FPGA学习笔记》** 的第三篇，记录我的学习FPGA的一些开发过程和心得感悟，刚接触FPGA的朋友们可以先去此专栏置顶 [《FPGA零基础入门学习路线》](http://t.csdnimg.cn/T0Qw2)来做最基础的扫盲。

本篇内容基于笔者实际开发过程和正点原子资料撰写，将会详细讲解此FPGA实验的全流程，**诚挚**地欢迎各位读者在评论区或者私信我交流！

本文的工程文件**开源地址**如下（基于ZYNQ7020，大家 **clone** 到本地就可以直接跑仿真，如果要上板请根据自己的开发板更改约束即可）：

> [https://github.com/ChinaRyan666/FPGA-IP-TwoRAM](https://github.com/ChinaRyan666/FPGA-IP-TwoRAM)
# 1 实验任务

本文实验任务是将 **Xilinx BMG IP** 核配置成一个同步的**伪双端口 RAM** 并对其进行读写操作，然后通过仿真观察波形是否正确，最后将设计下载到 **FPGA** 开发板中，并通过在线调试工具对实验结果进行观察。


# 2 RAM IP核简介

**双端口 RAM** 是指拥有两个读写端口的 **RAM**，有**伪双端口 RAM**（一个端口只能读，另一个端口只能写）和**真双端口 RAM**（两个端口都可以进行读写操作）之分。一般当我们需要**同时对存储器进行读写操作**时会使用到**双端口 RAM**，例如有一个 FIFO 存储器，我们需要同时对其进行数据的写入和读出，这时候就需要一个写端口和一个读端口了。接下来我们看下**双端口 RAM 的框图**。

在此专栏的第二讲（上一篇）中我们介绍过了**单端口 RAM** 的框图，本章将带着大家一起了解一下**双端口 RAM** 的框图，为了方便大家进行对比，这里我们将上一章介绍的**单端口 RAM** 的框图也展示出来，如下图所示：

![单端口RAM框图](https://img-blog.csdnimg.cn/3029661fd3344adba8782eed79eae744.png)

首先介绍的是**简单双端口（也称为伪双端口） RAM**，需要注意的是简单双端口 RAM 的**端口 A 只能写不能读**，**端口 B 只能读不能写**。 BMG IP 核配置成**简单双端口 RAM** 的框图如下图所示。

![简单（伪）双端口 RAM 框图](https://img-blog.csdnimg.cn/5c87db30249747a0bb72cdd74a54f342.png)

与**单端口 RAM** 不同的是，**伪双端口 RAM** 输入有两路时钟信号 **CLKA/CLKB**；独立的两组地址信号**ADDRA/ADDRB**； **Port A** 仅提供 **DINA** 写数据总线，作为数据的写入口； **Port B** 仅提供数据读的功能，读出的数据为 **DOUTB**。 这里我们仅对新出现的信号进行讲解，其它信号在单端口 RAM 中已经讲解过了（**详见上一篇博客**），其中不同端口的同名（同功能）信号以 A 和 B 做为区分，各个新端口（这些信号很少使用， 我们一般不用关注）的功能描述如下：

> **INJECTSBITERR**： Inject Single-Bit Error 的简写，即注入单 bit 错误，仅适用于 Xilinx Zynq-7000 和 7 系列芯片的 ECC 配置。
> **INJECTDBITERR**： Inject Double-Bit Error 的简写，即注入双 bit 错误，同样仅适用于 Xilinx Zynq-7000和 7 系列芯片的 ECC 配置。
**SBITERR**： Single-Bit Error 的简写，即单 bit 错误，标记内存中存在的单 bit 错误，该错误已在输出总线上自动更正。
**DBITERR**： Double-Bit Error 的简写，即双 bit 错误，标记内存中存在双 bit 错误，需要注意的是内置的ECC 解码模块不能自动纠正双 bit 错误。
**RDADDRECC**： Read Address for ECC Error output 的简写，即读地址 ECC 错误输出，同样仅适用于 XilinxZynq-7000 和 7 系列芯片的 ECC 配置。


接着介绍一下**真双端口 RAM**，其两个端口（ A 和 B）均可进行读/写操作。 **BMG IP** 核配置成**真双端口 RAM** 的框图如下图所示。

![在这里插入图片描述](https://img-blog.csdnimg.cn/332bbb26efdd451e8abaab8fab2be893.png)

**真双端口 RAM** 提供了两个独立的读写端口（ A 和 B），既可以同时读，也可以同时写，也可以一个读一个写。通过框图对比可以发现，**真双端口 RAM** 只是将单端口 RAM 的所有信号做了一个复制处理，不同端口的同一信号以 A 和 B 作为区分，所以这里我们就不再赘述各个端口的功能了。

下方我们列出了三种静态 RAM 的端口对比图，让大家能更直观的看出各静态 RAM 的端口差异，其中 “√ ” 表示有， “×” 表示无。

![在这里插入图片描述](https://img-blog.csdnimg.cn/d5fa2241541f405db843ab1aa608b9bf.png)

> 通过对比我们可以发现无论是哪种**双端口 RAM**，其**地址线、 时钟线和使能线**等控制信号都有两组，所以**双端口 RAM** 可以实现在不同时钟域下的读/写，且可以同时对不同的地址进行读/写，这便大大提高了我们数据处理的灵活性。
> 但是两组信号线也相应的加大了双端口 RAM 的使用难度，因为**端口使能，读写使能，地址和写数据**等控制信号我们都需要分别给出两组，这样才能驱使两个端口都处于我们需要的工作状态，这里仅凭文字描述大家理解起来可能会有些吃力，所以在下面的内容中我会结合**波形图**进行更详细的讲解。


需要注意的是**在伪双端口模式下我们需要避免读写冲突**；**在真双端口模式下我们需要避免读写冲突和写写冲突**。 下面我们分别看下读写冲突和写写冲突是什么。

 1. **读写冲突：** 即同时刻读写同一地址所出现的冲突，例如理论上我们已经向某个地址写入了新的数据，我们也希望可以同时读到这个地址内新写入的数据，但实际上，这个新数据还没有写入 RAM 中，所以我们读出来的可能是 RAM 默认值，或者是 RAM 该地址中上一次的值，这便是读写冲突。 **读写冲突示意图如下所示：**

![在这里插入图片描述](https://img-blog.csdnimg.cn/c833788e9f77462dbaa462883b5117c9.png)

> 由上图可知当发生**读写冲突**时，**读优先模式**下读出的是读地址中存储的上一个数据；**写优先模式**时读出的是未知的数据“ XX”。

 2. **写写冲突：** 表示两个端口写使能同时有效且写地址相同，此时需要关断一个写，把两个写端口都需要更新的值处理到一个写端口上。切记任何双端口 RAM 都不支持写写冲突。 **写写冲突示意图如下所示：**

![在这里插入图片描述](https://img-blog.csdnimg.cn/58e9a478c6e341a2a9123c42ead47ec7.png)

> 由上图可知当发生**写写冲突**时，发生冲突的地址写入的是未知的数据“XX”。


综上可知，**真双端口 RAM** 的读写更为灵活，但相应的也更加难以驾驭，因为真双端口不仅需要考虑读写冲突，还要考虑写写冲突，而在大部分设计中我们用的都是**伪双端口 RAM**，所以本章我们以伪双端口 RAM的读写为例，讲解一下**如何避免程序中的读写冲突**。 一般发生读写冲突的时候， 我们可以通过**错开读写地址**的方法来避免读写冲突，我们在本次实验中所使用的就是这种方法，在后文中会进行讲解；或者通过**写穿通到读**方法来处理冲突数据，这里我们简单做下讲解，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/c1645c3bf20b4da9925848b6ab07125f.png)

从图中我们可以看出， Cycle 2 时， 读和写地址不同，读可以正常读到数据，但是到 Cycle 3 时，读和写地址相同且读写都有效，此处如果不做特殊处理，那么读数据是无效的。需要我们把**写数据寄存一拍同步到读侧，即把最新的写数据直接赋给读数据**， 这便是写穿通到读。



# 3 程序设计

## 3.1 RAM IP核配置

首先我们创建一个名为 **“ip_2port_ram”** 的空白工程，然后点击 Vivado 软件左侧 **“Flow Navigator”** 栏中的 **“IP Catalog”** ，如下图所示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/1e4082fccd23439ab1c78aef5fb810c7.png)

在 **“IP Catalog”** 窗口的搜索栏中输入 **“Block Memory”** 关键字后，出现唯一匹配的 **“Block Memory Generator”** ，如下图所示（图中出现的两个 IP 核为同一个 BMG IP 核）：

![在这里插入图片描述](https://img-blog.csdnimg.cn/af81ab36c3204647ae849e00f4e1365d.png)

双击 **“Block Memory Generator”** 后弹出 IP 核的配置界面，接着我们就可以对 **BMG IP** 核进行配置了， **“Basic”** 选项卡配置界面如下图所示。

![在这里插入图片描述](https://img-blog.csdnimg.cn/51cd524dc38746d3ac1fa895012c4551.png)

最上面的 **“Component Name”** 一栏可以设置该 IP 元件的名称，这里我们保持默认命名，当然也可以命名为其它方便自己一眼看出其功能的名称。

接着目光回到 **“Basic”** 选项卡上，该选项卡下各参数含义我们在上一章已经做过详细的讲解，本章就不再赘述了。因为本章是创建一个同步的**伪双端口 RAM**，所以 **“Memory Type（存储类型） ”** 我们选择 **“Simple Dual Port RAM（伪双端口 RAM）”** ， 并勾选 **“ Common Clock（同步时钟） ”** 选项， 其余设置保存默认即可。下面我们对 **“ECC Options”** 做一下扩充讲解，感兴趣的朋友可以看一下。

>当**存储类型（Memory Type）** 设置为伪双端口时才可以用 **ECC**， **ECC** 的主要作用是单 bit 纠错和双 bit 检错，在启用后我们可以在写操作期间将 **单 bit （Single Bit Error Injection）** 或 **双 bit （Double Bit Error Injection）** 错误注入到指定位置。这里我们不需要注入错误码，所以保存默认选项 **“No ECC”** 即可。

接下来我们对 **“Port A Options”** 和 **“Port B Options”** 选项卡进行配置，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/7b6b5f42c1244bce81e415dc453cf409.png)

![在这里插入图片描述](https://img-blog.csdnimg.cn/5c2aebb5c0a04ddeb3c02dd2243066aa.png)

**“Port A Options”** 和 **“Port B Options”** 选项卡下各参数含义在上一篇博客中我已经做过详细的讲解，还不熟悉的朋友可以回顾一下上一篇博客的内容。

> 需要注意的是，只有**端口 A** 的写数据位宽和写深度是可以任意配置的。**端口 B** 的读数据位宽必须与**端口 A** 的写数据位宽存在比例关系（上一节中已讲解过支持的比例关系）；**端口 B** 的读深度是当**端口 A** 的写数据位宽、**端口 A** 的写深度和对**端口 B** 的读数据位宽确定后，自动确定的。


接下来是 **“Other Options”** 选项卡，同上一章一样，该选项卡无需配置，保存默认即可。

最后一个是 **“Summary”** 选项卡，该界面显示了我们配置的存储器的类型，消耗的 BRAM 资源等信息，我们直接点击 **“OK”** 按钮完成 **BMG IP** 核的配置，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/bc16679e2d314ff78a70aba1212a4f0f.png)

接着就弹出了 **“Generate Output Products”** 窗口，我们直接点击 **“Generate”** 即可，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/b750d2bb01b44077b7a6500c69c63a00.png)

## 3.2 顶层模块设计

>本次实验的目的是为了将 **Xilinx BMG IP** 核配置成一个**伪双端口 RAM** 并对其进行读写操作，因此可以给模块命名为 **ip_2port_ram**。因为伪双端口的数据线，地址线及其他信号线都是相互独立的，所以这里我们将读写分为两个子模块，分别命名为 **ram_rd（读模块）** 和 **ram_wr（写模块）**；系统时钟和系统复位信号大家已经很熟悉了，这里就不再了赘述；本次的实验结果我们仍是通过在线调试工具进行观察，所以没有需要输出到 IO 上的信号。由上述分析我们可以画出一个大致的模块框图，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/4bc877d8099149cbab489073991020aa.png)


**模块端口与功能描述**如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/b72fa8d81d444738bc73eff68511fe81.png)

### 3.2.1 绘制波形图

首先我们梳理一下顶层模块中各个信号的波形变化。因为本次实验中的信号皆为内部信号，所以为了方便区分，我们用**绿色**标记**端口 A（写端口）**相关的信号名，用**红色**标记**端口 B（读端口）**的信号名，用**蓝色**标记**两个端口之间的交互信号**。这里我们以读写 64 个（0~63）数据为例，绘制出如下波形图：

![在这里插入图片描述](https://img-blog.csdnimg.cn/a264cdbecb6446c7b998db5faecded39.png)

>由上图可以看出，除了和伪双端口有关的信号外，我们还引入了一个**读启动信号（ rd_flag）**，该信号的作用是错开两个端口的启动时间，以此达到错开读写地址，防止读写冲突的目的。

回到波形图上，为了能读出有效数据，我们先使能了**端口 A**，因为**端口 A** 只能进行写操作，且我们也需要它一直向 **RAM** 中写入数据，所以当**端口 A** 使能后，我们就一直拉高 **WEA 信号**，让其一直处于写状态，并从 0 开始累加地址，向 0~ 63 地址中循环写入数据。

当写完一半的数据时，我们通过拉高 **rd_flag 信号**来使能**端口 B**，让**端口 B** 开始工作，并从 0 地址开始循环读出 0~ 63 地址内存储的数据。因为启动两个端口的时间存在误差，且读写的时钟速率相同，所以**读写地址就会相应的错开**，以此达到避免读写冲突的目的。

这里有几点需要大家**注意：**

> 1.伪双端口 RAM 时，因为**端口 A** 只能写不能读，所以 **WEA** 可以理解为**端口 A** 的写使能信号（高有效）。
> 2.哪怕我们只错开一个地址，也是可以避免读写冲突的，这里我们在写完一半的数据时拉高 **rd_flag 信号**，只是为了方便我们进行观察而多错开了一些地址而已。
> 3. **端口 B** 只能读，其没有像 **WEA** 一样的读写使能信号，所以当端口使能后，便一直处于读状态。


### 3.2.2 代码编写

因为本次实验除了调用 **BMG IP** 核外还需要例化一个 **读模块（ram_rd）** 和一个 **写模块（ram_wr）**，所以我们需要创建一个顶层模块来例化 IP 核与读/写模块，这里我们可以将顶层模块命名为 **ip_2port_ram**，代码如下：

```
module ip_2port_ram(
    input       sys_clk    ,  //系统时钟
    input       sys_rst_n     //系统复位，低电平有效
    );

//wire define
wire             ram_wr_en  ; //端口A使能
wire             ram_wr_we  ; //ram端口A写使能
wire             ram_rd_en  ; //端口B使能
wire             rd_flag    ; //读启动标志
wire    [5:0]    ram_wr_addr; //ram写地址
wire    [7:0]    ram_wr_data; //ram写数据
wire    [5:0]    ram_rd_addr; //ram读地址
wire    [7:0]    ram_rd_data; //ram读数据
   
//*****************************************************
//**                    main code
//*****************************************************

//RAM写模块
ram_wr u_ram_wr(
    .clk           (sys_clk    ),
    .rst_n         (sys_rst_n  ),

    .rd_flag       (rd_flag    ),
    .ram_wr_en     (ram_wr_en  ),
    .ram_wr_we     (ram_wr_we  ),
    .ram_wr_addr   (ram_wr_addr),
    .ram_wr_data   (ram_wr_data)
    );

//简单双端口RAM
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

//RAM读模块    
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
```

可以看出 **ip_2port_ram** 顶层模块只是例化了 **IP 核（blk_mem_gen_0）**、**读模块（ram_rd）** 和**写模块（ram_wr）**，其中写模块负责产生 **RAM IP** 核写操作所需的所有数据、地址、写使能信号以及启动读模块的标志信号（**rd_flag**）；读模块负责产生 **RAM IP** 核读操作所需的地址，并将读出的数据也连接至读模块。

## 3.3 RAM 写模块设计
首先介绍下 **RAM 写模块**的设计， 在 **RAM 写模块**中， 我们的输入信号主要有系统时钟信号和系统复位信号； 输出有控制写 RAM 所需的 **ram_wr_en（写端口使能）**、 **ram_wr_we（写使能）**、 **ram_wr_addr（写地址）** 和 **ram_wr_data（写数据）** 这四个信号，以及控制读模块启动 **rd_flag（读启动）** 信号。由上述分析绘制出如下图所示的模块框图：


![在这里插入图片描述](https://img-blog.csdnimg.cn/f135d4505ca445279229ef86d091309f.png)


**模块端口与功能描述**如下图所示：



![在这里插入图片描述](https://img-blog.csdnimg.cn/0908d523e63e446eae79ab01ad6b33e3.png)

### 3.3.1 绘制波形图

在编写代码前，我们先大致梳理一下**模块的端口时序**，并绘制出如下波形图：

![在这里插入图片描述](https://img-blog.csdnimg.cn/c57871c100b64972bb534694aff572d7.png)


因为我们需要一直向 **RAM** 中写入数据，所以当复位结束后，我们就将 **ram_wr_en（写端口使能）** 和**ram_wr_we（ ram 写使能）** 一直置为高。当写使能拉高后，写地址一直在 0~63 之间循环计数，并向对应的 **RAM** 地址中写入数据，当写地址第一次计数到 31 时，将 **rd_flag** 信号拉高并保持，以启动读模块进行读操作。

### 3.3.2 代码编写

**ram_wr** 模块用于产生 **RAM** 写操作所需的信号以及读启动信号，其代码如下所示：

```
module ram_wr(
    input            clk         , //时钟信号
    input            rst_n       , //复位信号，低电平有效
                                    
    //RAM写端口操作                
    output           ram_wr_we   , //ram写使能
    output reg       ram_wr_en   , //端口使能
    output reg       rd_flag     , //读启动信号
    output reg [5:0] ram_wr_addr , //ram写地址        
    output     [7:0] ram_wr_data   //ram写数据
);

//*****************************************************
//**                    main code
//*****************************************************

//ram_wr_we为高电平表示写数据
assign ram_wr_we = ram_wr_en ;

//写数据与写地址相同，因位宽不等，所以高位补0
assign ram_wr_data = {2'b0,ram_wr_addr} ;

//控制RAM使能信号
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        ram_wr_en <= 1'b0;
    else 
        ram_wr_en <= 1'b1;
end

//写地址信号 范围:0~63        
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)        
        ram_wr_addr <= 6'd0;
    else if(ram_wr_addr < 6'd63 && ram_wr_we)
        ram_wr_addr <= ram_wr_addr + 1'b1;
    else
        ram_wr_addr <= 6'd0;
end  

//当写入32个数据（0~31）后，拉高读启动信号
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        rd_flag <= 1'b0;
    else if(ram_wr_addr == 6'd31)  
        rd_flag <= 1'b1;
    else
        rd_flag <= rd_flag;
end             

endmodule
```

因为写模块要循环向 **ram** 的 0~63 地址中写入数据，所以当写端口使能后，**写使能信号**就一直为高，如代码第 18 行所示。

当**写使能信号**拉高后，写地址就会在 0~ 63 之间循环计数（如代码第 32~39 行所示），并向 **RAM** 中写入相应的数据（如代码第 21 行所示）。

在第 42~49 行代码中，为了避免读写冲突，我们引入了**读启动信号（rd_flag）**，当地址第一次计数到 31 时，拉高 **rd_flag** 信号，使读模块开始工作，这样做就可以将读地址和写地址错开，防止在同一时刻对同一地址进行读和写。

## 3.4 RAM 读模块设计

首先介绍下 **RAM** 读模块的设计， 在 **RAM** 读模块中， 我们的输入信号主要有系统时钟信号、 系统复位信号、 从 RAM 中读出的数据（**ram_rd_data**） 以及我们自己定义的读启动标志信号（**rd_flag**） ； 输出有控制读 **RAM** 所需的 **ram_rd_en**（读端口使能） 和 **ram_rd_addr**（读地址）这两个信号。由上述分析绘制出如下图所示的模块框图：

![在这里插入图片描述](https://img-blog.csdnimg.cn/38504626c22542e086d187b6bf0fdcd6.png)

**模块端口与功能描述**如下图所示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/1ed530e7c89e4319b011efb9ed6cdb02.png)

### 3.4.1 绘制波形图

在编写代码前，我们先大致梳理一下模块的端口时序，并绘制出如下波形图：


![在这里插入图片描述](https://img-blog.csdnimg.cn/6e1f0c90bce94e298d4c4b17038d54f8.png)


因为我们需要一直从 **RAM** 中读出数据，所以当复位结束且读启动信号拉高后，我们就将 **ram_rd_en（读端口使能）** 一直置为高。当读端口使能后，读地址就会一直在 0~63 之间循环计数，并读出对应 **RAM** 地址中的数据，需要注意的是**读数据的输出会比读地址晚一个时钟周期**。

### 3.4.2 代码编写


**ram_rd** 模块用于产生 **RAM** 读操作所需的信号，并接引从 **RAM** 中读出的数据，其代码如下所示：


```
module ram_rd(
    input            clk        ,   //时钟信号
    input            rst_n      ,   //复位信号，低电平有效
                                    
    //RAM读端口操作                 
    input            rd_flag    ,   //读启动标志
    input      [7:0] ram_rd_data,   //ram读数据
    output           ram_rd_en  ,   //端口使能
    output reg [5:0] ram_rd_addr    //ram读地址       
);
//*****************************************************
//**                    main code
//*****************************************************

//控制RAM使能信号
assign ram_rd_en = rd_flag;      

//读地址信号 范围:0~63        
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)        
        ram_rd_addr <= 6'd0;
    else if(ram_rd_addr < 6'd63 && ram_rd_en)
        ram_rd_addr <= ram_rd_addr + 1'b1;
    else
        ram_rd_addr <= 6'd0;
end

endmodule
```

如代码第 16 行所示， 当**读启动信号**拉高后，读端口将被使能； 当**读端口使能**后，读地址会在 0~ 63 之间循环计算，从而读出对应 RAM 地址中的数据（如代码第 18~26 行） 。

# 4 仿真验证
## 4.1  编写TestBench

我们接下来先对代码进行仿真，因为本章实验我们只有**系统时钟**和**系统复位**这两个输入信号，所以仿真文件也只需要编写这两个信号的激励即可， **TestBench** 代码如下：


```
`timescale 1ns / 1ps        //仿真单位/仿真精度

module tb_ip_2port_ram();

//parameter define
parameter  CLK_PERIOD = 20; //时钟周期 20ns

//reg define
reg     sys_clk;
reg     sys_rst_n;

//信号初始化
initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    #200
    sys_rst_n = 1'b1;
end

//产生时钟
always #(CLK_PERIOD/2) sys_clk = ~sys_clk;

ip_2port_ram u_ip_2port_ram(
    .sys_clk          (sys_clk        ),
    .sys_rst_n        (sys_rst_n      ) 
    );

endmodule

```


## 4.2 代码仿真

通过仿真我们得到了以下波形图：

![在这里插入图片描述](https://img-blog.csdnimg.cn/2d2f0836b0534d46983db4b18cd19510.png)

>可以看出在写入一定的数据后，读启动信号（**rd_flag**）被拉高，这时候读端口才被使能（即 **ram_rd_en** 拉高），此后读模块开始读出 **ram** 中的数据。

接着我们展开波形图看一下细节，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/bd42340cb76745a7bbeca43e00170007.png)

>由上图可知， **ram_wr_we** 信号拉高，说明此时是对 **ram** 进行写操作。 **ram_wr_we** 信号拉高之后，地址和数据都是从 0 开始累加，也就说当 **ram** 地址为 0 时，写入的数据也是 0；当 **ram** 地址为 1 时，写入的数据也是 1。
当地址为 32 时，读启动信号（**rd_flag**）被拉高，此时将读端口使能，开始读出 ram 中的数据，这里大家可能会有一个疑惑，明明我们代码中是在写地址计数到 31 的时候给 **rd_flag** 赋值为 1（即拉高）的，但是仿真结果为什么是在 32 的时候才拉高呢？这是因为在时序逻辑中， **rd_flag** 的赋值是在写地址计数到 31时的下一个时钟信号的上升沿完成的，所以我们在仿真中看到的结果就是在写地址为 32 时， **rd_flag** 才被拉高。

我们接着看后续的波形，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/8f1be05f7daa4220b5a2d1fbf6ea8713.png)

>由上图可知，经过 **rd_flag** 将读写地址错开后，写端口和读端口在同时对 **ram** 进行相应的操作，并没有发生读写冲突的情况，且读操作和写操作恒定相差 32 个地址。

由仿真分析可知我们不仅成功实现了**双端口 ram** 的读写功能，还有效**避免了读写冲突**的问题。




# 5 下载验证

## 5.1 引脚约束

在仿真验证完成后，接下来对引脚进行分配，并上板验证。 本实验中，系统时钟、按键复位的管脚分配 （**根据自己的开发板来改写**） 如下图所示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/b6cc178bfb26409ba099a1d9b750f244.png)


对应的 **XDC 约束语句**如下所示：


```
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]
```

Vivado 软件中 **IO Planning** 界面如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/f5802aac165a472ba19690196a438e87.png)

## 5.2 添加 ila IP 核进行在线调试

接下来添加 **ILA IP** 核，将 **ram_wr_en**（1 位）、 **ram_wr_we**（1 位）、 **ram_rd_en**（1 位）、 **rd_flag**（1位）、 **ram_wr_addr**（6 位）、 **ram_wr_data**（8 位）、 **ram_rd_addr**（6 位）和 **ram_rd_data**（8 位）信号添加至观察列表中，添加 **ILA IP** 核的方法这里不再赘述，本例程是将 **ILA** 例化在了顶层模块 **（ip_2port_ram）** 中，例化代码如下所示：


```
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
```

## 5.3 上板验证

编译工程并生成比特流文件后，将下载器一端连接电脑，另一端与开发板上的 **JTAG** 下载口连接，连接电源线，并打开开发板的电源开关。

点击 Vivado 左侧 **“Flow Navigator”** 窗口最下面的 **“Open Hardware Manager”** ，如果此时 Vivado 软件识别到了下载器，则点击 **“Hardware”** 窗口中 **“Progam Device”** ，在弹出的界面中选择 **“Program”** 下载程序。

双端口 **ram** 的读写在 **ILA** 中观察到的波形如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/38f15de4ec204955a474bdb7bcf95e52.png)

![在这里插入图片描述](https://img-blog.csdnimg.cn/8c6fb6d395bc4e259aec7dd15c83ceb3.png)


![在这里插入图片描述](https://img-blog.csdnimg.cn/1625f1f6aa034b3e918391ae37773c75.png)


由在线调试观察可知，上板验证结果与仿真结果是一致的，**写端口和读端口能够同时对 ram 进行相应的操作，且没有发生读写冲突现象**，至此说明了 **IP** 核之**双端口** **RAM** 实验验证成功！






# 6 总结

本章节我们主要讲解了**双端口 RAM 的概念**、**使用场景**、**读写冲突处理**，也介绍了 Vivado 软件中如何将 **BGM IP** 核配置成伪**双端口 RAM** 的方法，并通过**错时**的方法**避免**了双端口 RAM 发生**读写冲突**的情况。希望对您有所帮助，有兴趣的朋友可以进一步联系我交流。







微博：沂舟Ryan ([@沂舟Ryan 的个人主页 - 微博 ](https://weibo.com/u/7619968945))

GitHub：[ChinaRyan666](https://github.com/ChinaRyan666)

微信公众号：沂舟无限进步

如果对您有帮助的话请点赞支持下吧！



**集中一点，登峰造极。**

