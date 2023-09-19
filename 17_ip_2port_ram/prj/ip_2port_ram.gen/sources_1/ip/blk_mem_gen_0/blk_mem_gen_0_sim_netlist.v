// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  9 11:30:31 2023
// Host        : DESKTOP-HL6DT46 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA/z2/ip_2port_ram/prj/ip_2port_ram.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21424)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
