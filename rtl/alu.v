module alu (
    input [31:0] a,
    input [31:0] b,
    input [2:0] alu_cntrl,

    output reg [31:0] result,
    output zero
);
    
    localparam ADD = 3'b000 ;
    localparam SUB = 3'b001 ;
    localparam AND = 3'b010 ;
    localparam OR  = 3'b011 ;
    localparam XOR = 3'b100 ;

    always @(*) begin
        
        case(alu_cntrl)

        ADD : result = a + b ;
        SUB : result = a - b ;
        AND : result = a & b ;
        OR  : result = a | b ;
        XOR : result = a ^ b ;

        default: result = 32'b0 ;

        endcase
    end

    assign zero = (result == 32'b0) ;

endmodule