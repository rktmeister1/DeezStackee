/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifterModule_24 (
    input [15:0] x,
    input [3:0] b,
    input alufn,
    output reg [15:0] shiftOutput
  );
  
  
  
  reg [15:0] w;
  
  reg [15:0] y;
  
  reg [15:0] z;
  
  always @* begin
    if (alufn == 1'h0 | (alufn == 1'h1 & x[0+0-:1] == 1'h0)) begin
      
      case (b[3+0-:1])
        1'h0: begin
          w = x;
        end
        1'h1: begin
          w[8+7-:8] = x[0+7-:8];
          w[0+7-:8] = 8'h00;
        end
        default: begin
          w = x;
        end
      endcase
      
      case (b[2+0-:1])
        1'h0: begin
          y = w;
        end
        1'h1: begin
          y[4+11-:12] = w[0+11-:12];
          y[0+3-:4] = 4'h0;
        end
        default: begin
          y = w;
        end
      endcase
      
      case (b[1+0-:1])
        1'h0: begin
          z = y;
        end
        1'h1: begin
          z[2+13-:14] = y[0+13-:14];
          z[0+1-:2] = 2'h0;
        end
        default: begin
          z = y;
        end
      endcase
      
      case (b[0+0-:1])
        1'h0: begin
          shiftOutput = z;
        end
        1'h1: begin
          shiftOutput[1+14-:15] = z[0+14-:15];
          shiftOutput[0+0-:1] = 1'h0;
        end
        default: begin
          shiftOutput = z;
        end
      endcase
    end else begin
      if (alufn == 1'h1 & x[0+0-:1] == 1'h1) begin
        
        case (b[3+0-:1])
          1'h0: begin
            w = x;
          end
          1'h1: begin
            w[8+7-:8] = x[0+7-:8];
            w[0+7-:8] = 8'hff;
          end
          default: begin
            w = x;
          end
        endcase
        
        case (b[2+0-:1])
          1'h0: begin
            y = w;
          end
          1'h1: begin
            y[4+11-:12] = w[0+11-:12];
            y[0+3-:4] = 4'hf;
          end
          default: begin
            y = w;
          end
        endcase
        
        case (b[1+0-:1])
          1'h0: begin
            z = y;
          end
          1'h1: begin
            z[2+13-:14] = y[0+13-:14];
            z[0+1-:2] = 2'h3;
          end
          default: begin
            z = y;
          end
        endcase
        
        case (b[0+0-:1])
          1'h0: begin
            shiftOutput = z;
          end
          1'h1: begin
            shiftOutput[1+14-:15] = z[0+14-:15];
            shiftOutput[0+0-:1] = 1'h1;
          end
          default: begin
            shiftOutput = z;
          end
        endcase
      end
    end
  end
endmodule
