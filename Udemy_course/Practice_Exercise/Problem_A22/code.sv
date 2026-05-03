
module tb();

reg clk;
reg resetn;

initial begin 

clk = 1'b0;
resetn = 1'b0;

end

initial begin 
 forever
 #50 clk = ~clk;
 

end 

initial begin 
#100; 
resetn = 1'b0;

 resetn = ~resetn ;
forever
#50 resetn = ~resetn ;

end 
initial begin 

$monitor("resetn = %0d at time = %0t", resetn, $time);
end

initial begin 
#2000;

$finish;

end 
endmodule
