`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2025 09:29:31 AM
// Design Name: 
// Module Name: adc2bram
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


module adc2bram(input wire reset, input S_AXIS_t_valid, input aclk, output wire [9:0] addra, output wire wea,output wire finished);
localparam RESET=0,CLEAR=1,WRITE=2, IDLE=3;
reg [1:0] state, next_state;
reg [9:0] adda,next_adda;
reg we;
reg fin;
reg [10:0] cyc,nextcyc;
assign addra=adda;
assign finished=fin;
assign wea=we;

initial
begin
cyc=0;
fin=0;
end

always @(posedge aclk)
begin
 if (reset) begin
    state <=RESET;
 end 
 else begin
    state <= next_state;
    adda<=next_adda;
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
           we=0;
           next_state=WRITE;
           end
        WRITE:begin
        we=1;
        next_adda=adda+1;
        if (adda==256) begin
        fin=1'b1;
        end
        if (adda==1023)
        begin
        nextcyc=cyc+1;
        if (cyc==1024) begin 
        next_state=IDLE;
        end
        end
        end
        IDLE:begin
        we=0;
        end
endcase 
end
endmodule
