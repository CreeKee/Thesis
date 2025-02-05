// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Feb  3 10:56:01 2025
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
    enb,
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
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
  wire enb;
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
  (* C_HAS_ENB = "1" *) 
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
        .enb(enb),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28384)
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
