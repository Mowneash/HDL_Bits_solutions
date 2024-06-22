module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
    wire [7:0]cout;
    genvar i;
    fulladder fa0(a[0],b[0],0,s[0],cout[0]);
    generate
        for(i=1;i<8;i=i+1) begin : adder_stage
            fulladder fa(a[i],b[i],cout[i-1],s[i],cout[i]);
        end
    endgenerate
    assign overflow = cout[7] ^ cout[6];

endmodule

module fulladder(input a,b,cin, output sum,cout);
    assign {cout,sum}=a+b+cin;
endmodule
