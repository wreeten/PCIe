module count3_tb();
reg clk, nreset, go;
wire [3:0] count;
wire [7:0] one_hot1;

//count3 count3 (.count(count), .clk(clk), .go(go), .nreset(nrest));
one_hot one_hot(.count(count),.clk(clk),.go(go),.nreset(nreset),.one_hot1(one_hot1));

always #50 clk=! clk;

initial



begin
$vcdpluson;
clk = 0;
nreset = 0;
go = 0;
#5 nreset = 1;
#1000 $finish;
end
initial $monitor("%d %d %d %3d %8b ", clk,nreset,go,count,one_hot1);
//end
endmodule
