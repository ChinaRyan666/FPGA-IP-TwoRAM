// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 30 16:29:25 2023
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
  wire clkb;
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21760)
`pragma protect data_block
+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
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
