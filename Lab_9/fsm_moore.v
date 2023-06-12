module fsm_moore(w,clock,reset,y);

input clock; // clock signal
input reset; // reset input
input w; // binary input
output reg y; // output of the sequence detector

parameter  A = 4'b0000, B = 4'b0001, C = 4'b0010, D = 4'b0011, E = 4'b0100,
F = 4'b0101, G = 4'b0110, H = 4'b0111, I = 4'b1000;

reg [3:0] current_state, next_state; // current state and next state

// sequential memory of the Moore FSM

always @(posedge clock, posedge reset)

begin

 if(reset==1) 
 
 current_state <= A;// when reset=1, reset the state of the FSM to "A" State
 
 else
 
 current_state <= next_state; // otherwise, next state
 
end 


// combinational logic of the Moore FSM
// to determine next state
 
always @(current_state,w)

begin

 case(current_state)
 
 A:begin
 
  if(w==1)
  
   next_state = F;
	
  else
  
   next_state = B;
	
 end
 
 B:begin
 
  if(w==1)
  
   next_state = F;
	
  else
  
   next_state = C;
	
 end
 
 C:begin
 
  if(w==1)
  
   next_state = F;
	
  else
  
   next_state = D;
	
 end
 
 D:begin
 
  if(w==1)
  
   next_state = F;
	
  else
  
   next_state = E;
	
 end
 
 E:begin
 
  if(w==1)
  
   next_state = F;
	
  else
  
   next_state = E;
	
 end
 
 F:begin
 
  if(w==1)
  
   next_state = G;
	
  else
  
   next_state = B;
	
 end
 
 G:begin
 
  if(w==1)
  
   next_state = H;
	
  else
  
   next_state = B;
	
 end
 
 H:begin
 
  if(w==1)
  
   next_state = I;
	
  else
  
   next_state = B;
	
 end
 
 I:begin
 
  if(w==1)
  
   next_state = I;
	
  else
  
   next_state = B;
	
 end
 
 
 default:next_state = A;
 
 endcase
 
end

// combinational logic to determine the output
// of the Moore FSM, output only depends on current state

always @(current_state)

begin
 
 case(current_state) 
 
 A:   y = 0;
 
 B:   y = 0;
 
 C:   y = 0;
 
 D:   y = 0;
 
 E:   y = 1;
 
 F:   y = 0;
 
 G:   y = 0;
 
 H:   y = 0;
 
 I:   y = 1;
 
 default:  y = 0;
 
 endcase
 
end 

endmodule