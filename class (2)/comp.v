module comparator (
    input bit1, bit2, bit0,
    output resetAndToggle
);

assign resetAndToggle = bit1 & bit2 & ~bit0;

endmodule