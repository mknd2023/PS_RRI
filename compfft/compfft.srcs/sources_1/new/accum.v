`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2025 09:54:06 AM
// Design Name: 
// Module Name: accum
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module accum(input wire res,input wire clk, input wire tlast, input wire [63:0] rdata, output wire [9:0] addread, output wire [63:0] wrdata,output wire o,output wire [3:0] f, output wire b);
reg [63:0] rd,wd;
reg [9:0] add,nextadd;
reg c,clou,start;
reg [2:0] m;
reg [3:0]h;
reg back;
reg state, nextstate;
assign b=back;
assign o=c;
assign f=h;
assign addread=add;
assign cloug=m;
assign wrdata=wd;

initial
begin 
c=0;
clou=0;
start=0;
add=1023;
m=0;
h=0;
back=0;
wd=0;
end

always @(posedge clk)
begin
if (res) 
begin
state<=0;
add<=1023;
end
else if (c==1)
begin
add<=nextadd;
state<=nextstate;
end
end

always @(*)
begin
if (m>3) m=4;
if (tlast&clou&(~start))
begin
start=1;
end
else if (start&(add==2))
begin
m=m+1;
end
else if (tlast) 
begin
c=1;
clou=1;
end
nextadd=add+1;
if ((m!=0)&&(m<4)) assign wd=rdata;
else if (m==4)
begin 
c=0;
h=4'b1111;
assign wd=rdata;
end
else 
begin
wd=0;
h=0;
end
if (m==5) back=1;
end

endmodule
