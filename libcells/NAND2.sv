module NAND2 (
    input logic A,
    input logic B,
    output logic Z
);

parameter Tpdlh = 8;
parameter Tpdhl = 8;

nand #(Tpdlh, Tpdhl) nand1 (Z, A, B);

endmodule
