// Simple 2-input AND gate module
module and_gate (
    input wire a,      // First input
    input wire b,      // Second input
    output wire y      // Output
);

    // Behavioral description of AND gate
    assign y = a & b;

endmodule