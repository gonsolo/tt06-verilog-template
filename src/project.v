/*
 * Copyright (c) 2023 Gonsolo
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_gonsolo_pepe (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
  assign uio_out = 0;
  assign uio_oe  = 0;

   wire _unused_ok = &{
          1'b0,
	  ena,
	  clk,
	  rst_n,
          1'b0};

endmodule
