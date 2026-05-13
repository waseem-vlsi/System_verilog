
module tb();

reg clk1,clk2;

initial begin 

clk1 = 1'b0;
clk2 = 1'b0;

end 


//always #5 clk1 = ~clk1;
//always #10 clk2 = ~clk2;

always #5 clk1 = ~ clk1;

always begin 
#5;
clk2 = 1'b1;
#10;
clk2 = 1'b0;
#5;

end 
initial begin 

#200;
$finish();

end 
endmodule
