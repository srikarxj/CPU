# CPU Architecture

## Project Goal

Design and implement a 32-bit CPU from scratch using Verilog, with the processor initially developed and verified entirely through simulation.

## Initial Architecture

- Data width: 32-bit
- Instruction width: 32-bit
- Architecture style: RISC
- ISA: RISC-V inspired
- Initial execution model: Single-cycle
- Development approach: Simulation-first

## Development Tools

- Verilog
- Icarus Verilog
- GTKWave
- Git

## Current Status

Day 0 — Project initialization

## Future Goals

- Implement a functional instruction set
- Execute programs from instruction memory
- Build a verification environment
- Eventually support compiled programs
- Explore pipelining and other architectural improvements
- Optionally implement the CPU on an FPGA

## Day 1 — Preliminary ISA

### Register Architecture

- General-purpose registers: R0–R7
- Register width: 32 bits
- Program Counter: 32 bits

### Initial Instruction Set

- ADD
- SUB
- AND
- OR
- XOR
- ADDI
- LW
- SW
- BEQ
- JAL

### Preliminary Instruction Formats

- R-type: ADD, SUB, AND, OR, XOR
- I-type: ADDI, LW
- S/B-type candidate: SW, BEQ
- J-type: JAL

### Unresolved

- Exact bit layouts
- Immediate/offset widths
- Register field positions
- Opcode allocation
- Memory model
- PC behavior