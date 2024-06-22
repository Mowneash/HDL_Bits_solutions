//using full adder
module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [99:0]co;
    genvar i;
  fulladder fa0(a[0],b[0],cin,sum[0],co[0]);
    generate
        for(i=1;i<100;i=i+1) begin : adder_stage
            fulladder fa(a[i],b[i],co[i-1],sum[i],co[i]);
        end
    endgenerate
    assign cout=co[99];

endmodule

module fulladder(input a,b,cin, output sum,cout);
    assign {cout,sum}=a+b+cin;
endmodule

//simple design
module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    assign {cout,sum}=a+b+cin;

endmodule
