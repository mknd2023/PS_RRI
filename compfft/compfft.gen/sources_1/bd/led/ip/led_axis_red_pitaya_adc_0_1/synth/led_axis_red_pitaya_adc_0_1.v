// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:axis_red_pitaya_adc:1.0
// IP Revision: 2

(* X_CORE_INFO = "axis_red_pitaya_adc,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "led_axis_red_pitaya_adc_0_1,axis_red_pitaya_adc,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module led_axis_red_pitaya_adc_0_1 (
  adc_clk,
  adc_csn,
  adc_clk_p,
  adc_clk_n,
  adc_dat_a,
  adc_dat_b,
  m_axis_tvalid,
  m_axis_tdata
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, ASSOCIATED_BUSIF m_axis, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_axis_red_pitaya_adc_0_1_adc_clk, INSERT_VIP 0" *)
output wire adc_clk;
output wire adc_csn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_p CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_adc_clk_p_i, INSERT_VIP 0" *)
input wire adc_clk_p;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_n CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_adc_clk_n_i, INSERT_VIP 0" *)
input wire adc_clk_n;
input wire [13 : 0] adc_dat_a;
input wire [13 : 0] adc_dat_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN led_axis_red_pitaya_adc_0_1_adc_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [31 : 0] m_axis_tdata;

  axis_red_pitaya_adc #(
    .ADC_DATA_WIDTH(14),
    .AXIS_TDATA_WIDTH(32)
  ) inst (
    .adc_clk(adc_clk),
    .adc_csn(adc_csn),
    .adc_clk_p(adc_clk_p),
    .adc_clk_n(adc_clk_n),
    .adc_dat_a(adc_dat_a),
    .adc_dat_b(adc_dat_b),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tdata(m_axis_tdata)
  );
endmodule
