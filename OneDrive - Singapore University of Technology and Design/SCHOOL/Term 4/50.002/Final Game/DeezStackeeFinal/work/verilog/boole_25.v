/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boole_25 (
    input x,
    input y,
    input [3:0] alufn,
    output reg boole
  );
  
  
  
  always @* begin
    boole = 1'h0;
    
    case (x)
      1'h0: begin
        
        case (y)
          1'h0: begin
            boole = alufn[0+0-:1];
          end
          1'h1: begin
            boole = alufn[2+0-:1];
          end
        endcase
      end
      1'h1: begin
        
        case (y)
          1'h0: begin
            boole = alufn[1+0-:1];
          end
          1'h1: begin
            boole = alufn[3+0-:1];
          end
        endcase
      end
    endcase
  end
endmodule
