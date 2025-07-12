// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Jul  9 11:28:27 2025
// Host        : mukund-HP-Pavilion-Laptop-14-dv2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ led_blk_mem_gen_0_1_sim_netlist.v
// Design      : led_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "led_blk_mem_gen_0_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
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
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7261 mW" *) 
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
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19296)
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
