`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2025 04:59:53 PM
// Design Name: 
// Module Name: bra2bram
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


module bra2bram(input wire reset, input aclk, output wire [9:0] addra,output wire finished);
localparam RESET=0,CLEAR=1,WRITE=2, IDLE=3;
reg [1:0] state, next_state;
reg [9:0] adda,next_adda;
reg fin;
reg [10:0] cyc, nextcyc;
assign addra=adda;
assign finished=fin;

initial begin 
nextcyc=0;
end

always @(posedge aclk)
begin
 if (~reset) begin
    state <=RESET;
 end 
 else begin
    state <= next_state;
    adda<=next_adda;
    cyc<=nextcyc;
    end
end

always @(*)
begin 
    next_state=state;
    next_adda = adda;
    nextcyc=cyc;
    case (state)
        RESET : begin
           next_adda =10'b0;
           next_state=WRITE;
           fin=1;
           end
        WRITE:begin
        fin=0;
        next_adda=adda+1;
        if (adda==1023) begin
        nextcyc=cyc+1;
        fin=1;
        if (cyc==1024) begin 
        next_state=IDLE;
        end
        else begin 
        next_state =WRITE; 
        end
        end
        end
        IDLE:begin
        fin=1'b1;
        end
endcase 
end
endmodule
