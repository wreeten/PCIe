module reg16_tb();

wire [15:0] data_out;
integer j, k, l;
reg [15:0] data_in;
reg [3:0] addr;
reg clk;
reg re;
reg we;

initial
begin
clk =0;
re =0; 
addr=0; 
data_in=0;
end

reg16 reg16s(.clk(clk), .re(re), .we(we), .addr(addr), .data_in(data_in), .data_out(data_out));

always #5 clk != clk;

initial
begin
$display(" clk re we addr data_in data out");


#10
for( j = 0; j < 15; j = j +1)
begin
#10
we = 1;
re = 0;

if (we) // for this one he wants random data, so $random is the key
begin
for(k=0; k < 1; k = k +1)
begin
#10 
data_in = $random;
addr += addr; 
end
end

#10
we = 0;
re = 1;
if (re) // for reading
begin

for(l=0; l<1; l=l+1)
begin
#10 
addr += addr;
end // for addr
end // for for loop
end // for display


#10 
$finish;
end
initial 
$monitor(" %b %b %b %2d %3d %3d ", clk, re, we, addr,data_in, data_out);
endmodule //wooohoo does it complete?

// ideas on how to complete
// for (i = 0; i < 7; i = i+1)
// begin

    

// loop main
// first loop
// enable write
// increment addrr
// rand data_in

// end
// disable write
 
// second loop
// enable read
// increment addr// end loop main
