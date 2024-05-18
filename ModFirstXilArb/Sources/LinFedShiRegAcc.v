`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2020 16:05:18
// Design Name: For a 64-bit Arbier PUF on Xilinx
// Module Name: LinFedShiReg
// Project Name: DemoXil
// Target Devices: 
// Tool Versions: 
// Description:  x**64=x**4+x**3+x+1 is a primitive poynomial
// 
// Dependencies: Synchronous Preset and Clear signals.
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LinFedShiRegAcc(
	output lfsrdone,
	output reg [63:0] ldw,
   input lfsrclk,
   input [63:0] preset,
   input [63:0] clear
   );
   
//reg [31:0] fdep;
reg [31:0] fdep=32'd0;
reg [5:0] k=6'd0;
//reg [31:0] k=32'd0;
wire obit;
//wire temp;
wire [64:0] tem;
wire [64:0] teml;
wire temp1, temp2, tk;
reg tlfsrdone=1'b0;
reg [63:0] temp3=64'hFFFF_FFFF_FFFF_FFFF;
reg clkr=0;
//reg [63:0] preset=0;
//reg [63:0] clear=0;
//always #5 clkr=~clkr;
reg [63:0] templdw=64'd0;

genvar i; 
generate

for (i=0; i<64; i=i+1) begin : dffs  
dfliflo dffarra (.q(tem[i+1]),.d(tem[i]),.clk(lfsrclk),.pre(preset[i]),.clr(clear[i]));
end
endgenerate

assign temp1 = tem[64] ^ tem[63]; //Tapping points for the chosen equation of primitive polynomial
assign temp2 = temp1 ^ tem[61];
assign tem[0] = temp2 ^ tem[60];   
assign obit= tem[64];

/*
initial begin
//fdep = $fopen("/home/sreekanth/SequenceT.txt", "wb+");
j<=6'b111110;
fdep = $fopen("/home/sreekanth/DCOSequence.txt", "wb+");

clear=64'hFFFF_FFFF_FFFF_FFFF;
#7 clear=0;
//preset=8'h77;    //0x77
preset=64'hCDB5_A559_AB83_F00A;    //random
#12 preset=0;
//
//#100000 $fclose(fdep);
end

always @(posedge clkr) begin
j<=j+1;
if(j==6'b111111)
$fwrite(fdep,"%b\n",obit);
else
$fwrite(fdep,"%b",obit);

end
*/

//assign lfsrdone=1'b1;
//assign tk = (k[6]);
//assign tk = (&k[5:0]);
assign lfsrdone=tlfsrdone;
//assign lfsrdone=(k[6]&(&k[5:0])) ? 1 : 0;
//assign ldw=(tj==1'b1) ? temp3 : ;
//assign ldw = temp3;
/*
always @(negedge lfsrclk) begin
k<=k+1;
//if(k[6]&(~|k[5:1]))
if(k[5])
tlfsrdone=1;
else
tlfsrdone=0;
end
*/
/*
always @(negedge lfsrclk) begin
fdep=~fdep;
k<=k+1;
end
*/
/*
genvar j; 
generate

for (j=0; j<64; j=j+1) begin : ldws  
dfliflo sipoarra (.q(teml[j+1]),.d(teml[j]),.clk(lfsrclk),.pre(preset[j]),.clr(clear[j]));
end
endgenerate

assign teml[0]=obit;
*/
//assign teml[0]=fdep;
//assign ldw= (tlfsrdone==1) ? teml[64:1] : 64'd0;
//assign ldw={~fdep,~fdep};

always @(posedge lfsrclk) begin
templdw[k]<=obit;
k<=k+1;
if(&k==1) begin
//ldw<=teml[64:1];
ldw<=templdw;
//ldw=64'hCDB5_A559_AB83_F00A;
tlfsrdone<=1;
end
else begin
//ldw=64'd0;
tlfsrdone<=0;
end
end

/*
always @(posedge lfsrclk) begin
ldw[k[5:0]]=obit;
//k=k+1;
if(k[6]&(&k[5:0])) begin
//	ldw=temp3;
// ldw=temp3;
//ldw=64'hCDB5_A559_AB83_F00A;
	k=32'd0;
	//j=6'd0;
	tlfsrdone=1;
	//$fwrite(fdep,"%h\n",ldw);
	//insert here for temp3
end
else begin
	//ldw=64'd0;
	k=k+1;
	//j=j+1;
	tlfsrdone=0;
end
end
*/

//if(tj==1'b1) begin
/*
if(tj) begin
//	ldw=temp3;
 ldw=temp3;
//ldw=64'hCDB5_A559_AB83_F00A;
	//k=6'd0;
	j=6'd0;
	lfsrdone=1;
	//$fwrite(fdep,"%h\n",ldw);
	//insert here for temp3
end
else begin
	//ldw=64'd0;
	//k=k+1;
	//j=k+1;
	j=j+1;
	lfsrdone=0;
end
*/
//end

endmodule

module dfliflo (
output reg q,
input d,
input clk,
input pre,clr);

//always @(negedge clk) begin
always @(posedge clk) begin 
if (clr)
q<=1'b0;
else if(pre)
q<=1'b1;
else
q<=d; 
end

endmodule 


