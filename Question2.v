/*
 * Question 2
 *
 * Write a Verilog module called minority. It receives three inputs, a, b, and
 * c. It computes one output, y, that is TRUE if at least two of the inputs
 * are FALSE.
 *
 */

// Tried to do with case's ended up  being too complex
module minority(input a, b, c, output y);

  assign y = ((~a & ~b & ~c) | (~a & ~b & c) | (~a & b & ~c) | (a & ~b & ~c));

endmodule


/*
 * Truth table for easy of use
 * a b c | y
 * ----------
 * 0 0 0 | 1
 * 0 0 1 | 1
 * 0 1 0 | 1 
 * 0 1 1 | 0
 * 1 0 0 | 1
 * 1 0 1 | 0
 * 1 1 0 | 0
 * 1 1 1 | 0
 *
 */
