`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2021 09:39:48
// Design Name: 
// Module Name: uartmod
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


module uartmod(
  output txd,
  output reg uartdone,
  output uartRdy,
  input uartclk,
  input gosen,
  input [63:0] rddata
    );
      // wire uartclk, memclk;
     reg uartSend=0;
     reg [7:0] uartData=8'h00;
    //wire uartRdy;
     wire tgosen;

   //  reg [21:0] count=22'd0;
   //  UART_TXD transmit (.SEND(uartSend),.DATA(uartData),.CLK(uartclk),.READY(uartRdy),.UART_TX(txd));
     UART_TXD transmit (.SEND(uartSend),.DATA(uartData),.CLK(uartclk),.READY(uartRdy),.UART_TX(txd));
     
     parameter RST_REG=3'b000, LD_INIT_STR=3'b001, SEND_CHAR=3'b010, RDY_LOW=3'b011, WAIT_RDY=3'b100, WAIT_BTN=3'b101, LD_BTN_STR=3'b110;
    // parameter RST_REG=2'b00, LD_INIT_STR=2'b01, SEND_CHAR=2'b10, WAIT_BTN=2'b11;
     // RDY_LOW=3'b011, WAIT_RDY=3'b100, WAIT_BTN=3'b101, LD_BTN_STR=3'b110;
     //reg [1:0] uartState = RST_REG;
//    reg [1:0] uartState = WAIT_BTN;
    //reg [2:0] uartState = WAIT_BTN;
     reg [2:0] uartState = RST_REG;
     
     reg [26:0] TMR_CNTR_MAX =27'b101111101011110000100000000; 
     //--100,000,000 = clk cycles per second
     reg [3:0] TMR_VAL_MAX = 4'b1101;
     
     reg [17:0] RESET_CNTR_MAX= 18'b110000110101000000;
     //-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms
     
     integer MAX_STR_LEN = 31;
     
     //MUST BE CONFIGURED ACCORDINGLY
     //reg [4:0] WELCOME_STR_LEN = 5'd17;
     reg [3:0] WELCOME_STR_LEN = 4'd10; //excluding 0th Byte 
     integer BTN_STR_LEN = 24;
     //--Welcome string definition. Note that the values stored at each index
     //--are the ASCII values of the indicated character.    
     //reg [7:0] WELCOME_STR [0:17];
     reg [7:0] WELCOME_STR [0:9];
    // initial begin
    // end
     //-This is used to determine when the 7-segment display should be
     //--incremented
     reg [26:0] tmrCntr = 27'd0; 
     //--This counter keeps track of which number is currently being displayed
     //--on the 7-segment.
     //signal tmrVal : std_logic_vector(3 downto 0) := (others => '0');
    // --Contains the current string being sent over uart.
     //reg [7:0] sendStr [0:17] ;   
     reg [7:0] sendStr [0:9];
    // --Contains the length of the current string being sent over uart.
    //integer strEnd;
    //reg [4:0] strEnd = 5'd17;   
   // reg [3:0] strEnd = 4'd11;
   reg [3:0] strEnd = 4'd10; //excluding 0th Byte
     
     //--Contains the index of the next character to be sent over uart
     //--within the sendStr variable.
     //reg [4:0] strIndex=5'd0;    
     reg [3:0] strIndex=4'd0;
    // reg [2:0] strIndex=4'd0;
     
    // --Used to determine when a button press has occured
    // signal btnReg : std_logic_vector (3 downto 0) := "0000";
    // signal btnDetect : std_logic;
     
    // --UART_TX_CTRL control signals
    
     reg uartTX ;
     
     ///--Current uart state signal
     //reg uartState = RST_REG;
     
    // --Debounced btn signals used to prevent single button presses
     //--from being interpreted as multiple button presses.
    // signal btnDeBnc : std_logic_vector(4 downto 0);
     
     reg [4:0] clk_cntr_reg = 5'b0; 
     
     //signal pwm_val_reg : std_logic := '0';
     
     //--this counter counts the amount of time paused in the UART reset state
     reg [17:0] reset_cntr = 18'd0;
 
     
   always @(posedge uartclk)
    begin
       if ((reset_cntr == RESET_CNTR_MAX) || (uartState != RST_REG))
       reset_cntr <= 0;
    else
   reset_cntr <= reset_cntr + 1;
  end
  
 wire [15:0] tdata;
 //wire [127:0] rddata;
 //wire [63:0] rddata;
 //wire [15:0] rddata;
 //reg uartdone=1'b0;
 //wire uartdone;
// assign uartdone = (uartState == WAIT_BTN) ? 1 : 0; 
//assign uartdone = ((uartState == SEND_CHAR) && (strIndex == strEnd)) ? 1 : 0;
// assign tgosen = (uartRdy==1) ? gosen : 0;    

     //--Next Uart state logic (states described above)
     //always @(posedge sysclk)
    always @(posedge uartclk)
     begin
     /*
     WELCOME_STR[0] <= rddata[127:120];
     WELCOME_STR[1] <= rddata[119:112];
     WELCOME_STR[2] <= rddata[111:104];
     WELCOME_STR[3] <=rddata[103:96];
     WELCOME_STR[4] <= rddata[95:88];
     WELCOME_STR[5] <=rddata[87:80];
     WELCOME_STR[6] <= rddata[79:72];
     WELCOME_STR[7] =rddata[71:64];
     WELCOME_STR[8] <= rddata[63:56];
     WELCOME_STR[9] <= rddata[55:48];
     WELCOME_STR[10] <= rddata[47:40];
     WELCOME_STR[11] <= rddata[39:32];
     WELCOME_STR[12] <= rddata[31:24];
     WELCOME_STR[13] <= rddata[23:16];
     WELCOME_STR[14] <= rddata[15:8];
     WELCOME_STR[15] <= rddata[7:0];
     WELCOME_STR[16] <= 8'h0A;
     */
      /*     WELCOME_STR[0] <= rddata[63:56];
     WELCOME_STR[1] <= rddata[55:48];
     WELCOME_STR[2] <= rddata[47:40];
     WELCOME_STR[3] <= rddata[39:32];
     WELCOME_STR[4] <= rddata[31:24];
     WELCOME_STR[5] <= rddata[23:16];
     WELCOME_STR[6] <= rddata[15:8];
     WELCOME_STR[7] <= rddata[7:0];
     WELCOME_STR[8] <= 8'h0A;*/
     // count<=count+1;
      //if (count[21])
      //gosen = 1;
      //else
      //gosen = 0;
        // if (rising_edge(CLK)) then
            // if (gosen == 1)
              //   uartState <= RST_REG;
             //else    begin
                 case (uartState) 
                  RST_REG : begin
			if (reset_cntr == RESET_CNTR_MAX)
                            uartState <= LD_INIT_STR;
			else uartState <=  RST_REG;
                            end		
                 LD_INIT_STR :
                            uartState <= SEND_CHAR;
			   //uartState <= WAIT_RDY;
		SEND_CHAR :
			//uartState <= WAIT_RDY;	
			uartState <= RDY_LOW;
		RDY_LOW : 
			uartState <= WAIT_RDY;	
                // SEND_CHAR : begin
		WAIT_RDY: begin
                            if(uartRdy == 1) begin
                                if(strIndex == strEnd) begin
                                uartState <= WAIT_BTN;
                                //uartdone<=1;
                                end
                                else
				uartState <= SEND_CHAR;
                                //uartState <= LD_INIT_STR;
                                 end
                             end
                  WAIT_BTN : begin
                          if (gosen == 1) begin
                          //uartdone<=1;
                          //uartState <= RST_REG;
			  uartState <= LD_INIT_STR;
                          end
                          else
                          uartState <= WAIT_BTN;
                          end
               /*      uartState <= RDY_LOW;
                     else
                     uartState <= SEND_CHAR;
                  RDY_LOW :
                     uartState <= WAIT_RDY;
                 WAIT_RDY :
                     if (uartRdy == 1) begin
                         if (strEnd == strIndex)
                             //uartState <= WAIT_BTN;
                             //uartState <= WAIT_RDY;
                             uartState <= RST_REG;
                         else
                             uartState <= SEND_CHAR;
                     end
                 
                 
                LD_BTN_STR :
                     uartState <= SEND_CHAR;*/
                 
                 default:
                     uartState <=  RST_REG;
                 endcase
             //end
     end
     
   always @(posedge uartclk) begin
      if (uartState == RST_REG) begin
         //uartdone<=0;
         //strIndex<=0;
              WELCOME_STR[0] <= rddata[63:56];
        WELCOME_STR[1] <= rddata[55:48];
        WELCOME_STR[2] <= rddata[47:40];
        WELCOME_STR[3] <= rddata[39:32];
        WELCOME_STR[4] <= rddata[31:24];
        WELCOME_STR[5] <= rddata[23:16];
        WELCOME_STR[6] <= rddata[15:8];
        WELCOME_STR[7] <= rddata[7:0];
        WELCOME_STR[8] <= 8'h0A;
	WELCOME_STR[9] <= 8'h0A;
         end
     end 
   
    // --Loads the sendStr and strEnd signals when a LD state is
    // --is reached.
    // always @(posedge sysclk)
     always @(posedge uartclk)    
     begin
             if (uartState == LD_INIT_STR) begin
	sendStr[0] <= rddata[63:56];
        sendStr[1] <= rddata[55:48];
        sendStr[2] <= rddata[47:40];
        sendStr[3] <= rddata[39:32];
        sendStr[4] <= rddata[31:24];
        sendStr[5] <= rddata[23:16];
        sendStr[6] <= rddata[15:8];
        sendStr[7] <= rddata[7:0];
        sendStr[8] <= 8'h0A;
	sendStr[9] <= 8'h0A;
			/*
                             sendStr[0] <= WELCOME_STR[0];
                             sendStr[1] <= WELCOME_STR[1];
                             sendStr[2] <= WELCOME_STR[2];
                             sendStr[3] <= WELCOME_STR[3];
                             sendStr[4] <= WELCOME_STR[4];
                             sendStr[5] <= WELCOME_STR[5];
                             sendStr[6] <= WELCOME_STR[6];
                             sendStr[7] <= WELCOME_STR[7];
                             sendStr[8] <= WELCOME_STR[8];
			     sendStr[9] <= WELCOME_STR[9];
			*/
                             /*
                             sendStr[9] <= WELCOME_STR[9];
                             sendStr[10] <= WELCOME_STR[10];
                             sendStr[11] <= WELCOME_STR[11];
                             sendStr[12] <= WELCOME_STR[12];
                             sendStr[13] <= WELCOME_STR[13];
                             sendStr[14] <= WELCOME_STR[14];
                             sendStr[15] <= WELCOME_STR[15];
                             sendStr[16] <= WELCOME_STR[16];
                             sendStr[17] <= WELCOME_STR[17];
                             */
                             strEnd <= WELCOME_STR_LEN;
                 //if (strIndex == strEnd)
                    strIndex<=4'd0;
                              //uartdone<=0;
                 end
             else if (uartState == SEND_CHAR) begin
		strIndex <= strIndex+1;
              //   sendStr <= BTN_STR;
                // strEnd <= BTN_STR_LEN;
             end
        
     end
           
    always @(posedge uartclk)
  begin
          //if (uartState == SEND_CHAR && uartRdy == 1) begin
          if (uartState == SEND_CHAR) begin
              uartData <= sendStr[strIndex];
              uartSend <= 1;
    /*         if (strIndex == strEnd+1) begin
                  //strIndex <= 4'd0;
		//uartdone<=1;
		end
                 //strIndex=5'd0;                    
              else begin
                  //strIndex <= strIndex+1;
		//uartdone<=0;
		end
              
              end
         */
	end
	 else
              uartSend <= 0;
     
  end 
  
  always @(posedge uartclk) begin
  if(uartState == WAIT_BTN) begin
  uartdone<=1;
  end
  else
  uartdone<=0;
  end
endmodule
