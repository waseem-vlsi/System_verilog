
module tb();

reg clock;
reg reset; 

initial begin 

clock = 1'b0;
reset = 1'b0;

end 

always #20 clock = ~ clock;

initial begin 

#200;
$finish;
end

endmodule
