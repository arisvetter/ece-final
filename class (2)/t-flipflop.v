module t_flipflop(
    input T, clk,
    output Q,
    output notQ
    );
    

    jk_flipflop part11(
    .clk(clk),
    .J(T),
    .K(T),
    .Q(Q),
    .notQ(notQ)
    );
    
endmodule