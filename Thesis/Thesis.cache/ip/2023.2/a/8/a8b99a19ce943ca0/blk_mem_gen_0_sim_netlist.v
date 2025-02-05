// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Feb  3 11:50:00 2025
// Host        : WINDOWS-RV84OD0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9043 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28112)
`pragma protect data_block
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
9bqX6SbJZdznE0c=
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
