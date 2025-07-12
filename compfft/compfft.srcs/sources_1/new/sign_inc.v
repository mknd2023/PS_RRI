`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2025 03:12:39 PM
// Design Name: 
// Module Name: sign_inc
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


module sign_inc(input wire [15:0] sss,output wire [31:0] ggg);
assign ggg={{16{sss[15]}},sss};
endmodule
