# 100 Days RTL Challenge

Daily practice with Verilog/SystemVerilog and digital design concepts.

## Progress

### Day 01 - Simple AND Gate ✅
- **Topic:** Basic logic gates
- **Files:** 
  - `day-01/src/and_gate.v` - 2-input AND gate module
  - `day-01/tb/and_gate_tb.v` - Testbench with all input combinations
- **Tools:** VS Code + Vivado 2018.1
- **Date:** 31/05/25

### Day 02 - 2X1 Mux using behavoioural style ✅
- **Topic:** Mux
- **Files:** 
  - `day-02/src/mux_2x1.v` - 2 input with a select line and a single output
  - `day-02/tb/mux_2x1_tb.v` - Testbench with all input combinations
- **Learning** ?: Ternary Operator
- **Date:** 01/06/25

### Day 03 - 4X1 Mux using Structural style ✅
- **Topic:** Mux
- **Files:** 
  - `day-03/src/mux4x1.v` - 4 input with 2 select line and a single output
  - `day-03/tb/mux4x1_tb.v` - Testbench with all input combinations
- **Learning** Structural Style
- **Date:** 02/06/25

### Day 04 - 1bit full Adder ✅
- **Topic:** Adder
- **Files:** 
  - `day-04/src/full_adder.v` - 1 bit full adder with sum and carry 
  - `day-03/tb/full_adder_tb.v` - Testbench with all input combinations
- **Learning** Full Adder
- **Date:** 03/06/25

### Day 05 - ripple carry Adder ✅
- **Topic:** Adder
- **Files:** 
  - `day-05/src/full_adder.v` - 1 bit full adder with sum and carry 
  - `day-05/src/carry_adder.v` - a and b of 4 bits 
  - `day-05/tb/full_adder_tb.v` - Testbench with all input combinations
- **Learning** ripple carry adder, genvar, generate
- **Date:** 04/06/25

### Day 06 - 4 bit Subtractor ✅
- **Topic:** Adder
- **Files:** 
  - `day-06/src/full_subtractor.v` - 1 bit full subtractor with difference and dout
  - `day-06/src/subtractor.v` - a and b of 4 bits 
  - `day-06/tb/subtractor.v` - Testbench with all input combinations
- **Learning** full subtractor, 4 bit subtractor
- **Date:** 05/06/25

### Day 07 - 3 to 8 Decoder Using 2 to 4 Decoders ✅
- **Topic:** decoder
- **Files:** 
  - `day-07/src/decoder_2to4.v` - 2 to 4 decoder
  - `day-07/src/decoder_3to8.v` - 3 to 8 decoder using 2 2to4 decoders
  - `day-07/tb/decoder_3to8_tb.v` - Testbench 10 random inputs
- **Learning** decoders, 2to4 decoder, 3to8decoder
- **Date:** 06/06/25

### Day 08 - 8 to 3 Priority Encoder Using 4 to 2 Priority Encoders ✅
- **Topic:** Priority Encoder
- **Files:** 
  - `day-08/src/priority_enc_4to2.v` - 4 to 2 priority encoder module
  - `day-08/src/priority_enc_8to3.v` - 8 to 3 priority encoder using two 4to2 encoders
  - `day-08/tb/priority_enc_8to3_tb.v` - Testbench with specific and random test cases
- **Learning:** Hierarchical design, priority encoding logic, reduction operators (|), module instantiation
- **Date:** 09/06/25

### Day 09 - Binary to Gray Code and Gray to Binary Converters ✅
- **Topic:** Code Converters
- **Files:** 
  - `day-09/src/binary_to_graycode.v` - N-bit binary to Gray code converter
  - `day-09/src/graycode_to_binary.v` -  N-bit Gray code to binary converter
  - `day-09/tb/code_converters_tb.v` - Testbench with various test cases
- **Learning:** Gray code conversion algorithms, generate blocks with proper loop bounds, parametric design, XOR operations for code conversion
- **Date:** 10/06/25

---
**Progress:** 9/100 days | **Current Streak:** 9 🔥