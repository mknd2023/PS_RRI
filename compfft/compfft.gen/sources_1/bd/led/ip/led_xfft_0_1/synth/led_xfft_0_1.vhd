-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:xfft:9.1
-- IP Revision: 13

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xfft_v9_1_13;
USE xfft_v9_1_13.xfft_v9_1_13;

ENTITY led_xfft_0_1 IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC
  );
END led_xfft_0_1;

ARCHITECTURE led_xfft_0_1_arch OF led_xfft_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF led_xfft_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT xfft_v9_1_13 IS
    GENERIC (
      C_XDEVICEFAMILY : STRING;
      C_PART : STRING;
      C_S_AXIS_CONFIG_TDATA_WIDTH : INTEGER;
      C_S_AXIS_DATA_TDATA_WIDTH : INTEGER;
      C_M_AXIS_DATA_TDATA_WIDTH : INTEGER;
      C_M_AXIS_DATA_TUSER_WIDTH : INTEGER;
      C_M_AXIS_STATUS_TDATA_WIDTH : INTEGER;
      C_THROTTLE_SCHEME : INTEGER;
      C_NSSR : INTEGER;
      C_CHANNELS : INTEGER;
      C_NFFT_MAX : INTEGER;
      C_ARCH : INTEGER;
      C_HAS_NFFT : INTEGER;
      C_USE_FLT_PT : INTEGER;
      C_INPUT_WIDTH : INTEGER;
      C_TWIDDLE_WIDTH : INTEGER;
      C_OUTPUT_WIDTH : INTEGER;
      C_HAS_SCALING : INTEGER;
      C_HAS_BFP : INTEGER;
      C_HAS_ROUNDING : INTEGER;
      C_HAS_ACLKEN : INTEGER;
      C_HAS_ARESETN : INTEGER;
      C_HAS_OVFLO : INTEGER;
      C_HAS_NATURAL_INPUT : INTEGER;
      C_HAS_NATURAL_OUTPUT : INTEGER;
      C_HAS_CYCLIC_PREFIX : INTEGER;
      C_HAS_XK_INDEX : INTEGER;
      C_DATA_MEM_TYPE : INTEGER;
      C_TWIDDLE_MEM_TYPE : INTEGER;
      C_BRAM_STAGES : INTEGER;
      C_REORDER_MEM_TYPE : INTEGER;
      C_USE_HYBRID_RAM : INTEGER;
      C_OPTIMIZE_GOAL : INTEGER;
      C_CMPY_TYPE : INTEGER;
      C_BFLY_TYPE : INTEGER;
      C_SYSTOLICFFT_INV : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aclken : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_config_tvalid : IN STD_LOGIC;
      s_axis_config_tready : OUT STD_LOGIC;
      s_axis_data_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_data_tvalid : IN STD_LOGIC;
      s_axis_data_tready : OUT STD_LOGIC;
      s_axis_data_tlast : IN STD_LOGIC;
      m_axis_data_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axis_data_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_data_tvalid : OUT STD_LOGIC;
      m_axis_data_tready : IN STD_LOGIC;
      m_axis_data_tlast : OUT STD_LOGIC;
      m_axis_status_tdata : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_status_tvalid : OUT STD_LOGIC;
      m_axis_status_tready : IN STD_LOGIC;
      event_frame_started : OUT STD_LOGIC;
      event_tlast_unexpected : OUT STD_LOGIC;
      event_tlast_missing : OUT STD_LOGIC;
      event_fft_overflow : OUT STD_LOGIC;
      event_status_channel_halt : OUT STD_LOGIC;
      event_data_in_channel_halt : OUT STD_LOGIC;
      event_data_out_channel_halt : OUT STD_LOGIC
    );
  END COMPONENT xfft_v9_1_13;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF led_xfft_0_1_arch: ARCHITECTURE IS "xfft_v9_1_13,Vivado 2024.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF led_xfft_0_1_arch : ARCHITECTURE IS "led_xfft_0_1,xfft_v9_1_13,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF led_xfft_0_1_arch: ARCHITECTURE IS "led_xfft_0_1,xfft_v9_1_13,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xfft,x_ipVersion=9.1,x_ipCoreRevision=13,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynq,C_PART=xc7z010clg400-1,C_S_AXIS_CONFIG_TDATA_WIDTH=8,C_S_AXIS_DATA_TDATA_WIDTH=32,C_M_AXIS_DATA_TDATA_WIDTH=64,C_M_AXIS_DATA_TUSER_WIDTH=1,C_M_AXIS_STATUS_TDATA_WIDTH=1,C_THROTTLE_SCHEME=1,C_NSSR=1,C_CHANNELS=1,C_NFFT_MAX=10,C_ARCH=3,C_HAS_NFFT=0,C_USE_FLT_PT=0,C_INPUT_WIDTH=14,C_TWIDDLE_WIDTH=1" & 
