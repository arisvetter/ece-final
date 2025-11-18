module comparator (
    input bit2, bit3,
    output resetAndToggle
);

assign resetAndToggle = bit3 & bit2;

endmodule