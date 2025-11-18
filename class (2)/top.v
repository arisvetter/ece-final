module top(
    input btnU,
    input btnC,
    input [6:0] led 
    );
    
    
    ////////////////////
    
    wire Q0C1;
    wire Q1C2;
    wire Q2C3;
    
    t_flipflop bit0 (
    .T(1),
    .clk(btnC),
    .Q(Q0C1)
    
    );
    
    t_flipflop bit1 (
    .T(1),
    .clk(Q0C1),
    .Q(Q1C2)
    );
    
    t_flipflop bit2 (
    .T(1),
    .clk(Q1C2),
    .Q(Q2C3)
    );
    
    assign led[0] = Q0C1;
    assign led[1] = Q1C2;
    assign led[2] = Q2C3;
    
    /////////////////////
    
    wire comp_reset;
    wire comp_bit1;
    wire comp_bit2;
    
    comparator inst1 (
    .bit1(comp_bit1),
    .bit2(comp_bit2),
    .resetAndToggle(comp_reset)
    );
    
    t_flipflop output_inst (
    .T(comp_reset),
    .clk(btnC),
    .Q(led[6])
    );
    
    wire datawire_bit0;
    wire QAwire_bit0;
    
    d_flipflop bit0_modulo(
    .data(datawire_bit0),
    .Q(QAwire_bit0),
    .clk(btnC),
    .reset(comp_reset)
    );
    
    wire datawire_bit1;
    wire QAwire_bit1;
    
    d_flipflop bit1_modulo(
    .data(datawire_bit1),
    .Q(QAwire_bit1),
    .clk(btnC),
    .reset(comp_reset)
    );
    
    wire datawire_bit2;
    wire QAwire_bit2;
    
    d_flipflop bit2_modulo(
    .data(datawire_bit2),
    .Q(QAwire_bit2),
    .clk(btnC),
    .reset(comp_reset)
    );
    
    wire cout_0;
    wire cout_1;
    wire cout_2;
    
    full_adder bit0_adder (
    .A(QAwire_bit0),
    .B(1'b1),
    .Cin(1'b0),
    .Y(datawire_bit0),
    .Cout(cout_0)
    );
    
    full_adder bit1_adder (
    .A(QAwire_bit1),
     .B(1'b1),
     .Cin(cout_0),
     .Y(datawire_bit1),
     .Cout(cout_1)
    );
    
    full_adder bit2_adder (
    .A(QAwire_bit2),
     .B(1'b1),
     .Cin(cout_1),
     .Y(datawire_bit2),
     .Cout(cout_2)
    );
    
    assign led[3] = QAwire_bit0;
    assign led[4] = QAwire_bit1;
    assign led[5] = QAwire_bit2;
endmodule
