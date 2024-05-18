`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Kharagpur   
// Engineer: Venkata Sreekanth Balijabudda
// 
// Create Date: 04.03.2020 10:26:24
// Design Name: 
// Module Name: FirstXilArbiter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: A 128 bit Arbiter PUF for Xilinx Artix 7 FPGA devices.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module d5FirstXilArbiter (
    input clk,
    input en,
    input rst,
    input ten,
    input [15:0] chalin,
    output resp
    );
    // parameter cwidth = 128;
     parameter cwidth = 16;
    
 	(*KEEP = "TRUE"*) wire [cwidth-1:0] chaltop,chalbot;
    //wire [63:0] obits,chal;
    //(*KEEP = "TRUE"*) wire [cwidth-1:0] clear=64'd0;
    //(*KEEP = "TRUE"*) reg [cwidth-1:0] clear=64'd0;
    (*KEEP = "TRUE"*) reg [cwidth-1:0] clear=16'hFFFF;
    (*KEEP = "TRUE"*) wire resptop, respbot;
    (*KEEP = "TRUE"*) wire triga,trigb;
    (*KEEP = "TRUE"*) reg stacent=1'b0;
    (*KEEP = "TRUE"*) reg stacenb=1'b0;
//	(*KEEP = "TRUE"*) wire stacent,stacenb;
    (*KEEP = "TRUE"*) reg pre=1'b1,clr=1'b1;
    (*KEEP = "TRUE"*) reg [cwidth-1:0] obits;
    (*KEEP = "TRUE"*) wire gclk;
    (*KEEP = "TRUE"*) wire Q,Qn,qresp;
    (*KEEP = "TRUE"*) wire Q1,Q2,Q3,Qn1,Qn2,Qn3;
    (*KEEP = "TRUE"*) wire rsin,sin;
(*KEEP = "TRUE"*) reg rclr=1'b1;
//    (*KEEP = "TRUE"*) wire rclr;
    //(*noprune*) (*keep*) (*syn_preserve*) wire [63:0] preset=64'h7BCCBF4B4BCC9A7B; //random
    //(*noprune*) LFSR_DCO lfsr (.obits(obits),.clkr(clk),.preset(preset),.clear(clear));
    //(*noprune*) (*keep*) (*syn_preserve*) wire enab=1;
//	assign stacent = (en==1) ? 1'b1 : 1'b0;
//	assign stacenb = (en==1) ? 1'b1 : 1'b0;

/*    
    always @(posedge clk) begin
    case (chalin)
//    4'b0000: obits=64'h7BCCBF4B4BCC9A7B;
//    4'b0001: obits=64'h8B5D5E5DFF39AED0;
//    4'b0010: obits=64'h790CACCF88CB3D4B;
//    4'b0011: obits=64'hC66D17EDC891EF75;
//    4'b0100: obits=64'h2BF39CDA1A03F405;
//    4'b0101: obits=64'hCA041EDDD73D01A7;
//    4'b0110: obits=64'h1A0FF671E3D45D0D;
//    4'b0111: obits=64'hB79D314D94F67FD9;
//    4'b1000: obits=64'hF2DC78216B642C93;
//    4'b1001: obits=64'h8CA5F0F1146EE69F;
//    4'b1010: obits=64'h35867C68EA530433;
//    4'b1011: obits=64'h66C2109EABC6964D;
//    4'b1100: obits=64'hB44F1AE038FF0173;
//    4'b1101: obits=64'hE9425AE6C86BB9C7;
//    4'b1110: obits=64'hBB4D7C98CDAEAF35;
//    4'b1111: obits=64'h48C11F7C6A3105C3;
      4'b0000: obits=64'hB77529A0C90B38BE;
      4'b0001: obits=64'hCB337C13FF12DC46;
      4'b0010: obits=64'h06D5D87A1E810BD3;
      4'b0011: obits=64'h173D0161DA5AC8EE;
      4'b0100: obits=64'h8B1DD0DC6E134CF8;
      4'b0101: obits=64'h1CCEF0D46C7AB36C;
      4'b0110: obits=64'hC88CB4D60355B2A7;
      4'b0111: obits=64'h7B77012B504AB105;
      4'b1000: obits=64'h5EE78C204AB3704E;
      4'b1001: obits=64'h183165ECA6295CFC;
      4'b1010: obits=64'h0B6A046AB7C19657;
      4'b1011: obits=64'hAB980FCD377DC10B;
      4'b1100: obits=64'hC68AD4AEA88408CA;
      4'b1101: obits=64'hF0E59B56198AB415;
      4'b1110: obits=64'h5423F3E42395EDC4;
      4'b1111: obits=64'h44ADF3122A25B92B;
    endcase
    end
  */ 
/*
  always @(*) begin
 // obits<=chalin;
 resp<=qresp;
  end
*/  

    always @(*) begin
    if(rst==1'b1) begin
        clear <= 16'hFFFF;
        pre<=1'b1;
        clr<=1'b1;
        end
        else begin
            clear<=16'd0;
            pre<=1'b0;
            clr<=1'b0;
         end
    end


    always @(posedge clk) begin
    	 if(en==1'b1) begin
        (*DONT_TOUCH = "TRUE"*) stacent<=1'b1;
        (*DONT_TOUCH = "TRUE"*) stacenb<=1'b1;
        end
        else begin
        (*DONT_TOUCH = "TRUE"*) stacent<=1'b0;
        (*DONT_TOUCH = "TRUE"*) stacenb<=1'b0;
        end
    end
/*

always @(posedge clk) begin
        if(en==1) begin
        (*DONT_TOUCH = "TRUE"*) stacent<=1'b1;
        (*DONT_TOUCH = "TRUE"*) stacenb<=1'b1;
rclr<=1'b1;
        end
        else begin
        (*DONT_TOUCH = "TRUE"*) stacent<=1'b0;
        (*DONT_TOUCH = "TRUE"*) stacenb<=1'b0;
rclr<=1'b0;
        end
    end

always @(rst) begin
if(rst==1) begin
	clear <= 64'hFFFF_FFFF_FFFF_FFFF;
    pre<=1'b1;
    clr<=1'b1;

end
else begin
clear<=64'd0;
        pre<=1'b0;
        clr<=1'b0;
end
end

*/
    //The Following d-flipflops may require control as to when to feed in the challenge.
    genvar i; 
        generate
       
        for (i=0; i<cwidth; i=i+1) begin : dffos  
        //dfliflop dffarra (.q(tem[i+1]),.d(tem[i]),.clk(clkr),.pre(preset[i]),.clr(clear[i]));
          //(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dfftops (.D(obits[i]),.C(clk),.CE(1'b1),.CLR(clear[i]),.Q(chaltop[i]));
          (*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dfftops (.D(chalin[i]),.C(clk),.CE(1'b1),.CLR(clear[i]),.Q(chaltop[i]));
          //(*DONT_TOUCH = "TRUE"*) FDCE dffbots (.d(obits[i]),.clk(clk),.ena(1'b1),.q(chalbot[i]));
          //(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffbots (.D(obits[i]),.C(clk),.CE(1'b1),.CLR(clear[i]),.Q(chalbot[i]));
          (*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffbots (.D(chalin[i]),.C(clk),.CE(1'b1),.CLR(clear[i]),.Q(chalbot[i]));
        end
        endgenerate
    
    //Starting Trigger registers with Clock Enables as control
    //(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffstato (.D(1'b1),.C(clk),.CE(stacent),.CLR(clear[0]),.Q(triga));
    (*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffstato (.D(1'b1),.C(clk),.CE(stacent),.CLR(clr),.Q(triga));
    (*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffstabo (.D(1'b1),.C(clk),.CE(stacenb),.CLR(clr),.Q(trigb)); 
    
    //Top and Bottom paths separated
    (*DONT_TOUCH = "TRUE"*) dddFirstXilArbiterTop #(.cwidth(cwidth)) fiatop (.resp(resptop),.chal(chaltop),.trig(triga),.pre(pre));
    (*DONT_TOUCH = "TRUE"*) dddFirstXilArbiterBot #(.cwidth(cwidth)) fiabot (.resp(respbot),.chal(chalbot),.trig(trigb),.clr(clr));

    //(*DONT_TOUCH = "TRUE"*) dddFirstXilArbiterTop #(.cwidth(cwidth)) fiatop (.resp(resptop),.chal(chaltop),.trig(triga),.pre(pre),.clk(clk));
    //(*DONT_TOUCH = "TRUE"*) dddFirstXilArbiterBot #(.cwidth(cwidth)) fiabot (.resp(respbot),.chal(chalbot),.trig(trigb),.clr(clr),.clk(clk));
           
    //Finally
   //(*DONT_TOUCH = "TRUE"*) and andga (gclk,resptop,respbot);

//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h8)) andu (.O(rin),.I0(gclk),.I1(stacent));
//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h8)) andd (.O(sin),.I0(~gclk),.I1(stacenb));

  //  (*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffend (.D(1'b1),.C(gclk),.CE(1'b1),.CLR(clear[0]),.Q(Q));
//   (*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffend (.D(1'b1),.C(gclk),.CE(1'b1),.CLR(clr),.Q(resp));
   //(*DONT_TOUCH = "TRUE"*) LDCE #(.INIT(1'b0)) dffend (.D(1'b1),.G(gclk),.GE(1'b1),.CLR(clr),.Q(resp));
   //(*DONT_TOUCH = "TRUE"*) LDCE #(.INIT(1'b0)) dffend (.D(1'b1),.G(1'b1),.GE(gclk),.CLR(clear[0]),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) nor nga1 (Q,clear[0],Qn);
//(*DONT_TOUCH = "TRUE"*) nor nga2 (Qn,Q,gclk);

//removed 17.01.24
//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h7)) nandu (.O(Qn),.I0(resptop),.I1(Q));
//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h7)) nandd (.O(Q),.I0(Qn),.I1(respbot));

//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h7)) nandu (.O(Qn),.I0(~clr),.I1(Q));
//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h7)) nandd (.O(Q),.I0(Qn),.I1(~gclk));
//assign rclr=clr&(~gclk);

//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h1)) noru (.O(Q),.I0(clr),.I1(Qn));
//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h1)) nord (.O(Qn),.I0(Q),.I1(gclk));

/*
(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFG bufferu1 (
.O(Q1),
.I(Q)
);
(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFG bufferd1 (
.O(Qn1),
.I(Qn)
);

(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFG bufferu2 (
.O(Q2),
.I(Q1)
);
(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFG bufferd2 (
.O(Qn2),
.I(Qn1)
);
(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFG bufferu3 (
.O(Q3),
.I(Q2)
);
(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFG bufferd3 (
.O(Qn3),
.I(Qn2)
);
*/
/*
(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) CAPTUREE2 #(.ONESHOT("TRUE")) buffer1 (
.CAP(Q3),
.CLK(clk)
);
*/

//(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dff1 (.D(respbot),.C(resptop),.CE(1'b1),.CLR(clr),.Q(Q1));
//(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dff1 (.D(1'b1),.C(gclk),.CE(1'b1),.CLR(clr),.Q(Q));
//(*DONT_TOUCH = "TRUE"*) LDCE #(.INIT(1'b0)) dffend (.D(resptop),.G(respbot),.GE(1'b1),.CLR(clr),.Q(resp));
(*DONT_TOUCH = "TRUE"*) LDCE #(.INIT(1'b0)) dffend (.D(resptop),.G(respbot),.GE(1'b1),.CLR(clr),.Q(Qn));
//(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dff2 (.D(resptop),.C(Q1),.CE(1'b1),.CLR(clr),.Q(Q2));

//(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dff3 (.D(Q2),.C(clk),.CE(1'b1),.CLR(clr),.Q(Q3));
(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dff3 (.D(Qn),.C(ten),.CE(1'b1),.CLR(clr),.Q(resp));
//(*KEEP ="TRUE"*) assign qresp=Q;
//(*KEEP ="TRUE"*) assign resp=Q;
//always @(*) begin
//resp<=Q;
//end

endmodule
