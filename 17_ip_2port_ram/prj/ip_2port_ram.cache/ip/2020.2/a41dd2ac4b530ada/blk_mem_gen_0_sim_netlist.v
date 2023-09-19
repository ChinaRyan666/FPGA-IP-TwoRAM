// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 30 16:20:09 2023
// Host        : DESKTOP-HL6DT46 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
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
  (* C_COMMON_CLK = "0" *) 
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
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21216)
`pragma protect data_block
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
G5rsBxpwtkWExNX2
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
