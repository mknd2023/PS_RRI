`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2025 10:07:15 AM
// Design Name: 
// Module Name: outcount
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


module outcou(input wire r,input wire clk, input wire tlast, output wire [9:0] accou,output wire [11:0] finad);
localparam RESET=0,COUNTING=1;
reg [9:0] count,nextcount;
reg [2:0] state,nextstate;
reg cout;
assign accou=count;
assign finad=(count+1)*4;
initial
begin
count=0;
cout=1;
end

always @(posedge clk)
begin 
count=nextcount;
if (r)
begin
count<=0;
cout<=1;
state<=2;
end
if (tlast&cout) begin 
state<=0;
cout<=0;
end
else state<=nextstate;
end

always @(*)
begin
nextcount=count;
nextstate=state;
case (state)
RESET: begin
nextstate=COUNTING;
nextcount=1022;
end
COUNTING: begin
nextcount=count+1;
nextstate=COUNTING;
end
endcase
end
endmodule

