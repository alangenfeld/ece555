module fsm(input clk, rst, start, 
    output reg [4:0] rd_enA, rd_enB, wr_en,
    output reg 	     done, shift_en, add_en, ppgen_en, left_right);
   
   reg [1:0]	       state, next_state;
   reg [5:0] 	       cnt;
   
   localparam IDLE = 2'b00;
   localparam INIT = 2'b01;
   localparam GO = 2'b10;
   
   
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
      if ((state == IDLE) || (state == INIT && cnt[1:0] == 2'h2))
	cnt <= 6'h0;
      else
      	cnt <= cnt + 1;
   end
   
////////////////////////////////////////////////////////////////////////////////   
// State Machine
////////////////////////////////////////////////////////////////////////////////
   always@* begin
      next_state = IDLE;
      done = 0;
      rd_enA = 5'b00000;
      rd_enB = 5'b00000;
      wr_en = 5'b00000;
      add_en = 0;
      shift_en = 0;
      ppgen_en = 0;
      left_right = 0;
            
      if (state == IDLE) begin
	 if (start) begin // Write R0
	    next_state = INIT;
	    wr_en = 5'b00001; 
	 end
	 else begin
	    next_state = IDLE;
	 end
	 
      end
      else if (state == INIT) begin
	 if (cnt[1:0] == 2'h0) begin // Write R1
	    wr_en = 5'b00010;
	    next_state = INIT;
	 end
	 if (cnt[1:0] == 2'h1) begin // Write R3
	    wr_en = 5'b01000;
	    next_state = INIT;
	 end
	 if (cnt[1:0] == 2'h2) begin // Write R4
	    wr_en = 5'b10000;
	    next_state = GO;
	 end
      end
      
      else if (state == GO) begin
	 
	 if (cnt[1:0] == 2'h0) begin // W2 ppgen A0 B1
	    ppgen_en = 1;
	    rd_enA = 5'b00001;
	    rd_enB = 5'b00010;
	    wr_en = 5'b00100;
	 end
	 if (cnt[1:0] == 2'h1) begin // W3 add A2 B3
	    add_en = 1;
	    rd_enA = 5'b00100;
	    rd_enB = 5'b01000;
	    wr_en = 5'b01000;
	 end
	 if (cnt[1:0] == 2'h2) begin // W1 shiftR A1 B4
	    shift_en = 1;
	    rd_enA = 5'b00010;
	    rd_enB = 5'b10000;
	    wr_en = 5'b00010;
	    left_right = 1;	
	 end
	 if (cnt[1:0] == 2'h3) begin // W0 shift A0 B4
	    shift_en = 1;
	    rd_enA = 5'b00001;
	    rd_enB = 5'b10000;
	    wr_en = 5'b00001;
	 end
	 if (&cnt[5:0]) begin
	    next_state = IDLE;
	    done = 1;
	 end
	 else
	   next_state = GO;
	 
      end
   end // always@ *
   

endmodule; // fsm
