module comparator (
    input bit1, bit2,
    output resetAndToggle
);

assign resetAndToggle = bit1 & bit2;

endmodule