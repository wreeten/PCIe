module reg16( clk, re,we,addr,data_in,data_out);
input clk; 
input re; 
input we;
input [3:0] addr;
input [7:0] data_in;
output [7:0] data_out;

// first mistake was using register, so use wire this time

reg [15:0] reg0,reg1,reg2,reg3; // we need 4 reads and 4 writes
reg [15:0]reg4,reg5,reg6,reg7; 



always @ (posedge clk) begin
 if (we == 1)
 begin
 case (addr)
    4'b0000: reg0 <= data_in;
    4'b0001: reg1 <= data_in;
    4'b0010: reg2 <= data_in;
    4'b0011: reg3 <= data_in;
    4'b0100: reg4 <= data_in;
    4'b0101: reg5 <= data_in;
    4'b0111: reg6 <= data_in;
    4'b1000: reg7 <= data_in;
 endcase
end
 end

always @(*)
 begin
 if (re==1)
 begin
 case(addr)
    4'b0000: data_out = reg0;
   4'b0001: data_out = reg1;
    4'b0010: data_out = reg2;
   4'b0011: data_out = reg3;
    4'b0100: data_out = reg4;
    4'b0101: data_out = reg5;
    4'b0111: data_out = reg6;
   4'b1000: data_out = reg7;
 endcase
 end

 else 
 data_out = 16'bz;
 end
wire [15:0] reg0,reg1,reg2,reg3; // we need 4 reads and 4 writes
wire [15:0] wri0,wri1,wri2,wri3; 

// we have to instatiate, because it didn't work with previous code: for editing the case
// this is similar to how you instantiated in your testbench
// so the only thing we add is that we and re goes from 0 to 4
//  reg16 reg4(.clk(clk), .re(reg0), .we(wri0), .addr(addr), .data_in(data_in), .data_out(data_out));
// reg16 reg8(.clk(clk), .re(reg1), .we(wri1), .addr(addr), .data_in(data_in), .data_out(data_out));
// reg16 reg12(.clk(clk), .re(reg2), .we(wri2), .addr(addr), .data_in(data_in), .data_out(data_out));
// reg16 reg16(.clk(clk), .re(reg3), .we(wr3), .addr(addr), .data_in(data_in), .data_out(data_out));////  


// this was similar to our previous lab, which was lab four:wq

// one is for write
//assign we0 = (addr[3:0] == 0 ) ? 1 : 0;
//assign we1 = (addr[3:0] == 1 ) ? 1 : 0;
//assign we2 = (addr[3:0] == 2 ) ? 1 : 0;
//assign we3 = (addr[3:0] == 3 ) ? 1 : 0;
// one is for read
//assign re0 = (addr[3:0] == 0 ) ? 1 : 0;
//assign re1 = (addr[3:0] == 1 ) ? 1 : 0;
//assign re2 = (addr[3:0] == 2 ) ? 1 : 0;
//assign re3 = (addr[3:0] == 3 ) ? 1 : 0;

// assign we0 = (addr[3:0] == 0 ) ? 1 : 0;
// assign we1 = (addr[3:0] == 1 ) ? 1 : 0;
// assign we2 = (addr[3:0] == 2 ) ? 1 : 0;
// assign we3 = (addr[3:0] == 3 ) ? 1 : 0;

// assign re0 = (addr[3:0] == 0 ) ? 1 : 0;
// assign re1 = (addr[3:0] == 1 ) ? 1 : 0;
// assign re2 = (addr[3:0] == 2 ) ? 1 : 0;
// assign re3 = (addr[3:0] == 3 ) ? 1 : 0;



// reg [7:0] reg0,reg1,reg2,reg3;
// wire []
always @ (posedge clk) begin
 if (we == 1)
 begin
 case (addr)
    4'b0000: reg0 <= data_in;
    4'b0001: reg1 <= data_in;
    4'b0010: reg2 <= data_in;
    4'b0011: reg3 <= data_in;
    4'b0100: reg4 <= data_in;
    4'b0101: reg5 <= data_in;
    4'b0111: reg6 <= data_in;
    4'b1000: reg7 <= data_in;
 endcase
end
 end

always @(*)
 begin
 if (re==1)
 begin
 case(addr)
    4'b0000: data_out = reg0;
   4'b0001: data_out = reg1;
    4'b0010: data_out = reg2;
   4'b0011: data_out = reg3;
    4'b0100: data_out = reg4;
    4'b0101: data_out = reg5;
    4'b0111: data_out = reg6;
   4'b1000: data_out = reg7;
 endcase
 end

 else 
 data_out = 16'bz;
 end

endmodule
