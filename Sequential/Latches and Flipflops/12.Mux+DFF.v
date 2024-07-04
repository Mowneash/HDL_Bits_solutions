module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire d,w1;
    always @(posedge clk)
        Q<=d;
    assign w1=E?w:Q;
    assign d=L?R:w1;
        
endmodule
