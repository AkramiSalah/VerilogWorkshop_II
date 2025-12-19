module OR2 (
    input logic A,
    input logic B,
    output logic Z
);

parameter Tpdlh = 5;
parameter Tpdhl = 5;

or #(Tpdlh, Tpdhl) or1 (Z, A, B);

endmodule
