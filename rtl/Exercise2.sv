/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input nReset active-low reset
  @input init   initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input nReset,
    input [15:0] init,
    output logic [15:0] out
);

always @(posedge clk)begin
  if (nReset)
  begin
    out<=init;
  end
  else 
  begin
    
  
    init[0]=init[15]^init[13];
    init[0]=oinit[0]^init[12];
    init[0]=init[0]^init[10];
    out<=init;
  end


end


  
endmodule
