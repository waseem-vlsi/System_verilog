

module tb();


int wasi[10];
int renu[10];

initial begin 

for(int i = 0; i<10 ; i++) begin 

wasi[i] = 2*i;

end

renu = wasi;

$display("wasi: %p", wasi);
$display("renu: %p", renu);

end 


endmodule
