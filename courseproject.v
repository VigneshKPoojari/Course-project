`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:13:29 04/11/2022 
// Design Name: 
// Module Name:    courseproject 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module courseproject(clk);
reg [0:32]data[0:2100];
reg [0:32]temp[0:2100];
input clk;
integer i,outfile;
integer value=3;
initial begin
 outfile = $fopen("outfile.txt", "w");  
 end
initial

 $readmemh("image.hex",data);

always @ (posedge clk)
begin
 for(i=0;i<2100;i=i+1)
 begin

 temp[i] = data[i]+value;
 $display("value before incresing%h , after incresing    %h",data[i],temp[i]);
 $fwrite(outfile,"%h  \n",temp[i]);
 end
 $fclose(outfile);
 end

endmodule
