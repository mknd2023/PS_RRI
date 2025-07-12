//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Jul  9 15:04:38 2025
//Host        : mukund-HP-Pavilion-Laptop-14-dv2xxx running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target led.bd
//Design      : led
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ADC1_imp_X6SGIM
   (Dout,
    adc_clk,
    adc_clk_n_i,
    adc_clk_p_i,
    adc_csn_o,
    adc_dat_a_i,
    adc_dat_b_i,
    m_axis_tvalid);
  output [15:0]Dout;
  output adc_clk;
  input adc_clk_n_i;
  input adc_clk_p_i;
  output adc_csn_o;
  input [13:0]adc_dat_a_i;
  input [13:0]adc_dat_b_i;
  output m_axis_tvalid;

  wire [15:0]Dout;
  wire adc_clk;
  wire adc_clk_n_i;
  wire adc_clk_p_i;
  wire adc_csn_o;
  wire [13:0]adc_dat_a_i;
  wire [13:0]adc_dat_b_i;
  wire [31:0]axis_red_pitaya_adc_0_m_axis_tdata;
  wire m_axis_tvalid;

  led_axis_red_pitaya_adc_0_1 axis_red_pitaya_adc_0
       (.adc_clk(adc_clk),
        .adc_clk_n(adc_clk_n_i),
        .adc_clk_p(adc_clk_p_i),
        .adc_csn(adc_csn_o),
        .adc_dat_a(adc_dat_a_i),
        .adc_dat_b(adc_dat_b_i),
        .m_axis_tdata(axis_red_pitaya_adc_0_m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid));
  led_xlslice_1_0 xlslice_1
       (.Din(axis_red_pitaya_adc_0_m_axis_tdata),
        .Dout(Dout));
endmodule

module ADC1_to_FFT_imp_RTM6AL
   (S_AXIS_t_valid,
    aclk,
    clka,
    dina,
    doutb,
    finished,
    reset);
  input S_AXIS_t_valid;
  input aclk;
  input clka;
  input [15:0]dina;
  output [15:0]doutb;
  output finished;
  input reset;

  wire S_AXIS_t_valid;
  wire aclk;
  wire [9:0]adc2bram_0_addra;
  wire adc2bram_0_finished;
  wire adc2bram_0_wea;
  wire [9:0]bra2bram_0_addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire finished;
  wire reset;

  led_adc2bram_0_0 adc2bram_0
       (.S_AXIS_t_valid(S_AXIS_t_valid),
        .aclk(clka),
        .addra(adc2bram_0_addra),
        .finished(adc2bram_0_finished),
        .reset(reset),
        .wea(adc2bram_0_wea));
  led_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(adc2bram_0_addra),
        .addrb(bra2bram_0_addra),
        .clka(clka),
        .clkb(aclk),
        .dina(dina),
        .doutb(doutb),
        .wea(adc2bram_0_wea));
  led_bra2bram_0_0 bra2bram_0
       (.aclk(aclk),
        .addra(bra2bram_0_addra),
        .finished(finished),
        .reset(adc2bram_0_finished));
endmodule

module Buffers_imp_4SFQVE
   (daisy_n_i,
    daisy_n_o,
    daisy_p_i,
    daisy_p_o);
  input [1:0]daisy_n_i;
  output [1:0]daisy_n_o;
  input [1:0]daisy_p_i;
  output [1:0]daisy_p_o;

  wire [1:0]daisy_n_i;
  wire [1:0]daisy_n_o;
  wire [1:0]daisy_p_i;
  wire [1:0]daisy_p_o;
  wire [1:0]util_ds_buf_0_IBUF_OUT;

  led_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(daisy_n_i),
        .IBUF_DS_P(daisy_p_i),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  led_util_ds_buf_1_0 util_ds_buf_1
       (.OBUF_DS_N(daisy_n_o),
        .OBUF_DS_P(daisy_p_o),
        .OBUF_IN(util_ds_buf_0_IBUF_OUT));
endmodule

