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

### Day 11 - D flip flop ✅
- **Topic:** Flip Flops
- **Files:** 
  - `day-11/src/d_flip_flop.v` - D flip flop
  - `day-03/tb/d_flip_flop_tb.v` - Testbench with some input combinations
- **Learning** flip flops, D flip flop, clock, reset, always
- **Date:** 11/06/25

### Day 12 - T flip flop and JK flip flop ✅
- **Topic:** Flip Flops
- **Files:** 
  - `day-12/t_flip_flop/src/t.v` - t flip flop
  - `day-12/t_flip_flop/tb/t_tb.v` - Testbench with some input combinations
  - `day-12/JK_flip_flop/src/t.v` - JK flip flop
  - `day-12/JK_flip_flop/tb/t_tb.v` - Testbench with some input combinations
- **Learning** flip flops, t flip flop, JK flip flop, clock, reset, always, case statements
- **Date:** 12/06/25

### Day 13 - 4 Bit Upcounter ✅
- **Topic:** Upcounter
- **Files:** 
  - `day-12/src/upcntr.v` - 4 bit upcounter
  - `day-12/tb/cntr_tb.v` - Testbench for the upcounter main module
- **Learning** Counter, Upcounter
- **Date:** 13/06/25

### Day 14 - 4 Bit Asycronous Down Counter ✅
- **Topic:** Down Counter
- **Files:** 
  - `day-12/src/upcntr.v` - 4 bit Down Counter
  - `day-12/tb/cntr_tb.v` - Testbench for the upcounter main module
- **Learning** Counter, Down Counter, Asycronous Reset
- **Date:** 14/06/25

### Day 15 - N-bit Up/Down Counter ✅
- **Topic:** Bidirectional Counter
- **Files:** 
 - `day-15/src/nbit_cntr.v` - N-bit parameterized up/down counter
 - `day-15/tb/nbit_cntr_tb.v` - Testbench with up/down control and reset testing
- **Learning:** Bidirectional counters, parameter usage, up/down control logic, non-blocking assignments in sequential logic
- **Date:** 15/06/25

### Day 16 - Moore FSM for 1011 Sequence Detection ✅
- **Topic:** Finite State Machines (Moore)
- **Files:** 
  - `day-16/src/fsm_1011_moore.v` - Moore FSM to detect sequence "1011"
  - `day-16/tb/fsm_1011_moore_tb.v` - Testbench with specific sequence testing
- **Learning:** Moore state machines, sequence detection, state encoding, combinational vs sequential logic separation
- **Date:** 16/06/25

### Day 17 - Mealy FSM for 1011 Sequence Detection ✅
- **Topic:** Finite State Machines (Mealy)
- **Files:** 
  - `day-17/src/fsm_1011_mealy.v` - Mealy FSM to detect sequence "1011"
  - `day-17/tb/fsm_1011_mealy_tb.v` - Testbench with specific sequence testing
- **Learning:** Mealy state machines, input-dependent outputs, Moore vs Mealy differences, overlapping sequence handling
- **Date:** 17/06/25

### Day 18 - Traffic Light Controller FSM ✅
- **Topic:** Finite State Machines (Traffic Control)
- **Files:** 
 - `day-18/src/traffic.v` - 4-state traffic light controller with timing delays
 - `day-18/tb/traffic_tb.v` - Comprehensive testbench with state monitoring and assertions
- **Learning:** Complex FSM design, timing control with counters, state-based output control, traffic light sequencing (Main: Green→Yellow→Red, Side: Red→Green→Yellow→Red), proper testbench design with monitoring and verification
- **Date:** 18/06/25

### Day 19 - Universal Shift Register ✅

- **Topic:** Shift Registers
- **Files:**
- `day-19/src/usr.v` - 4-bit universal shift register with hold, left shift, right shift, and parallel load
- `day-19/tb/usr_tb.v` - Testbench with systematic testing of all modes and random operations
- **Learning:** Universal shift registers, multi-mode operations, case statements for control logic, proper testbench initialization with reset sequences, shift register applications
- **Date:** 19/06/25

### Day 20 - 2x2 Binary Multiplier ✅
- **Topic:** Multipliers
- **Files:** 
  - `day-20/src/multi_2x2.v` - 2x2 binary multiplier using AND gates and half adders
  - `day-20/src/ha.v` - Half adder module for partial product addition
  - `day-20/tb/multi_2x2_tb.v` - Testbench with all input combinations and verification
- **Learning:** Binary multiplication, partial product generation, add-shift method, hierarchical design with half adders, combinational multiplier circuits
- **Date:** 20/06/25

### Day 21 - Clock Divider (50MHz to 1Hz) ✅
- **Topic:** Clock Division
- **Files:** 
  - `day-21/src/clk_div.v` - Clock divider to convert 50MHz input to 1Hz output
  - `day-21/tb/clk_div_tb.v` - Testbench with timing verification and edge counting
- **Learning:** Clock division techniques, counter-based frequency division, large counter design (26-bit for 50MHz÷50M), clock domain considerations, timing analysis
- **Date:** 21/06/25

### Day 22 - Button Press Detector ✅
- **Topic:** Edge Detection
- **Files:** 
  - `day-22/src/btn_prs_det.v` - Button press detector for single pulse generation on rising edge
  - `day-22/tb/btn_prs_det_tb.v` - Testbench with multiple button press scenarios and timing verification
- **Learning:** Edge detection circuits, button debouncing concepts, single pulse generation, previous state storage, synchronous design with asynchronous reset
- **Date:** 22/06/25

---
**Progress:** 22/100 days | **Current Streak:** 22🔥