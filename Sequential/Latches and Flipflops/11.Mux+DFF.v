module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    wire d;
    always @(posedge clk)
        	Q<=d;
    assign d=L?r_in:q_in;

endmodule
