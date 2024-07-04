module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;  
    reg out;

    // State encoding
    reg [1:0] present_state, next_state;

    // State definitions
    parameter A = 2'b00;
    parameter B = 2'b01;

    // Synchronous state transition
    always @(posedge clk) begin
        if (reset) begin  
            present_state <= B;  // Synchronous reset to state B
        end else begin
            present_state <= next_state;  // State flip-flops
        end
    end

    // Next state logic
    always @(*) begin
        case (present_state)
            A: next_state = (in) ? A : B;
            B: next_state = (in) ? B : A;
            default: next_state = B;  // Default to state B
        endcase
    end

    // Output logic
    always @(*) begin
        case (present_state)
            A: out = 0;
            B: out = 1;
            default: out = 1;  // Default to output 1
        endcase
    end

endmodule
