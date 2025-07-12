`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2025 12:09:42 PM
// Design Name: 
// Module Name: accumol
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


module accumol(input wire r,input wire clk, input wire tlast, input wire [63:0] rdata, output wire [9:0] addread, output wire [63:0] wrdata,output wire o, output wire [3:0] h, output reg b ,output [3:0] ma, output [1:0] statey);
reg [1:0] state,nextstate;
reg [9:0] add,nadd;
reg [63:0] wd,nextwd;
reg c,nc;
reg [2:0] m;
reg [3:0] f,nf;
assign addread=add;
assign wrdata=wd;
assign o=c;
assign h=f;
assign ma=m;
assign statey=state;
always @(posedge clk)begin
add<=nadd;
if (r) 
begin
m<=0;
state<=0;
add<=1023;
f<=0;
end
else if ((state==2)) begin 
if (nadd==2)
m<=m+1;
if ((m==3)&(nadd==2))
begin
f<=4'b1111;
end
else if (m==4)
begin
if (nadd==3) c<=0;
if (nadd==2) f<=0;
end
else if (m>4)
state<=3;
end
else 
begin
state<=nextstate;
c<=nc;
f<=nf;
end
end

always @(*)begin
nextstate=state;
nadd=add;
nextwd=wd;
nc=c;
nf=f;
case (state)
0: begin
nadd=0;
nc=0;
wd=0;
b=0;
if (tlast) nextstate=1;
end
1: begin
nadd=add+1;
if (add==2) nc=1;
if (tlast) nextstate=2;
end
2: begin
nadd=add+1;
wd=rdata; //rdata;
//if (add==2) begin 
//m=m+1;
//if (m==3) 
//begin
//nc=0;
//nf=4'b1111;
//end
//else if (m==4)
//begin
//nf=0;
//nextstate=3;
//end
//end
end
3: begin
b=1;
wd=0;
end
endcase
end

endmodule