module FFT_imp_1YFQNWH
   (In0,
    aclk,
    m_axis_data_tdata,
    m_axis_data_tlast_0,
    m_axis_data_tvalid,
    s_axis_data_tlast);
  input [15:0]In0;
  input aclk;
  output [63:0]m_axis_data_tdata;
  output m_axis_data_tlast_0;
  output m_axis_data_tvalid;
  input s_axis_data_tlast;

  wire [15:0]In0;
  wire aclk;
  wire [63:0]m_axis_data_tdata;
  wire m_axis_data_tlast_0;
  wire m_axis_data_tvalid;
  wire s_axis_data_tlast;
  wire [31:0]xlconcat_4_dout;
  wire [15:0]xlconstant_5_dout;
  wire [0:0]xlconstant_7_dout;
  wire [0:0]xlconstant_8_dout;

  led_xfft_0_1 xfft_0
       (.aclk(aclk),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(m_axis_data_tlast_0),
        .m_axis_data_tready(xlconstant_7_dout),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_config_tvalid(1'b0),
        .s_axis_data_tdata(xlconcat_4_dout),
        .s_axis_data_tlast(s_axis_data_tlast),
        .s_axis_data_tvalid(xlconstant_8_dout));
  led_xlconcat_4_0 xlconcat_4
       (.In0(In0),
        .In1(xlconstant_5_dout),
        .dout(xlconcat_4_dout));
  led_xlconstant_5_0 xlconstant_5
       (.dout(xlconstant_5_dout));
  led_xlconstant_7_0 xlconstant_7
       (.dout(xlconstant_7_dout));
  led_xlconstant_8_0 xlconstant_8
       (.dout(xlconstant_8_dout));
endmodule

module FFT_to_PSD_imp_3TXZ4T
   (CLK,
    Din,
    S,
    dout);
  input CLK;
  input [63:0]Din;
  output [63:0]S;
  output [0:0]dout;

  wire CLK;
  wire [63:0]Din;
  wire [63:0]S;
  wire [0:0]dout;
  wire [63:0]mult_gen_0_P;
  wire [63:0]mult_gen_1_P;
  wire [31:0]xlslice_3_Dout;
  wire [31:0]xlslice_4_Dout;

  led_c_addsub_0_0 c_addsub_0
       (.A(mult_gen_1_P),
        .B(mult_gen_0_P),
        .CE(dout),
        .CLK(CLK),
        .S(S));
  led_mult_gen_0_0 mult_gen_0
       (.A(xlslice_4_Dout),
        .B(xlslice_4_Dout),
        .CLK(CLK),
        .P(mult_gen_0_P));
  led_mult_gen_1_0 mult_gen_1
       (.A(xlslice_3_Dout),
        .B(xlslice_3_Dout),
        .CLK(CLK),
        .P(mult_gen_1_P));
  led_xlconstant_0_1 xlconstant_0
       (.dout(dout));
  led_xlslice_3_0 xlslice_3
       (.Din(Din),
        .Dout(xlslice_3_Dout));
  led_xlslice_4_0 xlslice_4
       (.Din(Din),
        .Dout(xlslice_4_Dout));
endmodule

module GPIOCONTROLLER_imp_4YGD6G
   (BRAM_PORTA_addr,
    BRAM_PORTA_clk,
    BRAM_PORTA_din,
    BRAM_PORTA_dout,
    BRAM_PORTA_en,
    BRAM_PORTA_rst,
    BRAM_PORTA_we,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_clk,
    BRAM_PORTB_0_din,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en,
    BRAM_PORTB_0_rst,
    BRAM_PORTB_0_we,
    Dout,
    S_AXI1_araddr,
    S_AXI1_arburst,
    S_AXI1_arcache,
    S_AXI1_arid,
    S_AXI1_arlen,
    S_AXI1_arlock,
    S_AXI1_arprot,
    S_AXI1_arready,
    S_AXI1_arsize,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awburst,
    S_AXI1_awcache,
    S_AXI1_awid,
    S_AXI1_awlen,
    S_AXI1_awlock,
    S_AXI1_awprot,
    S_AXI1_awready,
    S_AXI1_awsize,
    S_AXI1_awvalid,
    S_AXI1_bid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rid,
    S_AXI1_rlast,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wlast,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    gpio2_io_i,
    s_axi_aclk,
    s_axi_aresetn);
  output [12:0]BRAM_PORTA_addr;
  output BRAM_PORTA_clk;
  output [31:0]BRAM_PORTA_din;
  input [31:0]BRAM_PORTA_dout;
  output BRAM_PORTA_en;
  output BRAM_PORTA_rst;
  output [3:0]BRAM_PORTA_we;
  output [12:0]BRAM_PORTB_0_addr;
  output BRAM_PORTB_0_clk;
  output [31:0]BRAM_PORTB_0_din;
  input [31:0]BRAM_PORTB_0_dout;
  output BRAM_PORTB_0_en;
  output BRAM_PORTB_0_rst;
  output [3:0]BRAM_PORTB_0_we;
  output [0:0]Dout;
  input [31:0]S_AXI1_araddr;
  input [1:0]S_AXI1_arburst;
  input [3:0]S_AXI1_arcache;
  input [11:0]S_AXI1_arid;
  input [7:0]S_AXI1_arlen;
  input S_AXI1_arlock;
  input [2:0]S_AXI1_arprot;
  output S_AXI1_arready;
  input [2:0]S_AXI1_arsize;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  input [1:0]S_AXI1_awburst;
  input [3:0]S_AXI1_awcache;
  input [11:0]S_AXI1_awid;
  input [7:0]S_AXI1_awlen;
  input S_AXI1_awlock;
  input [2:0]S_AXI1_awprot;
  output S_AXI1_awready;
  input [2:0]S_AXI1_awsize;
  input S_AXI1_awvalid;
  output [11:0]S_AXI1_bid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  output [11:0]S_AXI1_rid;
  output S_AXI1_rlast;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  input S_AXI1_wlast;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input [31:0]gpio2_io_i;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [12:0]BRAM_PORTA_addr;
  wire BRAM_PORTA_clk;
  wire [31:0]BRAM_PORTA_din;
  wire [31:0]BRAM_PORTA_dout;
  wire BRAM_PORTA_en;
  wire BRAM_PORTA_rst;
  wire [3:0]BRAM_PORTA_we;
  wire [12:0]BRAM_PORTB_0_addr;
  wire BRAM_PORTB_0_clk;
  wire [31:0]BRAM_PORTB_0_din;
  wire [31:0]BRAM_PORTB_0_dout;
  wire BRAM_PORTB_0_en;
  wire BRAM_PORTB_0_rst;
  wire [3:0]BRAM_PORTB_0_we;
  wire [0:0]Dout;
  wire [31:0]S_AXI1_araddr;
  wire [1:0]S_AXI1_arburst;
  wire [3:0]S_AXI1_arcache;
  wire [11:0]S_AXI1_arid;
  wire [7:0]S_AXI1_arlen;
  wire S_AXI1_arlock;
  wire [2:0]S_AXI1_arprot;
  wire S_AXI1_arready;
  wire [2:0]S_AXI1_arsize;
  wire S_AXI1_arvalid;
  wire [31:0]S_AXI1_awaddr;
  wire [1:0]S_AXI1_awburst;
  wire [3:0]S_AXI1_awcache;
  wire [11:0]S_AXI1_awid;
  wire [7:0]S_AXI1_awlen;
  wire S_AXI1_awlock;
  wire [2:0]S_AXI1_awprot;
  wire S_AXI1_awready;
  wire [2:0]S_AXI1_awsize;
  wire S_AXI1_awvalid;
  wire [11:0]S_AXI1_bid;
  wire S_AXI1_bready;
  wire [1:0]S_AXI1_bresp;
  wire S_AXI1_bvalid;
  wire [31:0]S_AXI1_rdata;
  wire [11:0]S_AXI1_rid;
  wire S_AXI1_rlast;
  wire S_AXI1_rready;
  wire [1:0]S_AXI1_rresp;
  wire S_AXI1_rvalid;
  wire [31:0]S_AXI1_wdata;
  wire S_AXI1_wlast;
  wire S_AXI1_wready;
  wire [3:0]S_AXI1_wstrb;
  wire S_AXI1_wvalid;
  wire [31:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire [31:0]gpio2_io_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  (* BMM_INFO_ADDRESS_SPACE = "byte  0x40000000 32 > led blk_mem_gen_1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  led_axi_bram_ctrl_0_1 axi_bram_ctrl_0
       (.bram_addr_a(BRAM_PORTA_addr),
        .bram_addr_b(BRAM_PORTB_0_addr),
        .bram_clk_a(BRAM_PORTA_clk),
        .bram_clk_b(BRAM_PORTB_0_clk),
        .bram_en_a(BRAM_PORTA_en),
        .bram_en_b(BRAM_PORTB_0_en),
        .bram_rddata_a(BRAM_PORTA_dout),
        .bram_rddata_b(BRAM_PORTB_0_dout),
        .bram_rst_a(BRAM_PORTA_rst),
        .bram_rst_b(BRAM_PORTB_0_rst),
        .bram_we_a(BRAM_PORTA_we),
        .bram_we_b(BRAM_PORTB_0_we),
        .bram_wrdata_a(BRAM_PORTA_din),
        .bram_wrdata_b(BRAM_PORTB_0_din),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(S_AXI1_araddr[12:0]),
        .s_axi_arburst(S_AXI1_arburst),
        .s_axi_arcache(S_AXI1_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(S_AXI1_arid),
        .s_axi_arlen(S_AXI1_arlen),
        .s_axi_arlock(S_AXI1_arlock),
        .s_axi_arprot(S_AXI1_arprot),
        .s_axi_arready(S_AXI1_arready),
        .s_axi_arsize(S_AXI1_arsize),
        .s_axi_arvalid(S_AXI1_arvalid),
        .s_axi_awaddr(S_AXI1_awaddr[12:0]),
        .s_axi_awburst(S_AXI1_awburst),
        .s_axi_awcache(S_AXI1_awcache),
        .s_axi_awid(S_AXI1_awid),
        .s_axi_awlen(S_AXI1_awlen),
        .s_axi_awlock(S_AXI1_awlock),
        .s_axi_awprot(S_AXI1_awprot),
        .s_axi_awready(S_AXI1_awready),
        .s_axi_awsize(S_AXI1_awsize),
        .s_axi_awvalid(S_AXI1_awvalid),
        .s_axi_bid(S_AXI1_bid),
        .s_axi_bready(S_AXI1_bready),
        .s_axi_bresp(S_AXI1_bresp),
        .s_axi_bvalid(S_AXI1_bvalid),
        .s_axi_rdata(S_AXI1_rdata),
        .s_axi_rid(S_AXI1_rid),
        .s_axi_rlast(S_AXI1_rlast),
        .s_axi_rready(S_AXI1_rready),
        .s_axi_rresp(S_AXI1_rresp),
        .s_axi_rvalid(S_AXI1_rvalid),
        .s_axi_wdata(S_AXI1_wdata),
        .s_axi_wlast(S_AXI1_wlast),
        .s_axi_wready(S_AXI1_wready),
        .s_axi_wstrb(S_AXI1_wstrb),
        .s_axi_wvalid(S_AXI1_wvalid));
  led_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(gpio2_io_i),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(S_AXI_araddr[8:0]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr[8:0]),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  led_xlslice_0_0 xlslice_0
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(Dout));
endmodule

module PS7_imp_1B3MBKO
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FCLK_CLK0,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ARESETN);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output FCLK_CLK0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output [31:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [11:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [11:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [11:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input [11:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [0:0]S00_ARESETN;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FCLK_CLK0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [31:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [31:0]M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [11:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire M01_AXI_arready;
  wire [2:0]M01_AXI_arsize;
  wire M01_AXI_arvalid;
  wire [31:0]M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [11:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire M01_AXI_awready;
  wire [2:0]M01_AXI_awsize;
  wire M01_AXI_awvalid;
  wire [11:0]M01_AXI_bid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire [11:0]M01_AXI_rid;
  wire M01_AXI_rlast;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wlast;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [0:0]S00_ARESETN;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire processing_system7_0_FCLK_RESET0_N;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;

  led_axi_interconnect_0_1 axi_interconnect_0
       (.ACLK(FCLK_CLK0),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(FCLK_CLK0),
        .M00_ARESETN(S00_ARESETN),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .M01_ACLK(FCLK_CLK0),
        .M01_ARESETN(S00_ARESETN),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arburst(M01_AXI_arburst),
        .M01_AXI_arcache(M01_AXI_arcache),
        .M01_AXI_arid(M01_AXI_arid),
        .M01_AXI_arlen(M01_AXI_arlen),
        .M01_AXI_arlock(M01_AXI_arlock),
        .M01_AXI_arprot(M01_AXI_arprot),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arsize(M01_AXI_arsize),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awburst(M01_AXI_awburst),
        .M01_AXI_awcache(M01_AXI_awcache),
        .M01_AXI_awid(M01_AXI_awid),
        .M01_AXI_awlen(M01_AXI_awlen),
        .M01_AXI_awlock(M01_AXI_awlock),
        .M01_AXI_awprot(M01_AXI_awprot),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awsize(M01_AXI_awsize),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bid(M01_AXI_bid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rid(M01_AXI_rid),
        .M01_AXI_rlast(M01_AXI_rlast),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wlast(M01_AXI_wlast),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .S00_ACLK(FCLK_CLK0),
        .S00_ARESETN(S00_ARESETN),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  led_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(S00_ARESETN),
        .slowest_sync_clk(FCLK_CLK0));
  (* BMM_INFO_PROCESSOR = "arm > led GPIOCONTROLLER/axi_bram_ctrl_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  led_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
endmodule

(* HW_HANDOFF = "led.hwdef" *) (* core_generation_info = "led,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=led,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=51,numReposBlks=40,numNonXlnxBlks=1,numHierBlks=11,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=3,da_clkrst_cnt=3,da_ps7_cnt=1,synth_mode=None}" *) 
module led
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    Vaux0_v_n,
    Vaux0_v_p,
    Vaux1_v_n,
    Vaux1_v_p,
    Vaux8_v_n,
    Vaux8_v_p,
    Vaux9_v_n,
    Vaux9_v_p,
    Vp_Vn_v_n,
    Vp_Vn_v_p,
    adc_clk_n_i,
    adc_clk_p_i,
    adc_csn_o,
    adc_dat_a_i,
    adc_dat_b_i,
    adc_enc_n_o,
    adc_enc_p_o,
    dac_clk_o,
    dac_dat_o,
    dac_pwm_o,
    dac_rst_o,
    dac_sel_o,
    dac_wrt_o,
    daisy_n_i,
    daisy_n_o,
    daisy_p_i,
    daisy_p_o,
    exp_n_alex,
    exp_n_tri_io,
    exp_p_trg,
    exp_p_tri_io,
    led_o);
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* x_interface_mode = "Master" *) (* x_interface_parameter = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* x_interface_info = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* x_interface_info = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* x_interface_mode = "Master" *) (* x_interface_parameter = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* x_interface_info = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* x_interface_info = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* x_interface_info = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* x_interface_info = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* x_interface_info = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  input Vaux0_v_n;
  input Vaux0_v_p;
  input Vaux1_v_n;
  input Vaux1_v_p;
  input Vaux8_v_n;
  input Vaux8_v_p;
  input Vaux9_v_n;
  input Vaux9_v_p;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.VP_VN_V_N DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.VP_VN_V_N, LAYERED_METADATA undef" *) input Vp_Vn_v_n;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.VP_VN_V_P DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.VP_VN_V_P, LAYERED_METADATA undef" *) input Vp_Vn_v_p;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK_N_I CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.ADC_CLK_N_I, CLK_DOMAIN led_adc_clk_n_i, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input adc_clk_n_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK_P_I CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.ADC_CLK_P_I, CLK_DOMAIN led_adc_clk_p_i, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input adc_clk_p_i;
  output adc_csn_o;
  input [13:0]adc_dat_a_i;
  input [13:0]adc_dat_b_i;
  output adc_enc_n_o;
  output adc_enc_p_o;
  output dac_clk_o;
  output [13:0]dac_dat_o;
  output [3:0]dac_pwm_o;
  output dac_rst_o;
  output dac_sel_o;
  output dac_wrt_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.DAISY_N_I CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.DAISY_N_I, CLK_DOMAIN led_daisy_n_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [1:0]daisy_n_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.DAISY_N_O CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.DAISY_N_O, CLK_DOMAIN led_daisy_n_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output [1:0]daisy_n_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.DAISY_P_I CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.DAISY_P_I, CLK_DOMAIN led_daisy_p_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [1:0]daisy_p_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.DAISY_P_O CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.DAISY_P_O, CLK_DOMAIN led_daisy_n_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output [1:0]daisy_p_o;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.EXP_N_ALEX DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.EXP_N_ALEX, LAYERED_METADATA undef" *) input [4:0]exp_n_alex;
  inout [7:0]exp_n_tri_io;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.EXP_P_TRG DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.EXP_P_TRG, LAYERED_METADATA undef" *) input exp_p_trg;
  inout [7:0]exp_p_tri_io;
  output [7:0]led_o;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FFT_m_axis_data_tlast_0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [12:0]GPIOCONTROLLER_BRAM_PORTA_ADDR;
  wire GPIOCONTROLLER_BRAM_PORTA_CLK;
  wire [31:0]GPIOCONTROLLER_BRAM_PORTA_DIN;
  wire [31:0]GPIOCONTROLLER_BRAM_PORTA_DOUT;
  wire GPIOCONTROLLER_BRAM_PORTA_EN;
  wire GPIOCONTROLLER_BRAM_PORTA_RST;
  wire [3:0]GPIOCONTROLLER_BRAM_PORTA_WE;
  wire [12:0]GPIOCONTROLLER_BRAM_PORTB_0_ADDR;
  wire GPIOCONTROLLER_BRAM_PORTB_0_CLK;
  wire [31:0]GPIOCONTROLLER_BRAM_PORTB_0_DIN;
  wire [31:0]GPIOCONTROLLER_BRAM_PORTB_0_DOUT;
  wire GPIOCONTROLLER_BRAM_PORTB_0_EN;
  wire GPIOCONTROLLER_BRAM_PORTB_0_RST;
  wire [3:0]GPIOCONTROLLER_BRAM_PORTB_0_WE;
  wire [0:0]GPIOCONTROLLER_Dout;
  wire [9:0]accum_0_addread;
  wire [3:0]accum_0_f;
  wire [63:0]accum_0_wrdata;
  wire accumol_0_b;
  wire accumol_0_o;
  wire adc_clk_n_i;
  wire adc_clk_p_i;
  wire adc_csn_o;
  wire [13:0]adc_dat_a_i;
  wire [13:0]adc_dat_b_i;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M01_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M01_AXI_ARCACHE;
  wire [11:0]axi_interconnect_0_M01_AXI_ARID;
  wire [7:0]axi_interconnect_0_M01_AXI_ARLEN;
  wire axi_interconnect_0_M01_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M01_AXI_ARPROT;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M01_AXI_ARSIZE;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M01_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M01_AXI_AWCACHE;
  wire [11:0]axi_interconnect_0_M01_AXI_AWID;
  wire [7:0]axi_interconnect_0_M01_AXI_AWLEN;
  wire axi_interconnect_0_M01_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M01_AXI_AWPROT;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M01_AXI_AWSIZE;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire [11:0]axi_interconnect_0_M01_AXI_BID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire [11:0]axi_interconnect_0_M01_AXI_RID;
  wire axi_interconnect_0_M01_AXI_RLAST;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WLAST;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire axis_red_pitaya_adc_0_adc_clk;
  wire axis_red_pitaya_adc_0_m_axis_tvalid;
  wire [15:0]blk_mem_gen_0_doutb;
  wire [63:0]blk_mem_gen_0_doutb1;
  wire bra2bram_0_finished;
  wire [63:0]c_addsub_0_S;
  wire [63:0]c_addsub_1_S;
  wire [1:0]daisy_n_i;
  wire [1:0]daisy_n_o;
  wire [1:0]daisy_p_i;
  wire [1:0]daisy_p_o;
  wire [9:0]outcou_0_accou;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK0;
  wire [63:0]xfft_0_m_axis_data_tdata;
  wire [31:0]xlconcat_0_dout;
  wire [31:0]xlconcat_1_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_0_dout1;
  wire [1:0]xlconstant_1_dout;
  wire [19:0]xlconstant_2_dout;
  wire [30:0]xlconstant_3_dout;
  wire [31:0]xlslice_0_Dout;
  wire [15:0]xlslice_1_Dout;
  wire [31:0]xlslice_1_Dout1;

  ADC1_imp_X6SGIM ADC1
       (.Dout(xlslice_1_Dout),
        .adc_clk(axis_red_pitaya_adc_0_adc_clk),
        .adc_clk_n_i(adc_clk_n_i),
        .adc_clk_p_i(adc_clk_p_i),
        .adc_csn_o(adc_csn_o),
        .adc_dat_a_i(adc_dat_a_i),
        .adc_dat_b_i(adc_dat_b_i),
        .m_axis_tvalid(axis_red_pitaya_adc_0_m_axis_tvalid));
  ADC1_to_FFT_imp_RTM6AL ADC1_to_FFT
       (.S_AXIS_t_valid(axis_red_pitaya_adc_0_m_axis_tvalid),
        .aclk(axis_red_pitaya_adc_0_adc_clk),
        .clka(axis_red_pitaya_adc_0_adc_clk),
        .dina(xlslice_1_Dout),
        .doutb(blk_mem_gen_0_doutb),
        .finished(bra2bram_0_finished),
        .reset(GPIOCONTROLLER_Dout));
  Buffers_imp_4SFQVE Buffers
       (.daisy_n_i(daisy_n_i),
        .daisy_n_o(daisy_n_o),
        .daisy_p_i(daisy_p_i),
        .daisy_p_o(daisy_p_o));
  FFT_imp_1YFQNWH FFT
       (.In0(blk_mem_gen_0_doutb),
        .aclk(axis_red_pitaya_adc_0_adc_clk),
        .m_axis_data_tdata(xfft_0_m_axis_data_tdata),
        .m_axis_data_tlast_0(FFT_m_axis_data_tlast_0),
        .s_axis_data_tlast(bra2bram_0_finished));
  FFT_to_PSD_imp_3TXZ4T FFT_to_PSD
       (.CLK(axis_red_pitaya_adc_0_adc_clk),
        .Din(xfft_0_m_axis_data_tdata),
        .S(c_addsub_0_S),
        .dout(xlconstant_0_dout));
  GPIOCONTROLLER_imp_4YGD6G GPIOCONTROLLER
       (.BRAM_PORTA_addr(GPIOCONTROLLER_BRAM_PORTA_ADDR),
        .BRAM_PORTA_clk(GPIOCONTROLLER_BRAM_PORTA_CLK),
        .BRAM_PORTA_din(GPIOCONTROLLER_BRAM_PORTA_DIN),
        .BRAM_PORTA_dout(GPIOCONTROLLER_BRAM_PORTA_DOUT),
        .BRAM_PORTA_en(GPIOCONTROLLER_BRAM_PORTA_EN),
        .BRAM_PORTA_rst(GPIOCONTROLLER_BRAM_PORTA_RST),
        .BRAM_PORTA_we(GPIOCONTROLLER_BRAM_PORTA_WE),
        .BRAM_PORTB_0_addr(GPIOCONTROLLER_BRAM_PORTB_0_ADDR),
        .BRAM_PORTB_0_clk(GPIOCONTROLLER_BRAM_PORTB_0_CLK),
        .BRAM_PORTB_0_din(GPIOCONTROLLER_BRAM_PORTB_0_DIN),
        .BRAM_PORTB_0_dout(GPIOCONTROLLER_BRAM_PORTB_0_DOUT),
        .BRAM_PORTB_0_en(GPIOCONTROLLER_BRAM_PORTB_0_EN),
        .BRAM_PORTB_0_rst(GPIOCONTROLLER_BRAM_PORTB_0_RST),
        .BRAM_PORTB_0_we(GPIOCONTROLLER_BRAM_PORTB_0_WE),
        .Dout(GPIOCONTROLLER_Dout),
        .S_AXI1_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .S_AXI1_arburst(axi_interconnect_0_M01_AXI_ARBURST),
        .S_AXI1_arcache(axi_interconnect_0_M01_AXI_ARCACHE),
        .S_AXI1_arid(axi_interconnect_0_M01_AXI_ARID),
        .S_AXI1_arlen(axi_interconnect_0_M01_AXI_ARLEN),
        .S_AXI1_arlock(axi_interconnect_0_M01_AXI_ARLOCK),
        .S_AXI1_arprot(axi_interconnect_0_M01_AXI_ARPROT),
        .S_AXI1_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .S_AXI1_arsize(axi_interconnect_0_M01_AXI_ARSIZE),
        .S_AXI1_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .S_AXI1_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .S_AXI1_awburst(axi_interconnect_0_M01_AXI_AWBURST),
        .S_AXI1_awcache(axi_interconnect_0_M01_AXI_AWCACHE),
        .S_AXI1_awid(axi_interconnect_0_M01_AXI_AWID),
        .S_AXI1_awlen(axi_interconnect_0_M01_AXI_AWLEN),
        .S_AXI1_awlock(axi_interconnect_0_M01_AXI_AWLOCK),
        .S_AXI1_awprot(axi_interconnect_0_M01_AXI_AWPROT),
        .S_AXI1_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .S_AXI1_awsize(axi_interconnect_0_M01_AXI_AWSIZE),
        .S_AXI1_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .S_AXI1_bid(axi_interconnect_0_M01_AXI_BID),
        .S_AXI1_bready(axi_interconnect_0_M01_AXI_BREADY),
        .S_AXI1_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .S_AXI1_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .S_AXI1_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .S_AXI1_rid(axi_interconnect_0_M01_AXI_RID),
        .S_AXI1_rlast(axi_interconnect_0_M01_AXI_RLAST),
        .S_AXI1_rready(axi_interconnect_0_M01_AXI_RREADY),
        .S_AXI1_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .S_AXI1_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .S_AXI1_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .S_AXI1_wlast(axi_interconnect_0_M01_AXI_WLAST),
        .S_AXI1_wready(axi_interconnect_0_M01_AXI_WREADY),
        .S_AXI1_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .S_AXI1_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .S_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .S_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .S_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .S_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .S_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .S_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .S_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .S_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .S_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .S_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .gpio2_io_i(xlconcat_1_dout),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn));
  PS7_imp_1B3MBKO PS7
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_interconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_interconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arid(axi_interconnect_0_M01_AXI_ARID),
        .M01_AXI_arlen(axi_interconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_interconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_interconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_interconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_interconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_interconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awid(axi_interconnect_0_M01_AXI_AWID),
        .M01_AXI_awlen(axi_interconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_interconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_interconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_interconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bid(axi_interconnect_0_M01_AXI_BID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rid(axi_interconnect_0_M01_AXI_RID),
        .M01_AXI_rlast(axi_interconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_interconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn));
  led_accumol_0_0 accumol_0
       (.addread(accum_0_addread),
        .b(accumol_0_b),
        .clk(xlconstant_0_dout),
        .h(accum_0_f),
        .o(accumol_0_o),
        .r(GPIOCONTROLLER_Dout),
        .rdata(blk_mem_gen_0_doutb1),
        .tlast(FFT_m_axis_data_tlast_0),
        .wrdata(accum_0_wrdata));
  led_blk_mem_gen_0_2 blk_mem_gen_08
       (.addra(outcou_0_accou),
        .addrb(accum_0_addread),
        .clka(xlconstant_0_dout),
        .clkb(xlconstant_0_dout),
        .dina(c_addsub_1_S),
        .doutb(blk_mem_gen_0_doutb1),
        .wea(accumol_0_o));
  led_blk_mem_gen_1_2 blk_mem_gen_1
       (.addra(xlconcat_0_dout),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,GPIOCONTROLLER_BRAM_PORTA_ADDR}),
        .clka(xlconstant_0_dout),
        .clkb(GPIOCONTROLLER_BRAM_PORTA_CLK),
        .dina(xlslice_1_Dout1),
        .dinb(GPIOCONTROLLER_BRAM_PORTA_DIN),
        .doutb(GPIOCONTROLLER_BRAM_PORTA_DOUT),
        .ena(xlconstant_0_dout1),
        .enb(GPIOCONTROLLER_BRAM_PORTA_EN),
        .rsta(1'b0),
        .rstb(GPIOCONTROLLER_BRAM_PORTA_RST),
        .wea(accum_0_f),
        .web(GPIOCONTROLLER_BRAM_PORTA_WE));
  led_blk_mem_gen_1_3 blk_mem_gen_2
       (.addra(xlconcat_0_dout),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,GPIOCONTROLLER_BRAM_PORTB_0_ADDR}),
        .clka(xlconstant_0_dout),
        .clkb(GPIOCONTROLLER_BRAM_PORTB_0_CLK),
        .dina(xlslice_0_Dout),
        .dinb(GPIOCONTROLLER_BRAM_PORTB_0_DIN),
        .doutb(GPIOCONTROLLER_BRAM_PORTB_0_DOUT),
        .ena(xlconstant_0_dout1),
        .enb(GPIOCONTROLLER_BRAM_PORTB_0_EN),
        .rsta(1'b0),
        .rstb(GPIOCONTROLLER_BRAM_PORTB_0_RST),
        .wea(accum_0_f),
        .web(GPIOCONTROLLER_BRAM_PORTB_0_WE));
  led_c_addsub_1_0 c_addsub_1
       (.A(c_addsub_0_S),
        .B(accum_0_wrdata),
        .CE(xlconstant_0_dout),
        .CLK(axis_red_pitaya_adc_0_adc_clk),
        .S(c_addsub_1_S));
  led_outcou_0_0 outcou_0
       (.accou(outcou_0_accou),
        .clk(xlconstant_0_dout),
        .reset(GPIOCONTROLLER_Dout),
        .tlast(FFT_m_axis_data_tlast_0));
  led_xlconcat_0_1 xlconcat_0
       (.In0(xlconstant_1_dout),
        .In1(accum_0_addread),
        .In2(xlconstant_2_dout),
        .dout(xlconcat_0_dout));
  led_xlconcat_1_1 xlconcat_1
       (.In0(accumol_0_b),
        .In1(xlconstant_3_dout),
        .dout(xlconcat_1_dout));
  led_xlconstant_0_2 xlconstant_0
       (.dout(xlconstant_0_dout1));
  led_xlconstant_1_2 xlconstant_1
       (.dout(xlconstant_1_dout));
  led_xlconstant_2_1 xlconstant_2
       (.dout(xlconstant_2_dout));
  led_xlconstant_3_1 xlconstant_3
       (.dout(xlconstant_3_dout));
  led_xlslice_0_2 xlslice_0
       (.Din(accum_0_wrdata),
        .Dout(xlslice_0_Dout));
  led_xlslice_0_3 xlslice_1
       (.Din(accum_0_wrdata),
        .Dout(xlslice_1_Dout1));
endmodule

module led_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [11:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [11:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [11:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input [11:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [31:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire M01_ACLK;
  wire M01_ARESETN;
  wire [31:0]M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [11:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire M01_AXI_arready;
  wire [2:0]M01_AXI_arsize;
  wire M01_AXI_arvalid;
  wire [31:0]M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [11:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire M01_AXI_awready;
  wire [2:0]M01_AXI_awsize;
  wire M01_AXI_awvalid;
  wire [11:0]M01_AXI_bid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire [11:0]M01_AXI_rid;
  wire M01_AXI_rlast;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wlast;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [31:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [11:0]S00_AXI_arid;
  wire [3:0]S00_AXI_arlen;
  wire [1:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [31:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [11:0]S00_AXI_awid;
  wire [3:0]S00_AXI_awlen;
  wire [1:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire [11:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [11:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [11:0]S00_AXI_wid;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [11:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [11:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [11:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [11:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [11:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [11:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [11:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [11:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [23:12]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [23:12]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [11:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [11:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  m00_couplers_imp_129B5QP m00_couplers
       (.M_ACLK(M00_ACLK),
        .M_ARESETN(M00_ARESETN),
        .M_AXI_araddr(M00_AXI_araddr),
        .M_AXI_arready(M00_AXI_arready),
        .M_AXI_arvalid(M00_AXI_arvalid),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_rdata(M00_AXI_rdata),
        .M_AXI_rready(M00_AXI_rready),
        .M_AXI_rresp(M00_AXI_rresp),
        .M_AXI_rvalid(M00_AXI_rvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_NFL2L0 m01_couplers
       (.M_ACLK(M01_ACLK),
        .M_ARESETN(M01_ARESETN),
        .M_AXI_araddr(M01_AXI_araddr),
        .M_AXI_arburst(M01_AXI_arburst),
        .M_AXI_arcache(M01_AXI_arcache),
        .M_AXI_arid(M01_AXI_arid),
        .M_AXI_arlen(M01_AXI_arlen),
        .M_AXI_arlock(M01_AXI_arlock),
        .M_AXI_arprot(M01_AXI_arprot),
        .M_AXI_arready(M01_AXI_arready),
        .M_AXI_arsize(M01_AXI_arsize),
        .M_AXI_arvalid(M01_AXI_arvalid),
        .M_AXI_awaddr(M01_AXI_awaddr),
        .M_AXI_awburst(M01_AXI_awburst),
        .M_AXI_awcache(M01_AXI_awcache),
        .M_AXI_awid(M01_AXI_awid),
        .M_AXI_awlen(M01_AXI_awlen),
        .M_AXI_awlock(M01_AXI_awlock),
        .M_AXI_awprot(M01_AXI_awprot),
        .M_AXI_awready(M01_AXI_awready),
        .M_AXI_awsize(M01_AXI_awsize),
        .M_AXI_awvalid(M01_AXI_awvalid),
        .M_AXI_bid(M01_AXI_bid),
        .M_AXI_bready(M01_AXI_bready),
        .M_AXI_bresp(M01_AXI_bresp),
        .M_AXI_bvalid(M01_AXI_bvalid),
        .M_AXI_rdata(M01_AXI_rdata),
        .M_AXI_rid(M01_AXI_rid),
        .M_AXI_rlast(M01_AXI_rlast),
        .M_AXI_rready(M01_AXI_rready),
        .M_AXI_rresp(M01_AXI_rresp),
        .M_AXI_rvalid(M01_AXI_rvalid),
        .M_AXI_wdata(M01_AXI_wdata),
        .M_AXI_wlast(M01_AXI_wlast),
        .M_AXI_wready(M01_AXI_wready),
        .M_AXI_wstrb(M01_AXI_wstrb),
        .M_AXI_wvalid(M01_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_954ZJF s00_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK),
        .S_ARESETN(S00_ARESETN),
        .S_AXI_araddr(S00_AXI_araddr),
        .S_AXI_arburst(S00_AXI_arburst),
        .S_AXI_arcache(S00_AXI_arcache),
        .S_AXI_arid(S00_AXI_arid),
        .S_AXI_arlen(S00_AXI_arlen),
        .S_AXI_arlock(S00_AXI_arlock),
        .S_AXI_arprot(S00_AXI_arprot),
        .S_AXI_arqos(S00_AXI_arqos),
        .S_AXI_arready(S00_AXI_arready),
        .S_AXI_arsize(S00_AXI_arsize),
        .S_AXI_arvalid(S00_AXI_arvalid),
        .S_AXI_awaddr(S00_AXI_awaddr),
        .S_AXI_awburst(S00_AXI_awburst),
        .S_AXI_awcache(S00_AXI_awcache),
        .S_AXI_awid(S00_AXI_awid),
        .S_AXI_awlen(S00_AXI_awlen),
        .S_AXI_awlock(S00_AXI_awlock),
        .S_AXI_awprot(S00_AXI_awprot),
        .S_AXI_awqos(S00_AXI_awqos),
        .S_AXI_awready(S00_AXI_awready),
        .S_AXI_awsize(S00_AXI_awsize),
        .S_AXI_awvalid(S00_AXI_awvalid),
        .S_AXI_bid(S00_AXI_bid),
        .S_AXI_bready(S00_AXI_bready),
        .S_AXI_bresp(S00_AXI_bresp),
        .S_AXI_bvalid(S00_AXI_bvalid),
        .S_AXI_rdata(S00_AXI_rdata),
        .S_AXI_rid(S00_AXI_rid),
        .S_AXI_rlast(S00_AXI_rlast),
        .S_AXI_rready(S00_AXI_rready),
        .S_AXI_rresp(S00_AXI_rresp),
        .S_AXI_rvalid(S00_AXI_rvalid),
        .S_AXI_wdata(S00_AXI_wdata),
        .S_AXI_wid(S00_AXI_wid),
        .S_AXI_wlast(S00_AXI_wlast),
        .S_AXI_wready(S00_AXI_wready),
        .S_AXI_wstrb(S00_AXI_wstrb),
        .S_AXI_wvalid(S00_AXI_wvalid));
  led_axi_interconnect_0_imp_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_129B5QP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [31:0]M_AXI_rdata;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wready;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [11:0]S_AXI_arid;
  wire [7:0]S_AXI_arlen;
  wire [0:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [3:0]S_AXI_arregion;
  wire [2:0]S_AXI_arsize;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [11:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [3:0]S_AXI_awregion;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [11:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [11:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  led_axi_interconnect_0_imp_auto_pc_0 auto_pc
       (.aclk(S_ACLK),
        .aresetn(S_ARESETN),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_arid(S_AXI_arid),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arregion(S_AXI_arregion),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion(S_AXI_awregion),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rid(S_AXI_rid),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule

module m01_couplers_imp_NFL2L0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [11:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [11:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [11:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [11:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[11:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock;
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[11:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock;
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wlast = S_AXI_wlast;
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bid = M_AXI_bid[11:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rid = M_AXI_rid[11:0];
  assign S_AXI_rlast = M_AXI_rlast;
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module s00_couplers_imp_954ZJF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [11:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [11:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [11:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [31:0]M_AXI_rdata;
  wire [11:0]M_AXI_rid;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [11:0]S_AXI_arid;
  wire [3:0]S_AXI_arlen;
  wire [1:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [11:0]S_AXI_awid;
  wire [3:0]S_AXI_awlen;
  wire [1:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [11:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [11:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire [11:0]S_AXI_wid;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  led_axi_interconnect_0_imp_auto_pc_1 auto_pc
       (.aclk(S_ACLK),
        .aresetn(S_ARESETN),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arid(M_AXI_arid),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arsize(M_AXI_arsize),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awid(M_AXI_awid),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awsize(M_AXI_awsize),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bid(M_AXI_bid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rid(M_AXI_rid),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_arid(S_AXI_arid),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rid(S_AXI_rid),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wid(S_AXI_wid),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule
