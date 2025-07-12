`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2025 11:57:51 AM
// Design Name: 
// Module Name: ppp
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


module ppp(input wire clk, input wire [63:0] data,input tlast, output wire [31:0] r, output wire [31:0] i,output wire tl);
reg [31:0] nextr,rea,ima,nima;
reg t,nt;
assign tl=t;
assign r=rea;
assign i=ima;
always @(posedge clk) begin
t<=nt;
rea<=nextr;
ima<=nima;
end
always @(*) begin
nima=data[63:32];
nextr=data[31:0];
nt=tlast;
end

endmodule
