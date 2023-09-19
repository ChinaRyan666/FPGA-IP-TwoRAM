// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 30 15:43:53 2023
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
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
JzQj9N1BmgP1Lj4b
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
