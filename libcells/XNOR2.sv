module XNOR2 (
    input logic A,
    input logic B,
    output logic Z
);

parameter Tpdlh = 2;
parameter Tpdhl = 2;

xnor #(Tpdlh, Tpdhl) xnor1 (Z, A, B);

endmodule
