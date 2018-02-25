/*
 * Question 1:
 *
 * Write a Verilog module that computes a four-input XOR function. The input
 * is a[3:0], and the output is y.
 *
 */

module xor_4(input a[3:0], output y);

/* 
 * using an operator before the variable spans the operator across all values
 * of the variable.  Page 179, PDF 205
 */
  assign y = ^a;

endmodule
