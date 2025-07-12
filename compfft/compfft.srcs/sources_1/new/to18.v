`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 11:06:31 AM
// Design Name: 
// Module Name: to18
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


module to18(input wire [15:0] sss,output wire [17:0] ggg);
assign ggg={{2{sss[15]}},sss};
endmodule