"6,C_OUTPUT_WIDTH=25,C_HAS_SCALING=0,C_HAS_BFP=0,C_HAS_ROUNDING=0,C_HAS_ACLKEN=0,C_HAS_ARESETN=0,C_HAS_OVFLO=0,C_HAS_NATURAL_INPUT=1,C_HAS_NATURAL_OUTPUT=1,C_HAS_CYCLIC_PREFIX=0,C_HAS_XK_INDEX=0,C_DATA_MEM_TYPE=1,C_TWIDDLE_MEM_TYPE=1,C_BRAM_STAGES=3,C_REORDER_MEM_TYPE=1,C_USE_HYBRID_RAM=0,C_OPTIMIZE_GOAL=0,C_CMPY_TYPE=1,C_BFLY_TYPE=0,C_SYSTOLICFFT_INV=0}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_MODE OF aclk: SIGNAL IS "slave aclk_intf";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:M_AXIS_STATUS:S_AXIS_DATA, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1.25e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF event_data_in_channel_halt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_data_in_channel_halt_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_MODE OF event_data_in_channel_halt: SIGNAL IS "master event_data_in_channel_halt_intf";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_data_in_channel_halt: SIGNAL IS "XIL_INTERFACENAME event_data_in_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_data_out_channel_halt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_data_out_channel_halt_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_MODE OF event_data_out_channel_halt: SIGNAL IS "master event_data_out_channel_halt_intf";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_data_out_channel_halt: SIGNAL IS "XIL_INTERFACENAME event_data_out_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_frame_started: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_frame_started_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_MODE OF event_frame_started: SIGNAL IS "master event_frame_started_intf";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_frame_started: SIGNAL IS "XIL_INTERFACENAME event_frame_started_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_status_channel_halt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_status_channel_halt_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_MODE OF event_status_channel_halt: SIGNAL IS "master event_status_channel_halt_intf";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_status_channel_halt: SIGNAL IS "XIL_INTERFACENAME event_status_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_tlast_missing: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_tlast_missing_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_MODE OF event_tlast_missing: SIGNAL IS "master event_tlast_missing_intf";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_tlast_missing: SIGNAL IS "XIL_INTERFACENAME event_tlast_missing_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF event_tlast_unexpected: SIGNAL IS "xilinx.com:signal:interrupt:1.0 event_tlast_unexpected_intf INTERRUPT";
  ATTRIBUTE X_INTERFACE_MODE OF event_tlast_unexpected: SIGNAL IS "master event_tlast_unexpected_intf";
  ATTRIBUTE X_INTERFACE_PARAMETER OF event_tlast_unexpected: SIGNAL IS "XIL_INTERFACENAME event_tlast_unexpected_intf, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  ATTRIBUTE X_INTERFACE_MODE OF m_axis_data_tdata: SIGNAL IS "master M_AXIS_DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_data_tdata: SIGNAL IS "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1.25e+08, PHASE 0.0, CLK_DOMAIN led_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65529} bit" & 
