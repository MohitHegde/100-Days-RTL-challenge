// Testbench for AND gate
`timescale 1ns / 1ps

module and_gate_tb;
    
    // Declare testbench signals
    reg a;          // Input a (use reg for testbench inputs)
    reg b;          // Input b
    wire y;         // Output y (use wire for outputs)
    
    // Instantiate the Unit Under Test (UUT)
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );
    
    // Test stimulus
    initial begin
        // Initialize inputs
        a = 0;
        b = 0;
        
        // Wait for global reset
        #10;
        
        // Test all possible combinations
        $display("Time\t a\t b\t y");
        $display("----\t---\t---\t---");
        
        // Test case 1: a=0, b=0
        a = 0; b = 0; #10;
        $display("%0t\t %b\t %b\t %b", $time, a, b, y);
        
        // Test case 2: a=0, b=1
        a = 0; b = 1; #10;
        $display("%0t\t %b\t %b\t %b", $time, a, b, y);
        
        // Test case 3: a=1, b=0
        a = 1; b = 0; #10;
        $display("%0t\t %b\t %b\t %b", $time, a, b, y);
        
        // Test case 4: a=1, b=1
        a = 1; b = 1; #10;
        $display("%0t\t %b\t %b\t %b", $time, a, b, y);
        
        // End simulation
        #10;
        $display("Testbench completed successfully!");
        $finish;
    end
    
    // Optional: Generate VCD file for waveform viewing
    initial begin
        $dumpfile("and_gate_tb.vcd");
        $dumpvars(0, and_gate_tb);
    end
    
endmodule