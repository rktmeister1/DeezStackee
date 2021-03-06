/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 4
     DIV = 10
     TOP = 0
     UP = 1
*/
module counter_8 (
    input clk,
    input rst,
    output reg [3:0] value
  );
  
  localparam SIZE = 3'h4;
  localparam DIV = 4'ha;
  localparam TOP = 1'h0;
  localparam UP = 1'h1;
  
  
  reg [13:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 11'h3ff;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[10+3-:4];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h0 && M_ctr_q == 11'h3ff) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h0 && M_ctr_q == 1'h0) begin
        M_ctr_d = 11'h3ff;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
