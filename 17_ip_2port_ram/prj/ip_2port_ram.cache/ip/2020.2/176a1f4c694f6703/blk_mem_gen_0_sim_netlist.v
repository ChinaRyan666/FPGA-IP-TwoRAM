// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  9 11:30:31 2023
// Host        : DESKTOP-HL6DT46 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21456)
`pragma protect data_block
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
YlagZZsfGJI90BxeiTIUmgSovE7bNoc4
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
