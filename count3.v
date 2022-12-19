module count3(clk, nreset, go, count);
input clk, nreset, go;
output [2:0] count;

reg [2:0] count;
wire [2:0] temp;

assign temp = count + 1'b1;

always @ (posedge clk or negedge nreset)
begin
    if(!nreset)
    begin
    count <= 3'b0;
    end
    else
    begin
    count <= temp;
    end
    end
endmodule
