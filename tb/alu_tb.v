module alu_tb ;

    reg [31:0] a, b ;
    reg [2:0] alu_cntrl ;

    wire [31:0] result ;
    wire zero ;

    alu uut (
        .a(a) ,
        .b(b) ,
        .alu_cntrl(alu_cntrl) ,
        .result(result) ,
        .zero(zero)
    ) ;

    initial begin

        a = 10;
        b = 5 ;
        alu_cntrl = 3'b000 ;
        #10 ;
        if(result !== 15) $fatal(1, "ADD Failed") ;

        a = 10;
        b = 5 ;
        alu_cntrl = 3'b001 ;
        #10 ;
        if(result !== 5) $fatal(1, "SUB Failed") ;

        a = 32'hFF00FF00;
        b = 32'h0F0F0F0F ;
        alu_cntrl = 3'b010 ;
        #10 ;
        if(result !== 32'h0F000F00) $fatal(1, "AND Failed") ;

        a = 32'hFF00FF00;
        b = 32'h0F0F0F0F ;
        alu_cntrl = 3'b011 ;
        #10 ;
        if(result !== 32'hFF0FFF0F) $fatal(1, "OR Failed") ;

        a = 32'hFF00FF00;
        b = 32'h0F0F0F0F ;
        alu_cntrl = 3'b100 ;
        #10 ;
        if(result !== 32'hF00FF00F) $fatal(1, "XOR Failed") ;

        $display("ALL ALU TESTS PASSED") ;

        $finish ;

    end
    
endmodule