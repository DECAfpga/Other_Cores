/*
A clock divider in Verilog
*/

module deca_top(
  //input MAX10_CLK1_50,

  /////  IO DECA

  // PS2
  input 	PS2_KEYBOARD_CLK,
  input 	PS2_KEYBOARD_DAT,
  input 	PS2_MOUSE_CLK,
  input 	PS2_MOUSE_DAT,

  // UART
  input   UART_RXD,
  output 	UART_TXD,
  
  // JOYSTICK
	input   JOY1_B2_P9,
	input   JOY1_B1_P6,
	input   JOY1_UP,
	input   JOY1_DOWN,
	input   JOY1_LEFT,
	input   JOY1_RIGHT,
	output  JOYX_SEL_O,

  //Pmod MicroSD
  //inout [7:0]  PMOD1,     
  output SPI_CS0_CLKBD, //CS
  output SPI_MOSI,      //MOSI
  input  SPI_MISO_WSBD, //MISO
  output SPI_SCLK_DABD, //SCK
  
  /////  IO SOCKIT - Signal interface with SOCKIT board
  //keyb
  output GPIO0_D4,  
  output GPIO0_D5,
  //mouse
  output GPIO0_D6,  
  output GPIO0_D7,
  //uart
  output GPIO0_D8,  
  input  GPIO0_D9,
  //joy
  output GPIO0_D10, 
  output GPIO0_D11,
  output GPIO0_D12,
  output GPIO0_D13,
  output GPIO0_D16,
  output GPIO0_D17,
  input  GPIO0_D18,
  //sd card pmod1
  input  GPIO0_D19, //CS
  input  GPIO0_D20, //MOSI
  output GPIO0_D21, //MISO
  input  GPIO0_D22 //SCK
 );


assign GPIO0_D4  = PS2_KEYBOARD_CLK;  //HSMC_CLKIN_n1 PIN_AB27
assign GPIO0_D5  = PS2_KEYBOARD_DAT;  //HSMC_RX _n[7] PIN_F8 
assign GPIO0_D6  = PS2_MOUSE_CLK;     //HSMC_CLKIN_p1 PIN_AA26
assign GPIO0_D7  = PS2_MOUSE_DAT;     //HSMC_RX _p[7] PIN_F9
assign GPIO0_D8  = UART_RXD;          //HSMC_TX _n[7] PIN_B3
assign UART_TXD  = GPIO0_D9;          //HSMC_RX _n[6] PIN_G8
assign GPIO0_D10 = JOY1_B2_P9;        //HSMC_TX _p[7] PIN_C3
assign GPIO0_D11 = JOY1_B1_P6;        //HSMC_RX _p[6] PIN_H8
assign GPIO0_D12 = JOY1_UP;           //HSMC_TX _n[6] PIN_D4
assign GPIO0_D13 = JOY1_DOWN;         //HSMC_RX _n[5] PIN_H7
assign GPIO0_D16 = JOY1_LEFT;         //HSMC_TX _p[6] PIN_E4
assign GPIO0_D17 = JOY1_RIGHT;        //HSMC_RX _p[5] PIN_J7

assign JOYX_SEL_O = GPIO0_D18;        //HSMC_TX _n[5] PIN_E2

// assign PMOD1_0 = GPIO0_D19;          //HSMC_RX _n[4] PIN_K8 //CS
// assign PMOD1_1 = GPIO0_D20;          //HSMC_TX _p[5] PIN_E3 //MOSI
// assign GPIO0_D21 = PMOD1_2;          //HSMC_RX _p[4] PIN_K7 //MISO
// assign PMOD1_3 = GPIO0_D22;          //HSMC_CLKOUT_n1  PIN_E6 //SCK
//assign PMOD1_4 = GPIO0_D23;        //HSMC_RX _n[3] PIN_J9
//assign PMOD1_5 = GPIO0_D24;        //HSMC_CLKOUT_p1  PIN_E7
//assign GPIO0_D25 = PMOD1_6;          //HSMC_RX _p[3] PIN_J10
//assign PMOD1_7 = GPIO0_D26;        //HSMC_TX _n[4] PIN_C4

assign SPI_CS0_CLKBD = GPIO0_D19;
assign SPI_MOSI = GPIO0_D20;
assign GPIO0_D21 = SPI_MISO_WSBD;
assign SPI_SCLK_DABD = GPIO0_D22;

endmodule






  

  