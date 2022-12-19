module counts(clk, nreset, go, count);
input clk, nreset, go;
output [3:0] count;

reg [3:0] count;
wire [3:0] temp;

// assign temp = count + 1'b1;
count4 count4(.count(count),.clk(clk),.go(go),.nreset(nreset));

always @ (posedge clk or negedge nreset)
begin
    if(!nreset)
    begin
    count <= 4'b0;
    end
    else
    begin
    count <= temp;
    end
    end
endmodule
