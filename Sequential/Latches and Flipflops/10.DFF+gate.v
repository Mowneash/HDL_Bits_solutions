module top_module (
    input clk,
    input in, 
    output out);
    wire d;
    always @(posedge clk)
        out<=d;
    assign d=in^out;

endmodule
