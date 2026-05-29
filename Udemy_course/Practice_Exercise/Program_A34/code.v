

module tb();

int sana[];
int smb[];
int status, status2;
initial begin 
sana = new[12];
smb = new[12];

for(int i = 0; i<12; i++) begin 

sana[i] = i*3;
smb [i] = i*4;


end
$display("sana: %0p", sana);
$display("smb: %0p", smb);

status = (sana == smb);

$display("status: %0d", status);

status2 = (sana != smb);

$display("status2: %0d", status2);
end

initial begin 

#10;
$finish();
end 


endmodule
