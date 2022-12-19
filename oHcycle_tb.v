module count4_tb;
reg clk, nreset, go;
wire [3:0] count;

one_hot2 one_hot2(.count(count),.clk(clk),.go(go),.nreset(nreset),.one_hot1(one_hot2));

always #50 clk =! clk;

initial



begin
$vcdpluson;
clk = 1'b0;
nreset = 1'b0;
go = 1'b0;
#200 nreset = 1'b1;
go = 1'b1; 
#1000 $finish;
end
initial $monitor ("%d %d %d %d %4d" , clk , nreset, go, count, one_hot_cycle);


endmodule
