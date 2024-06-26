module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    fulladder fa0(a[0],b[0],cin,sum[0],cout[0]);
    fulladder fa1(a[1],b[1],cout[0],sum[1],cout[1]);
    fulladder fa2(a[2],b[2],cout[1],sum[2],cout[2]);

endmodule

module fulladder(input a,b,cin, output sum,cout);
    assign {cout,sum}=a+b+cin;
endmodule
