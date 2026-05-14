
module tb();

reg [7:0] a = 8'd12;
reg [7:0] b = 8'd34;

integer c = 8'd67;
integer  d = 8'd255;

initial begin 
#12;
$display("value of a = %0d , b = %0d, c = %0d, d = %0d at simulation time = %0t", a,b,c,d, $time);

end 




endmodule
