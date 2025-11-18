module d_flipflop(
    input data, clk,
    output reg Q, 
    output notQ
    );
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge clk) begin
        Q <= data;
    end
    
    assign notQ = ~Q;
endmodule