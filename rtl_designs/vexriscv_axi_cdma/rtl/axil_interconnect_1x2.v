// -----------------------------------------------------------------------------
// Auto-Generated by:        __   _ __      _  __
//                          / /  (_) /____ | |/_/
//                         / /__/ / __/ -_)>  <
//                        /____/_/\__/\__/_/|_|
//                     Build your hardware, easily!
//                   https://github.com/enjoy-digital/litex
//
// Filename   : axil_interconnect_wrapper.v
// Device     : gemini
// LiteX sha1 : a6d9955c
// Date       : 2023-04-04 10:03:28
//------------------------------------------------------------------------------
// This file is Copyright (c) 2022 RapidSilicon
//--------------------------------------------------------------------------------

`timescale 1ns / 1ps

//------------------------------------------------------------------------------
// Module
//------------------------------------------------------------------------------

module axil_interconnect_1x2 (
    input  wire          clk,
    input  wire          rst,
    input  wire          s00_axil_awvalid,
    output wire          s00_axil_awready,
    input  wire   [31:0] s00_axil_awaddr,
    input  wire    [2:0] s00_axil_awprot,
    input  wire          s00_axil_wvalid,
    output wire          s00_axil_wready,
    input  wire   [31:0] s00_axil_wdata,
    input  wire    [3:0] s00_axil_wstrb,
    output wire          s00_axil_bvalid,
    input  wire          s00_axil_bready,
    output wire    [1:0] s00_axil_bresp,
    input  wire          s00_axil_arvalid,
    output wire          s00_axil_arready,
    input  wire   [31:0] s00_axil_araddr,
    input  wire    [2:0] s00_axil_arprot,
    output wire          s00_axil_rvalid,
    input  wire          s00_axil_rready,
    output wire    [1:0] s00_axil_rresp,
    output wire   [31:0] s00_axil_rdata,
    output wire          m00_axil_awvalid,
    input  wire          m00_axil_awready,
    output wire   [31:0] m00_axil_awaddr,
    output wire    [2:0] m00_axil_awprot,
    output wire          m00_axil_wvalid,
    input  wire          m00_axil_wready,
    output wire   [31:0] m00_axil_wdata,
    output wire    [3:0] m00_axil_wstrb,
    input  wire          m00_axil_bvalid,
    output wire          m00_axil_bready,
    input  wire    [1:0] m00_axil_bresp,
    output wire          m00_axil_arvalid,
    input  wire          m00_axil_arready,
    output wire   [31:0] m00_axil_araddr,
    output wire    [2:0] m00_axil_arprot,
    input  wire          m00_axil_rvalid,
    output wire          m00_axil_rready,
    input  wire    [1:0] m00_axil_rresp,
    input  wire   [31:0] m00_axil_rdata,
    output wire          m01_axil_awvalid,
    input  wire          m01_axil_awready,
    output wire   [31:0] m01_axil_awaddr,
    output wire    [2:0] m01_axil_awprot,
    output wire          m01_axil_wvalid,
    input  wire          m01_axil_wready,
    output wire   [31:0] m01_axil_wdata,
    output wire    [3:0] m01_axil_wstrb,
    input  wire          m01_axil_bvalid,
    output wire          m01_axil_bready,
    input  wire    [1:0] m01_axil_bresp,
    output wire          m01_axil_arvalid,
    input  wire          m01_axil_arready,
    output wire   [31:0] m01_axil_araddr,
    output wire    [2:0] m01_axil_arprot,
    input  wire          m01_axil_rvalid,
    output wire          m01_axil_rready,
    input  wire    [1:0] m01_axil_rresp,
    input  wire   [31:0] m01_axil_rdata
);


//------------------------------------------------------------------------------
// Signals
//------------------------------------------------------------------------------

wire          sys_clk;
wire          sys_rst;
wire          aw_valid;
wire          aw_ready;
wire   [31:0] aw_payload_addr;
wire    [2:0] aw_payload_prot;
wire          w_valid;
wire          w_ready;
wire   [31:0] w_payload_data;
wire    [3:0] w_payload_strb;
wire          b_valid;
wire          b_ready;
wire    [1:0] b_payload_resp;
wire          ar_valid;
wire          ar_ready;
wire   [31:0] ar_payload_addr;
wire    [2:0] ar_payload_prot;
wire          r_valid;
wire          r_ready;
wire    [1:0] r_payload_resp;
wire   [31:0] r_payload_data;
wire          axiliteinterface0_aw_valid;
wire          axiliteinterface0_aw_ready;
wire   [31:0] axiliteinterface0_aw_payload_addr;
wire    [2:0] axiliteinterface0_aw_payload_prot;
wire          axiliteinterface0_w_valid;
wire          axiliteinterface0_w_ready;
wire   [31:0] axiliteinterface0_w_payload_data;
wire    [3:0] axiliteinterface0_w_payload_strb;
wire          axiliteinterface0_b_valid;
wire          axiliteinterface0_b_ready;
wire    [1:0] axiliteinterface0_b_payload_resp;
wire          axiliteinterface0_ar_valid;
wire          axiliteinterface0_ar_ready;
wire   [31:0] axiliteinterface0_ar_payload_addr;
wire    [2:0] axiliteinterface0_ar_payload_prot;
wire          axiliteinterface0_r_valid;
wire          axiliteinterface0_r_ready;
wire    [1:0] axiliteinterface0_r_payload_resp;
wire   [31:0] axiliteinterface0_r_payload_data;
wire          axiliteinterface1_aw_valid;
wire          axiliteinterface1_aw_ready;
wire   [31:0] axiliteinterface1_aw_payload_addr;
wire    [2:0] axiliteinterface1_aw_payload_prot;
wire          axiliteinterface1_w_valid;
wire          axiliteinterface1_w_ready;
wire   [31:0] axiliteinterface1_w_payload_data;
wire    [3:0] axiliteinterface1_w_payload_strb;
wire          axiliteinterface1_b_valid;
wire          axiliteinterface1_b_ready;
wire    [1:0] axiliteinterface1_b_payload_resp;
wire          axiliteinterface1_ar_valid;
wire          axiliteinterface1_ar_ready;
wire   [31:0] axiliteinterface1_ar_payload_addr;
wire    [2:0] axiliteinterface1_ar_payload_prot;
wire          axiliteinterface1_r_valid;
wire          axiliteinterface1_r_ready;
wire    [1:0] axiliteinterface1_r_payload_resp;
wire   [31:0] axiliteinterface1_r_payload_data;

//------------------------------------------------------------------------------
// Combinatorial Logic
//------------------------------------------------------------------------------

assign sys_clk = clk;
assign sys_rst = rst;
assign aw_valid = s00_axil_awvalid;
assign aw_payload_addr = s00_axil_awaddr;
assign aw_payload_prot = s00_axil_awprot;
assign s00_axil_awready = aw_ready;
assign w_valid = s00_axil_wvalid;
assign w_payload_data = s00_axil_wdata;
assign w_payload_strb = s00_axil_wstrb;
assign s00_axil_wready = w_ready;
assign s00_axil_bvalid = b_valid;
assign s00_axil_bresp = b_payload_resp;
assign b_ready = s00_axil_bready;
assign ar_valid = s00_axil_arvalid;
assign ar_payload_addr = s00_axil_araddr;
assign ar_payload_prot = s00_axil_arprot;
assign s00_axil_arready = ar_ready;
assign s00_axil_rvalid = r_valid;
assign s00_axil_rresp = r_payload_resp;
assign s00_axil_rdata = r_payload_data;
assign r_ready = s00_axil_rready;
assign m00_axil_awvalid = axiliteinterface0_aw_valid;
assign m00_axil_awaddr = axiliteinterface0_aw_payload_addr;
assign m00_axil_awprot = axiliteinterface0_aw_payload_prot;
assign axiliteinterface0_aw_ready = m00_axil_awready;
assign m00_axil_wvalid = axiliteinterface0_w_valid;
assign m00_axil_wdata = axiliteinterface0_w_payload_data;
assign m00_axil_wstrb = axiliteinterface0_w_payload_strb;
assign axiliteinterface0_w_ready = m00_axil_wready;
assign axiliteinterface0_b_valid = m00_axil_bvalid;
assign axiliteinterface0_b_payload_resp = m00_axil_bresp;
assign m00_axil_bready = axiliteinterface0_b_ready;
assign m00_axil_arvalid = axiliteinterface0_ar_valid;
assign m00_axil_araddr = axiliteinterface0_ar_payload_addr;
assign m00_axil_arprot = axiliteinterface0_ar_payload_prot;
assign axiliteinterface0_ar_ready = m00_axil_arready;
assign axiliteinterface0_r_valid = m00_axil_rvalid;
assign axiliteinterface0_r_payload_resp = m00_axil_rresp;
assign axiliteinterface0_r_payload_data = m00_axil_rdata;
assign m00_axil_rready = axiliteinterface0_r_ready;
assign m01_axil_awvalid = axiliteinterface1_aw_valid;
assign m01_axil_awaddr = axiliteinterface1_aw_payload_addr;
assign m01_axil_awprot = axiliteinterface1_aw_payload_prot;
assign axiliteinterface1_aw_ready = m01_axil_awready;
assign m01_axil_wvalid = axiliteinterface1_w_valid;
assign m01_axil_wdata = axiliteinterface1_w_payload_data;
assign m01_axil_wstrb = axiliteinterface1_w_payload_strb;
assign axiliteinterface1_w_ready = m01_axil_wready;
assign axiliteinterface1_b_valid = m01_axil_bvalid;
assign axiliteinterface1_b_payload_resp = m01_axil_bresp;
assign m01_axil_bready = axiliteinterface1_b_ready;
assign m01_axil_arvalid = axiliteinterface1_ar_valid;
assign m01_axil_araddr = axiliteinterface1_ar_payload_addr;
assign m01_axil_arprot = axiliteinterface1_ar_payload_prot;
assign axiliteinterface1_ar_ready = m01_axil_arready;
assign axiliteinterface1_r_valid = m01_axil_rvalid;
assign axiliteinterface1_r_payload_resp = m01_axil_rresp;
assign axiliteinterface1_r_payload_data = m01_axil_rdata;
assign m01_axil_rready = axiliteinterface1_r_ready;


//------------------------------------------------------------------------------
// Synchronous Logic
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Specialized Logic
//------------------------------------------------------------------------------

axil_interconnect #(
	.ADDR_WIDTH(32),
	.DATA_WIDTH(32),
	.M_COUNT(2),
	.S_COUNT(1)
) axil_interconnect (
	.clk(sys_clk),
	.m_axil_arready({axiliteinterface1_ar_ready, axiliteinterface0_ar_ready}),
	.m_axil_awready({axiliteinterface1_aw_ready, axiliteinterface0_aw_ready}),
	.m_axil_bresp({axiliteinterface1_b_payload_resp, axiliteinterface0_b_payload_resp}),
	.m_axil_bvalid({axiliteinterface1_b_valid, axiliteinterface0_b_valid}),
	.m_axil_rdata({axiliteinterface1_r_payload_data, axiliteinterface0_r_payload_data}),
	.m_axil_rresp({axiliteinterface1_r_payload_resp, axiliteinterface0_r_payload_resp}),
	.m_axil_rvalid({axiliteinterface1_r_valid, axiliteinterface0_r_valid}),
	.rst(sys_rst),
	.s_axil_araddr({ar_payload_addr}),
	.s_axil_arprot({ar_payload_prot}),
	.s_axil_arvalid({ar_valid}),
	.s_axil_awaddr({aw_payload_addr}),
	.s_axil_awprot({aw_payload_prot}),
	.s_axil_awvalid({aw_valid}),
	.s_axil_bready({b_ready}),
	.s_axil_rready({r_ready}),
	.s_axil_wdata({w_payload_data}),
	.s_axil_wstrb({w_payload_strb}),
	.s_axil_wvalid({w_valid}),
	.m_axil_araddr({axiliteinterface1_ar_payload_addr, axiliteinterface0_ar_payload_addr}),
	.m_axil_arprot({axiliteinterface1_ar_payload_prot, axiliteinterface0_ar_payload_prot}),
	.m_axil_arvalid({axiliteinterface1_ar_valid, axiliteinterface0_ar_valid}),
	.m_axil_awaddr({axiliteinterface1_aw_payload_addr, axiliteinterface0_aw_payload_addr}),
	.m_axil_awprot({axiliteinterface1_aw_payload_prot, axiliteinterface0_aw_payload_prot}),
	.m_axil_awvalid({axiliteinterface1_aw_valid, axiliteinterface0_aw_valid}),
	.m_axil_bready({axiliteinterface1_b_ready, axiliteinterface0_b_ready}),
	.m_axil_rready({axiliteinterface1_r_ready, axiliteinterface0_r_ready}),
	.m_axil_wdata({axiliteinterface1_w_payload_data, axiliteinterface0_w_payload_data}),
	.m_axil_wready({axiliteinterface1_w_ready, axiliteinterface0_w_ready}),
	.m_axil_wstrb({axiliteinterface1_w_payload_strb, axiliteinterface0_w_payload_strb}),
	.m_axil_wvalid({axiliteinterface1_w_valid, axiliteinterface0_w_valid}),
	.s_axil_arready({ar_ready}),
	.s_axil_awready({aw_ready}),
	.s_axil_bresp({b_payload_resp}),
	.s_axil_bvalid({b_valid}),
	.s_axil_rdata({r_payload_data}),
	.s_axil_rresp({r_payload_resp}),
	.s_axil_rvalid({r_valid}),
	.s_axil_wready({w_ready})
);

endmodule

// -----------------------------------------------------------------------------
//  Auto-Generated by LiteX on 2023-04-04 10:03:28.
//------------------------------------------------------------------------------
