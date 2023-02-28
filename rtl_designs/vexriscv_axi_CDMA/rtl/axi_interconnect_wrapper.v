// -----------------------------------------------------------------------------
// Auto-Generated by:        __   _ __      _  __
//                          / /  (_) /____ | |/_/
//                         / /__/ / __/ -_)>  <
//                        /____/_/\__/\__/_/|_|
//                     Build your hardware, easily!
//                   https://github.com/enjoy-digital/litex
//
// Filename   : axi_interconnect_wrapper.v
// Device     : gemini
// LiteX sha1 : 106b2caa
// Date       : 2023-02-28 14:34:19
//------------------------------------------------------------------------------
// This file is Copyright (c) 2022 RapidSilicon
//--------------------------------------------------------------------------------

`timescale 1ns / 1ps

//------------------------------------------------------------------------------
// Module
//------------------------------------------------------------------------------

module axi_interconnect_wrapper (
    input  wire          clk,
    input  wire          rst,
    input  wire          s00_axi_awvalid,
    output wire          s00_axi_awready,
    input  wire   [31:0] s00_axi_awaddr,
    input  wire    [1:0] s00_axi_awburst,
    input  wire    [7:0] s00_axi_awlen,
    input  wire    [2:0] s00_axi_awsize,
    input  wire          s00_axi_awlock,
    input  wire    [2:0] s00_axi_awprot,
    input  wire    [3:0] s00_axi_awcache,
    input  wire    [3:0] s00_axi_awqos,
    input  wire    [3:0] s00_axi_awregion,
    input  wire    [7:0] s00_axi_awid,
    input  wire          s00_axi_awuser,
    input  wire          s00_axi_wvalid,
    output wire          s00_axi_wready,
    input  wire          s00_axi_wlast,
    input  wire   [31:0] s00_axi_wdata,
    input  wire    [3:0] s00_axi_wstrb,
    input  wire          s00_axi_wuser,
    output wire          s00_axi_bvalid,
    input  wire          s00_axi_bready,
    output wire    [1:0] s00_axi_bresp,
    output wire    [7:0] s00_axi_bid,
    output wire          s00_axi_buser,
    input  wire          s00_axi_arvalid,
    output wire          s00_axi_arready,
    input  wire   [31:0] s00_axi_araddr,
    input  wire    [1:0] s00_axi_arburst,
    input  wire    [7:0] s00_axi_arlen,
    input  wire    [2:0] s00_axi_arsize,
    input  wire          s00_axi_arlock,
    input  wire    [2:0] s00_axi_arprot,
    input  wire    [3:0] s00_axi_arcache,
    input  wire    [3:0] s00_axi_arqos,
    input  wire    [3:0] s00_axi_arregion,
    input  wire    [7:0] s00_axi_arid,
    input  wire          s00_axi_aruser,
    output wire          s00_axi_rvalid,
    input  wire          s00_axi_rready,
    output wire          s00_axi_rlast,
    output wire    [1:0] s00_axi_rresp,
    output wire   [31:0] s00_axi_rdata,
    output wire    [7:0] s00_axi_rid,
    output wire          s00_axi_ruser,
    output wire          m00_axi_awvalid,
    input  wire          m00_axi_awready,
    output wire   [31:0] m00_axi_awaddr,
    output wire    [1:0] m00_axi_awburst,
    output wire    [7:0] m00_axi_awlen,
    output wire    [2:0] m00_axi_awsize,
    output wire          m00_axi_awlock,
    output wire    [2:0] m00_axi_awprot,
    output wire    [3:0] m00_axi_awcache,
    output wire    [3:0] m00_axi_awqos,
    output wire    [3:0] m00_axi_awregion,
    output wire    [7:0] m00_axi_awid,
    output wire          m00_axi_awuser,
    output wire          m00_axi_wvalid,
    input  wire          m00_axi_wready,
    output wire          m00_axi_wlast,
    output wire   [31:0] m00_axi_wdata,
    output wire    [3:0] m00_axi_wstrb,
    output wire          m00_axi_wuser,
    input  wire          m00_axi_bvalid,
    output wire          m00_axi_bready,
    input  wire    [1:0] m00_axi_bresp,
    input  wire    [7:0] m00_axi_bid,
    input  wire          m00_axi_buser,
    output wire          m00_axi_arvalid,
    input  wire          m00_axi_arready,
    output wire   [31:0] m00_axi_araddr,
    output wire    [1:0] m00_axi_arburst,
    output wire    [7:0] m00_axi_arlen,
    output wire    [2:0] m00_axi_arsize,
    output wire          m00_axi_arlock,
    output wire    [2:0] m00_axi_arprot,
    output wire    [3:0] m00_axi_arcache,
    output wire    [3:0] m00_axi_arqos,
    output wire    [3:0] m00_axi_arregion,
    output wire    [7:0] m00_axi_arid,
    output wire          m00_axi_aruser,
    input  wire          m00_axi_rvalid,
    output wire          m00_axi_rready,
    input  wire          m00_axi_rlast,
    input  wire    [1:0] m00_axi_rresp,
    input  wire   [31:0] m00_axi_rdata,
    input  wire    [7:0] m00_axi_rid,
    input  wire          m00_axi_ruser,
    output wire          m01_axi_awvalid,
    input  wire          m01_axi_awready,
    output wire   [31:0] m01_axi_awaddr,
    output wire    [1:0] m01_axi_awburst,
    output wire    [7:0] m01_axi_awlen,
    output wire    [2:0] m01_axi_awsize,
    output wire          m01_axi_awlock,
    output wire    [2:0] m01_axi_awprot,
    output wire    [3:0] m01_axi_awcache,
    output wire    [3:0] m01_axi_awqos,
    output wire    [3:0] m01_axi_awregion,
    output wire    [7:0] m01_axi_awid,
    output wire          m01_axi_awuser,
    output wire          m01_axi_wvalid,
    input  wire          m01_axi_wready,
    output wire          m01_axi_wlast,
    output wire   [31:0] m01_axi_wdata,
    output wire    [3:0] m01_axi_wstrb,
    output wire          m01_axi_wuser,
    input  wire          m01_axi_bvalid,
    output wire          m01_axi_bready,
    input  wire    [1:0] m01_axi_bresp,
    input  wire    [7:0] m01_axi_bid,
    input  wire          m01_axi_buser,
    output wire          m01_axi_arvalid,
    input  wire          m01_axi_arready,
    output wire   [31:0] m01_axi_araddr,
    output wire    [1:0] m01_axi_arburst,
    output wire    [7:0] m01_axi_arlen,
    output wire    [2:0] m01_axi_arsize,
    output wire          m01_axi_arlock,
    output wire    [2:0] m01_axi_arprot,
    output wire    [3:0] m01_axi_arcache,
    output wire    [3:0] m01_axi_arqos,
    output wire    [3:0] m01_axi_arregion,
    output wire    [7:0] m01_axi_arid,
    output wire          m01_axi_aruser,
    input  wire          m01_axi_rvalid,
    output wire          m01_axi_rready,
    input  wire          m01_axi_rlast,
    input  wire    [1:0] m01_axi_rresp,
    input  wire   [31:0] m01_axi_rdata,
    input  wire    [7:0] m01_axi_rid,
    input  wire          m01_axi_ruser
);


//------------------------------------------------------------------------------
// Signals
//------------------------------------------------------------------------------

wire          sys_clk;
wire          sys_rst;
wire          aw_valid;
wire          aw_ready;
wire   [31:0] aw_payload_addr;
wire    [1:0] aw_payload_burst;
wire    [7:0] aw_payload_len;
wire    [2:0] aw_payload_size;
wire          aw_payload_lock;
wire    [2:0] aw_payload_prot;
wire    [3:0] aw_payload_cache;
wire    [3:0] aw_payload_qos;
wire    [3:0] aw_payload_region;
wire    [7:0] aw_param_id;
wire          aw_param_user;
wire          w_valid;
wire          w_ready;
wire          w_last;
wire   [31:0] w_payload_data;
wire    [3:0] w_payload_strb;
wire          w_param_user;
wire          b_valid;
wire          b_ready;
wire    [1:0] b_payload_resp;
wire    [7:0] b_param_id;
wire          b_param_user;
wire          ar_valid;
wire          ar_ready;
wire   [31:0] ar_payload_addr;
wire    [1:0] ar_payload_burst;
wire    [7:0] ar_payload_len;
wire    [2:0] ar_payload_size;
wire          ar_payload_lock;
wire    [2:0] ar_payload_prot;
wire    [3:0] ar_payload_cache;
wire    [3:0] ar_payload_qos;
wire    [3:0] ar_payload_region;
wire    [7:0] ar_param_id;
wire          ar_param_user;
wire          r_valid;
wire          r_ready;
wire          r_last;
wire    [1:0] r_payload_resp;
wire   [31:0] r_payload_data;
wire    [7:0] r_param_id;
wire          r_param_user;
wire          axiinterface0_aw_valid;
wire          axiinterface0_aw_ready;
wire   [31:0] axiinterface0_aw_payload_addr;
wire    [1:0] axiinterface0_aw_payload_burst;
wire    [7:0] axiinterface0_aw_payload_len;
wire    [2:0] axiinterface0_aw_payload_size;
wire          axiinterface0_aw_payload_lock;
wire    [2:0] axiinterface0_aw_payload_prot;
wire    [3:0] axiinterface0_aw_payload_cache;
wire    [3:0] axiinterface0_aw_payload_qos;
wire    [3:0] axiinterface0_aw_payload_region;
wire    [7:0] axiinterface0_aw_param_id;
wire          axiinterface0_aw_param_user;
wire          axiinterface0_w_valid;
wire          axiinterface0_w_ready;
wire          axiinterface0_w_last;
wire   [31:0] axiinterface0_w_payload_data;
wire    [3:0] axiinterface0_w_payload_strb;
wire          axiinterface0_w_param_user;
wire          axiinterface0_b_valid;
wire          axiinterface0_b_ready;
wire    [1:0] axiinterface0_b_payload_resp;
wire    [7:0] axiinterface0_b_param_id;
wire          axiinterface0_b_param_user;
wire          axiinterface0_ar_valid;
wire          axiinterface0_ar_ready;
wire   [31:0] axiinterface0_ar_payload_addr;
wire    [1:0] axiinterface0_ar_payload_burst;
wire    [7:0] axiinterface0_ar_payload_len;
wire    [2:0] axiinterface0_ar_payload_size;
wire          axiinterface0_ar_payload_lock;
wire    [2:0] axiinterface0_ar_payload_prot;
wire    [3:0] axiinterface0_ar_payload_cache;
wire    [3:0] axiinterface0_ar_payload_qos;
wire    [3:0] axiinterface0_ar_payload_region;
wire    [7:0] axiinterface0_ar_param_id;
wire          axiinterface0_ar_param_user;
wire          axiinterface0_r_valid;
wire          axiinterface0_r_ready;
wire          axiinterface0_r_last;
wire    [1:0] axiinterface0_r_payload_resp;
wire   [31:0] axiinterface0_r_payload_data;
wire    [7:0] axiinterface0_r_param_id;
wire          axiinterface0_r_param_user;
wire          axiinterface1_aw_valid;
wire          axiinterface1_aw_ready;
wire   [31:0] axiinterface1_aw_payload_addr;
wire    [1:0] axiinterface1_aw_payload_burst;
wire    [7:0] axiinterface1_aw_payload_len;
wire    [2:0] axiinterface1_aw_payload_size;
wire          axiinterface1_aw_payload_lock;
wire    [2:0] axiinterface1_aw_payload_prot;
wire    [3:0] axiinterface1_aw_payload_cache;
wire    [3:0] axiinterface1_aw_payload_qos;
wire    [3:0] axiinterface1_aw_payload_region;
wire    [7:0] axiinterface1_aw_param_id;
wire          axiinterface1_aw_param_user;
wire          axiinterface1_w_valid;
wire          axiinterface1_w_ready;
wire          axiinterface1_w_last;
wire   [31:0] axiinterface1_w_payload_data;
wire    [3:0] axiinterface1_w_payload_strb;
wire          axiinterface1_w_param_user;
wire          axiinterface1_b_valid;
wire          axiinterface1_b_ready;
wire    [1:0] axiinterface1_b_payload_resp;
wire    [7:0] axiinterface1_b_param_id;
wire          axiinterface1_b_param_user;
wire          axiinterface1_ar_valid;
wire          axiinterface1_ar_ready;
wire   [31:0] axiinterface1_ar_payload_addr;
wire    [1:0] axiinterface1_ar_payload_burst;
wire    [7:0] axiinterface1_ar_payload_len;
wire    [2:0] axiinterface1_ar_payload_size;
wire          axiinterface1_ar_payload_lock;
wire    [2:0] axiinterface1_ar_payload_prot;
wire    [3:0] axiinterface1_ar_payload_cache;
wire    [3:0] axiinterface1_ar_payload_qos;
wire    [3:0] axiinterface1_ar_payload_region;
wire    [7:0] axiinterface1_ar_param_id;
wire          axiinterface1_ar_param_user;
wire          axiinterface1_r_valid;
wire          axiinterface1_r_ready;
wire          axiinterface1_r_last;
wire    [1:0] axiinterface1_r_payload_resp;
wire   [31:0] axiinterface1_r_payload_data;
wire    [7:0] axiinterface1_r_param_id;
wire          axiinterface1_r_param_user;

//------------------------------------------------------------------------------
// Combinatorial Logic
//------------------------------------------------------------------------------

assign sys_clk = clk;
assign sys_rst = rst;
assign aw_valid = s00_axi_awvalid;
assign aw_payload_addr = s00_axi_awaddr;
assign aw_payload_burst = s00_axi_awburst;
assign aw_payload_len = s00_axi_awlen;
assign aw_payload_size = s00_axi_awsize;
assign aw_payload_lock = s00_axi_awlock;
assign aw_payload_prot = s00_axi_awprot;
assign aw_payload_cache = s00_axi_awcache;
assign aw_payload_qos = s00_axi_awqos;
assign aw_payload_region = s00_axi_awregion;
assign aw_param_id = s00_axi_awid;
assign aw_param_user = s00_axi_awuser;
assign s00_axi_awready = aw_ready;
assign w_valid = s00_axi_wvalid;
assign w_payload_data = s00_axi_wdata;
assign w_payload_strb = s00_axi_wstrb;
assign w_param_user = s00_axi_wuser;
assign w_last = s00_axi_wlast;
assign s00_axi_wready = w_ready;
assign s00_axi_bvalid = b_valid;
assign s00_axi_bresp = b_payload_resp;
assign s00_axi_bid = b_param_id;
assign s00_axi_buser = b_param_user;
assign b_ready = s00_axi_bready;
assign ar_valid = s00_axi_arvalid;
assign ar_payload_addr = s00_axi_araddr;
assign ar_payload_burst = s00_axi_arburst;
assign ar_payload_len = s00_axi_arlen;
assign ar_payload_size = s00_axi_arsize;
assign ar_payload_lock = s00_axi_arlock;
assign ar_payload_prot = s00_axi_arprot;
assign ar_payload_cache = s00_axi_arcache;
assign ar_payload_qos = s00_axi_arqos;
assign ar_payload_region = s00_axi_arregion;
assign ar_param_id = s00_axi_arid;
assign ar_param_user = s00_axi_aruser;
assign s00_axi_arready = ar_ready;
assign s00_axi_rvalid = r_valid;
assign s00_axi_rresp = r_payload_resp;
assign s00_axi_rdata = r_payload_data;
assign s00_axi_rid = r_param_id;
assign s00_axi_ruser = r_param_user;
assign s00_axi_rlast = r_last;
assign r_ready = s00_axi_rready;
assign m00_axi_awvalid = axiinterface0_aw_valid;
assign m00_axi_awaddr = axiinterface0_aw_payload_addr;
assign m00_axi_awburst = axiinterface0_aw_payload_burst;
assign m00_axi_awlen = axiinterface0_aw_payload_len;
assign m00_axi_awsize = axiinterface0_aw_payload_size;
assign m00_axi_awlock = axiinterface0_aw_payload_lock;
assign m00_axi_awprot = axiinterface0_aw_payload_prot;
assign m00_axi_awcache = axiinterface0_aw_payload_cache;
assign m00_axi_awqos = axiinterface0_aw_payload_qos;
assign m00_axi_awregion = axiinterface0_aw_payload_region;
assign m00_axi_awid = axiinterface0_aw_param_id;
assign m00_axi_awuser = axiinterface0_aw_param_user;
assign axiinterface0_aw_ready = m00_axi_awready;
assign m00_axi_wvalid = axiinterface0_w_valid;
assign m00_axi_wdata = axiinterface0_w_payload_data;
assign m00_axi_wstrb = axiinterface0_w_payload_strb;
assign m00_axi_wuser = axiinterface0_w_param_user;
assign m00_axi_wlast = axiinterface0_w_last;
assign axiinterface0_w_ready = m00_axi_wready;
assign axiinterface0_b_valid = m00_axi_bvalid;
assign axiinterface0_b_payload_resp = m00_axi_bresp;
assign axiinterface0_b_param_id = m00_axi_bid;
assign axiinterface0_b_param_user = m00_axi_buser;
assign m00_axi_bready = axiinterface0_b_ready;
assign m00_axi_arvalid = axiinterface0_ar_valid;
assign m00_axi_araddr = axiinterface0_ar_payload_addr;
assign m00_axi_arburst = axiinterface0_ar_payload_burst;
assign m00_axi_arlen = axiinterface0_ar_payload_len;
assign m00_axi_arsize = axiinterface0_ar_payload_size;
assign m00_axi_arlock = axiinterface0_ar_payload_lock;
assign m00_axi_arprot = axiinterface0_ar_payload_prot;
assign m00_axi_arcache = axiinterface0_ar_payload_cache;
assign m00_axi_arqos = axiinterface0_ar_payload_qos;
assign m00_axi_arregion = axiinterface0_ar_payload_region;
assign m00_axi_arid = axiinterface0_ar_param_id;
assign m00_axi_aruser = axiinterface0_ar_param_user;
assign axiinterface0_ar_ready = m00_axi_arready;
assign axiinterface0_r_valid = m00_axi_rvalid;
assign axiinterface0_r_payload_resp = m00_axi_rresp;
assign axiinterface0_r_payload_data = m00_axi_rdata;
assign axiinterface0_r_param_id = m00_axi_rid;
assign axiinterface0_r_param_user = m00_axi_ruser;
assign axiinterface0_r_last = m00_axi_rlast;
assign m00_axi_rready = axiinterface0_r_ready;
assign m01_axi_awvalid = axiinterface1_aw_valid;
assign m01_axi_awaddr = axiinterface1_aw_payload_addr;
assign m01_axi_awburst = axiinterface1_aw_payload_burst;
assign m01_axi_awlen = axiinterface1_aw_payload_len;
assign m01_axi_awsize = axiinterface1_aw_payload_size;
assign m01_axi_awlock = axiinterface1_aw_payload_lock;
assign m01_axi_awprot = axiinterface1_aw_payload_prot;
assign m01_axi_awcache = axiinterface1_aw_payload_cache;
assign m01_axi_awqos = axiinterface1_aw_payload_qos;
assign m01_axi_awregion = axiinterface1_aw_payload_region;
assign m01_axi_awid = axiinterface1_aw_param_id;
assign m01_axi_awuser = axiinterface1_aw_param_user;
assign axiinterface1_aw_ready = m01_axi_awready;
assign m01_axi_wvalid = axiinterface1_w_valid;
assign m01_axi_wdata = axiinterface1_w_payload_data;
assign m01_axi_wstrb = axiinterface1_w_payload_strb;
assign m01_axi_wuser = axiinterface1_w_param_user;
assign m01_axi_wlast = axiinterface1_w_last;
assign axiinterface1_w_ready = m01_axi_wready;
assign axiinterface1_b_valid = m01_axi_bvalid;
assign axiinterface1_b_payload_resp = m01_axi_bresp;
assign axiinterface1_b_param_id = m01_axi_bid;
assign axiinterface1_b_param_user = m01_axi_buser;
assign m01_axi_bready = axiinterface1_b_ready;
assign m01_axi_arvalid = axiinterface1_ar_valid;
assign m01_axi_araddr = axiinterface1_ar_payload_addr;
assign m01_axi_arburst = axiinterface1_ar_payload_burst;
assign m01_axi_arlen = axiinterface1_ar_payload_len;
assign m01_axi_arsize = axiinterface1_ar_payload_size;
assign m01_axi_arlock = axiinterface1_ar_payload_lock;
assign m01_axi_arprot = axiinterface1_ar_payload_prot;
assign m01_axi_arcache = axiinterface1_ar_payload_cache;
assign m01_axi_arqos = axiinterface1_ar_payload_qos;
assign m01_axi_arregion = axiinterface1_ar_payload_region;
assign m01_axi_arid = axiinterface1_ar_param_id;
assign m01_axi_aruser = axiinterface1_ar_param_user;
assign axiinterface1_ar_ready = m01_axi_arready;
assign axiinterface1_r_valid = m01_axi_rvalid;
assign axiinterface1_r_payload_resp = m01_axi_rresp;
assign axiinterface1_r_payload_data = m01_axi_rdata;
assign axiinterface1_r_param_id = m01_axi_rid;
assign axiinterface1_r_param_user = m01_axi_ruser;
assign axiinterface1_r_last = m01_axi_rlast;
assign m01_axi_rready = axiinterface1_r_ready;


//------------------------------------------------------------------------------
// Synchronous Logic
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Specialized Logic
//------------------------------------------------------------------------------

axi_interconnect #(
	.ADDR_WIDTH(32),
	.ARUSER_ENABLE(1'd1),
	.ARUSER_WIDTH(1),
	.AWUSER_ENABLE(1'd1),
	.AWUSER_WIDTH(1),
	.BUSER_ENABLE(1'd1),
	.BUSER_WIDTH(1),
	.DATA_WIDTH(32),
	.ID_WIDTH(8),
	.M_COUNT(2),
	.RUSER_ENABLE(1'd1),
	.RUSER_WIDTH(1),
	.S_COUNT(1),
	.WUSER_ENABLE(1'd1),
	.WUSER_WIDTH(1)
) axi_interconnect (
	.clk(sys_clk),
	.m_axi_arready({axiinterface1_ar_ready, axiinterface0_ar_ready}),
	.m_axi_awready({axiinterface1_aw_ready, axiinterface0_aw_ready}),
	.m_axi_bid({axiinterface1_b_param_id, axiinterface0_b_param_id}),
	.m_axi_bresp({axiinterface1_b_payload_resp, axiinterface0_b_payload_resp}),
	.m_axi_buser({axiinterface1_b_param_user, axiinterface0_b_param_user}),
	.m_axi_bvalid({axiinterface1_b_valid, axiinterface0_b_valid}),
	.m_axi_rdata({axiinterface1_r_payload_data, axiinterface0_r_payload_data}),
	.m_axi_rid({axiinterface1_r_param_id, axiinterface0_r_param_id}),
	.m_axi_rlast({axiinterface1_r_last, axiinterface0_r_last}),
	.m_axi_rresp({axiinterface1_r_payload_resp, axiinterface0_r_payload_resp}),
	.m_axi_ruser({axiinterface1_r_param_user, axiinterface0_r_param_user}),
	.m_axi_rvalid({axiinterface1_r_valid, axiinterface0_r_valid}),
	.m_axi_wready({axiinterface1_w_ready, axiinterface0_w_ready}),
	.rst(sys_rst),
	.s_axi_araddr({ar_payload_addr}),
	.s_axi_arburst({ar_payload_burst}),
	.s_axi_arcache({ar_payload_cache}),
	.s_axi_arid({ar_param_id}),
	.s_axi_arlen({ar_payload_len}),
	.s_axi_arlock({ar_payload_lock}),
	.s_axi_arprot({ar_payload_prot}),
	.s_axi_arqos({ar_payload_qos}),
	.s_axi_arsize({ar_payload_size}),
	.s_axi_aruser({ar_param_user}),
	.s_axi_arvalid({ar_valid}),
	.s_axi_awaddr({aw_payload_addr}),
	.s_axi_awburst({aw_payload_burst}),
	.s_axi_awcache({aw_payload_cache}),
	.s_axi_awid({aw_param_id}),
	.s_axi_awlen({aw_payload_len}),
	.s_axi_awlock({aw_payload_lock}),
	.s_axi_awprot({aw_payload_prot}),
	.s_axi_awqos({aw_payload_qos}),
	.s_axi_awsize({aw_payload_size}),
	.s_axi_awuser({aw_param_user}),
	.s_axi_awvalid({aw_valid}),
	.s_axi_bready({b_ready}),
	.s_axi_rready({r_ready}),
	.s_axi_wdata({w_payload_data}),
	.s_axi_wlast({w_last}),
	.s_axi_wstrb({w_payload_strb}),
	.s_axi_wuser({w_param_user}),
	.s_axi_wvalid({w_valid}),
	.m_axi_araddr({axiinterface1_ar_payload_addr, axiinterface0_ar_payload_addr}),
	.m_axi_arburst({axiinterface1_ar_payload_burst, axiinterface0_ar_payload_burst}),
	.m_axi_arcache({axiinterface1_ar_payload_cache, axiinterface0_ar_payload_cache}),
	.m_axi_arid({axiinterface1_ar_param_id, axiinterface0_ar_param_id}),
	.m_axi_arlen({axiinterface1_ar_payload_len, axiinterface0_ar_payload_len}),
	.m_axi_arlock({axiinterface1_ar_payload_lock, axiinterface0_ar_payload_lock}),
	.m_axi_arprot({axiinterface1_ar_payload_prot, axiinterface0_ar_payload_prot}),
	.m_axi_arqos({axiinterface1_ar_payload_qos, axiinterface0_ar_payload_qos}),
	.m_axi_arregion({axiinterface1_ar_payload_region, axiinterface0_ar_payload_region}),
	.m_axi_arsize({axiinterface1_ar_payload_size, axiinterface0_ar_payload_size}),
	.m_axi_aruser({axiinterface1_ar_param_user, axiinterface0_ar_param_user}),
	.m_axi_arvalid({axiinterface1_ar_valid, axiinterface0_ar_valid}),
	.m_axi_awaddr({axiinterface1_aw_payload_addr, axiinterface0_aw_payload_addr}),
	.m_axi_awburst({axiinterface1_aw_payload_burst, axiinterface0_aw_payload_burst}),
	.m_axi_awcache({axiinterface1_aw_payload_cache, axiinterface0_aw_payload_cache}),
	.m_axi_awid({axiinterface1_aw_param_id, axiinterface0_aw_param_id}),
	.m_axi_awlen({axiinterface1_aw_payload_len, axiinterface0_aw_payload_len}),
	.m_axi_awlock({axiinterface1_aw_payload_lock, axiinterface0_aw_payload_lock}),
	.m_axi_awprot({axiinterface1_aw_payload_prot, axiinterface0_aw_payload_prot}),
	.m_axi_awqos({axiinterface1_aw_payload_qos, axiinterface0_aw_payload_qos}),
	.m_axi_awregion({axiinterface1_aw_payload_region, axiinterface0_aw_payload_region}),
	.m_axi_awsize({axiinterface1_aw_payload_size, axiinterface0_aw_payload_size}),
	.m_axi_awuser({axiinterface1_aw_param_user, axiinterface0_aw_param_user}),
	.m_axi_awvalid({axiinterface1_aw_valid, axiinterface0_aw_valid}),
	.m_axi_bready({axiinterface1_b_ready, axiinterface0_b_ready}),
	.m_axi_rready({axiinterface1_r_ready, axiinterface0_r_ready}),
	.m_axi_wdata({axiinterface1_w_payload_data, axiinterface0_w_payload_data}),
	.m_axi_wlast({axiinterface1_w_last, axiinterface0_w_last}),
	.m_axi_wstrb({axiinterface1_w_payload_strb, axiinterface0_w_payload_strb}),
	.m_axi_wuser({axiinterface1_w_param_user, axiinterface0_w_param_user}),
	.m_axi_wvalid({axiinterface1_w_valid, axiinterface0_w_valid}),
	.s_axi_arready({ar_ready}),
	.s_axi_awready({aw_ready}),
	.s_axi_bid({b_param_id}),
	.s_axi_bresp({b_payload_resp}),
	.s_axi_buser({b_param_user}),
	.s_axi_bvalid({b_valid}),
	.s_axi_rdata({r_payload_data}),
	.s_axi_rid({r_param_id}),
	.s_axi_rlast({r_last}),
	.s_axi_rresp({r_payload_resp}),
	.s_axi_ruser({r_param_user}),
	.s_axi_rvalid({r_valid}),
	.s_axi_wready({w_ready})
);

endmodule

// -----------------------------------------------------------------------------
//  Auto-Generated by LiteX on 2023-02-28 14:34:19.
//------------------------------------------------------------------------------
