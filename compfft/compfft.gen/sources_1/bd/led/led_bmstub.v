// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module led (
  DDR_cas_n,
  DDR_cke,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cs_n,
  DDR_reset_n,
  DDR_odt,
  DDR_ras_n,
  DDR_we_n,
  DDR_ba,
  DDR_addr,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  FIXED_IO_mio,
  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_ps_srstb,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  adc_dat_a_i,
  adc_dat_b_i,
  adc_clk_n_i,
  adc_clk_p_i,
  daisy_p_i,
  daisy_n_i,
  daisy_n_o,
  daisy_p_o,
  led_o,
  dac_dat_o,
  dac_pwm_o,
  exp_n_tri_io,
  exp_p_tri_io,
  adc_enc_n_o,
  adc_enc_p_o,
  dac_clk_o,
  dac_rst_o,
  dac_sel_o,
  dac_wrt_o,
  adc_csn_o,
  Vaux0_v_p,
  Vaux0_v_n,
  Vaux1_v_p,
  Vaux1_v_n,
  Vaux8_v_p,
  Vaux8_v_n,
  Vaux9_v_p,
  Vaux9_v_n,
  Vp_Vn_v_p,
  Vp_Vn_v_n,
  exp_p_trg,
  exp_n_alex
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *)
  (* X_INTERFACE_MODE = "master DDR" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *)
  inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *)
  inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *)
  inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *)
  inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *)
  inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *)
  inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *)
  inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *)
  inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *)
  inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *)
  inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *)
  inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *)
  inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *)
  inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *)
  inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *)
  (* X_INTERFACE_MODE = "master FIXED_IO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *)
  inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *)
  inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *)
  inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *)
  inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *)
  inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *)
  inout FIXED_IO_ps_porb;
  (* X_INTERFACE_IGNORE = "true" *)
  input [13:0]adc_dat_a_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [13:0]adc_dat_b_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK_N_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.ADC_CLK_N_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_CLK_N_I, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_adc_clk_n_i, INSERT_VIP 0" *)
  input adc_clk_n_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK_P_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.ADC_CLK_P_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_CLK_P_I, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_adc_clk_p_i, INSERT_VIP 0" *)
  input adc_clk_p_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DAISY_P_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.DAISY_P_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DAISY_P_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_daisy_p_i, INSERT_VIP 0" *)
  input [1:0]daisy_p_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DAISY_N_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.DAISY_N_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DAISY_N_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_daisy_n_i, INSERT_VIP 0" *)
  input [1:0]daisy_n_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DAISY_N_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.DAISY_N_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DAISY_N_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_daisy_n_i, INSERT_VIP 0" *)
  output [1:0]daisy_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DAISY_P_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.DAISY_P_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DAISY_P_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_daisy_n_i, INSERT_VIP 0" *)
  output [1:0]daisy_p_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]led_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [13:0]dac_dat_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]dac_pwm_o;
  (* X_INTERFACE_IGNORE = "true" *)
  inout [7:0]exp_n_tri_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout [7:0]exp_p_tri_io;
  (* X_INTERFACE_IGNORE = "true" *)
  output adc_enc_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output adc_enc_p_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output dac_clk_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output dac_rst_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output dac_sel_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output dac_wrt_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output adc_csn_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input Vaux0_v_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input Vaux0_v_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input Vaux1_v_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input Vaux1_v_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input Vaux8_v_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input Vaux8_v_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input Vaux9_v_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input Vaux9_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VP_VN_V_P DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.VP_VN_V_P" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VP_VN_V_P, LAYERED_METADATA undef" *)
  input Vp_Vn_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VP_VN_V_N DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.VP_VN_V_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VP_VN_V_N, LAYERED_METADATA undef" *)
  input Vp_Vn_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.EXP_P_TRG DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.EXP_P_TRG" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.EXP_P_TRG, LAYERED_METADATA undef" *)
  input exp_p_trg;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.EXP_N_ALEX DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.EXP_N_ALEX" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.EXP_N_ALEX, LAYERED_METADATA undef" *)
  input [4:0]exp_n_alex;

  // stub module has no contents

endmodule
