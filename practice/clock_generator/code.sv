module clk_gen (
  input   logic        clk_in,

  input   logic        reset,

  output  logic        clk_v1,
  output  logic        clk_v2
);
  logic q_out, d_in;
  always_ff@(posedge clk_in or posedge reset) begin 
    
    if(reset) begin 
     q_out <= 1'b0; 
          end 
    else begin 
      q_out <= d_in;
    end 
  end
  
  assign d_in = ~q_out;
  assign clk_v1 = clk_in & q_out;
  assign clk_v2 = clk_v1 ^ clk_in;

endmodule
