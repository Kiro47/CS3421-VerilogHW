/*
 * Question 3
 *
 * Consider a finite state machine that reads bit sequences. It outputs TRUE
 * when it reads 0001, and outputs FALSE otherwise. Write a Verilog module
 * describing this FSM.
 *
 */

// Reset isn't specified so assumed it isn't needed
module(input clock, a, output y);

// List out states and make state holders
  reg[1:0] state;
  parameter IDLE = 2'b00;
  parameter S1 = 2'b01;
  parameter S2 = 2'b10;
  parameter S3 = 2'b11;

// Tell when to check
  always @ (posedge clock)
  
    // by default keep output as 0, only assign it on 0001
    assign y = 0;

    // begin case switch
    case(state)
      // If in S0 / Idle continue on 0
      IDLE: if (a == 1) begin
          state <= IDLE;
        end else if (a == 0) begin
          state <= S1;
        end
      // If in S1 continue on 0
      S1 if (a == 1) begin
          state <= IDLE;
        end else if (a == 0) begin
          state <= S2;
        end
      // if in S2 continue on 0
      S2 if (a == 1) begin
           state <= IDLE;
        end else if (a == 0) begin
           state <= S3;
        end
      // if in S3 continue on 1
      S3 if (a == 0) begin
          state <= IDLE;
        end else if (a == 1) begin
          state <= IDLE;
        assign y = 1;
        end

endmodule
