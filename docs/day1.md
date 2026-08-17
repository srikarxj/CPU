CPU v0.1

-> Took a decision to build a small 32-bit CPU with:
                        -> 8 General Purpose Registers
                        -> Program Counter(1 Special register)
                        -> Basic Instruction set containing 10 instructions
                        -> Everything mentioned here is 32 bit


-> Looked at How Basic Instruction encoding works in typical ISAs
        -> Decided the opcode for CPU v0.1 can just be 4 bits
        -> Typical Instruction encoding looks like opcode followed by operands
        -> The operands can be addresses, address + offset, registers(need to define registers), immediate operands(just plain numbers)
        -> Depending on what the instruction needs, we can bundle several instructions in formats.
        -> For example, ADD R1, R2, R3 and OR R1, R2, R3 both need 3 compartments i.e. opcode | operand1 | operand2 | operand 3, this can be called R type formatting etc