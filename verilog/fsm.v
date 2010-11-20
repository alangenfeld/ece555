module fsm(input clk, rst,
    output reg [4:0] rd_enA, rd_enB, wr_en,
    output reg done, ERROR);

   reg [1:0]	       state, next_state;
   
   #define IDLE = 2'b00;
   #define INIT = 2'b01;
   #define GO = 2'b10;
   
   
////////////////////////////////////////////////////////////////////////////////   
// State Machine
////////////////////////////////////////////////////////////////////////////////
always @ (posedge clk) begin
  if (rst)
    state <= 2'b00;
  else
    state <= next_state;
end
   
   
////////////////////////////////////////////////////////////////////////////////   
// Counter
////////////////////////////////////////////////////////////////////////////////
   always @(posedge clk) begin
      if ((state == IDLE)||(state == INIT && &cnt[1:0]))
	cnt <= 4'h0;
      else
      	cnt <= cnt + 1;
   end
   
////////////////////////////////////////////////////////////////////////////////   
// State Machine
////////////////////////////////////////////////////////////////////////////////
   always@* begin
      if (state == IDLE)
	if (start)
	  next_state = INIT;
	else
	  next_state = IDLE;
      
      if (state == INIT)
	if (&counter[1:0])
	  next_state = GO;
	else
	  next_State = INIT;

      if (state == GO)
	if (&counter[3:0])
	  next_state = IDLE;
	else
	  next_state = GO;
   end // always@ *
   
   
      


endmodule; // fsm
