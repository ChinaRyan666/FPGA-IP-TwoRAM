// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May  8 18:05:35 2023
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
Hf3fWEFg7lNPun0i7y/5TlPx7Nk+v4kz
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