"offset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string mi" & 
"nimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65529} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value vect} size {attribs {resolve_type generated dependency vect_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependen" & 
"cy vect_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65529} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} ena" & 
"bled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65497} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {" & 
"} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate d" & 
"ependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 13} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} valu" & 
"e true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65497} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 32} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_s" & 
"ize format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth" & 
" {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 13} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependen" & 
"cy {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maxi" & 
"mum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_" & 
"type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value " & 
"1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} max" & 
"imum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {attribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type ge" & 
"nerated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bit" & 
"width {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_data_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_config_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA";
  ATTRIBUTE X_INTERFACE_MODE OF s_axis_config_tdata: SIGNAL IS "slave S_AXIS_CONFIG";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_config_tdata: SIGNAL IS "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1.25e+08, PHASE 0.0, CLK_DOMAIN led_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_config_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_config_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA";
  ATTRIBUTE X_INTERFACE_MODE OF s_axis_data_tdata: SIGNAL IS "slave S_AXIS_DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_data_tdata: SIGNAL IS "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1.25e+08, PHASE 0.0, CLK_DOMAIN led_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_data_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID";
BEGIN
  U0 : xfft_v9_1_13
    GENERIC MAP (
      C_XDEVICEFAMILY => "zynq",
      C_PART => "xc7z010clg400-1",
      C_S_AXIS_CONFIG_TDATA_WIDTH => 8,
      C_S_AXIS_DATA_TDATA_WIDTH => 32,
      C_M_AXIS_DATA_TDATA_WIDTH => 64,
      C_M_AXIS_DATA_TUSER_WIDTH => 1,
      C_M_AXIS_STATUS_TDATA_WIDTH => 1,
      C_THROTTLE_SCHEME => 1,
      C_NSSR => 1,
      C_CHANNELS => 1,
      C_NFFT_MAX => 10,
      C_ARCH => 3,
      C_HAS_NFFT => 0,
      C_USE_FLT_PT => 0,
      C_INPUT_WIDTH => 14,
      C_TWIDDLE_WIDTH => 16,
      C_OUTPUT_WIDTH => 25,
      C_HAS_SCALING => 0,
      C_HAS_BFP => 0,
      C_HAS_ROUNDING => 0,
      C_HAS_ACLKEN => 0,
      C_HAS_ARESETN => 0,
      C_HAS_OVFLO => 0,
      C_HAS_NATURAL_INPUT => 1,
      C_HAS_NATURAL_OUTPUT => 1,
      C_HAS_CYCLIC_PREFIX => 0,
      C_HAS_XK_INDEX => 0,
      C_DATA_MEM_TYPE => 1,
      C_TWIDDLE_MEM_TYPE => 1,
      C_BRAM_STAGES => 3,
      C_REORDER_MEM_TYPE => 1,
      C_USE_HYBRID_RAM => 0,
      C_OPTIMIZE_GOAL => 0,
      C_CMPY_TYPE => 1,
      C_BFLY_TYPE => 0,
      C_SYSTOLICFFT_INV => 0
    )
    PORT MAP (
      aclk => aclk,
      aclken => '1',
      aresetn => '1',
      s_axis_config_tdata => s_axis_config_tdata,
      s_axis_config_tvalid => s_axis_config_tvalid,
      s_axis_config_tready => s_axis_config_tready,
      s_axis_data_tdata => s_axis_data_tdata,
      s_axis_data_tvalid => s_axis_data_tvalid,
      s_axis_data_tready => s_axis_data_tready,
      s_axis_data_tlast => s_axis_data_tlast,
      m_axis_data_tdata => m_axis_data_tdata,
      m_axis_data_tvalid => m_axis_data_tvalid,
      m_axis_data_tready => m_axis_data_tready,
      m_axis_data_tlast => m_axis_data_tlast,
      m_axis_status_tready => '1',
      event_frame_started => event_frame_started,
      event_tlast_unexpected => event_tlast_unexpected,
      event_tlast_missing => event_tlast_missing,
      event_status_channel_halt => event_status_channel_halt,
      event_data_in_channel_halt => event_data_in_channel_halt,
      event_data_out_channel_halt => event_data_out_channel_halt
    );
END led_xfft_0_1_arch;
