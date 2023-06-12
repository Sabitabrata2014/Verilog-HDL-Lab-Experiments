`timescale 1ns / 1ps

module fsm_moore_tb;

 // Inputs
 reg w;
 reg clock;
 reg reset;

 // Outputs
 wire y;

 // Instantiate the fsm_moore
 fsm_moore DUT (w,clock,reset,y);
 
 initial begin
 
 clock = 0;
 
 forever #5 clock = ~clock;
 
 end 
 
 initial begin
 
  // Initialize Inputs
  
  w = 0;
  
  reset = 1;
  
  // Wait 100 ns for global reset to finish
  
  #30;
  
      reset = 0;
		
  #40; w = 1;
  
  #10; w = 0;
  
  #10; w = 1; 
  
  #40; w = 0; 
  
  #20; w = 1;
  
  #20; w = 0;  


 end
      
endmodule