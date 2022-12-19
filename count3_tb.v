module count3_tb;
reg clk, nreset, go;
wire [2:0] count;

count3 count3 ( .count(count), .clk(clk), .go(go), .nreset(nreset));

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
initial $monitor ("%d %d %d %d " , clk , nreset, go, count);


endmodule
