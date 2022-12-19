module one_hot(clk, nreset, go, count, one_hot1);
input clk, nreset, go;
output [3:0] count; 
output [7:0]one_hot1;

wire [3:0] count;
reg [7:0] one_hot1;

//module count3;
//reg clk, nreset,go;
//wire[2:0] count;
count3 count3(.count(count),.clk(clk),.go(go),.nreset(nreset));
// wire [2:0] temp;

//assign temp = count + 1'b1;

always @ (*)
begin
case(count)
    3'b000:  one_hot1=8'b00000001;
    3'b001:  one_hot1=8'b00000010;
    3'b010:  one_hot1=8'b00000100;
    3'b011:  one_hot1=8'b00001000;
    3'b100:  one_hot1=8'b00010000;
    3'b101:  one_hot1=8'b00100000;
    3'b110:  one_hot1=8'b01000000;
    3'b111:  one_hot1=8'b10000000;
    default: one_hot1 = 0;


endcase
end
endmodule
