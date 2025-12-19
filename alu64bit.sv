// 64-bit ALU template
module alu64bit (
    input logic [63:0] a,    // Input bit a
    input logic [63:0] b,    // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic [63:0] s,   // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic [64:0] carry_array;

genvar i;
generate
    for (i = 0; i < 64; i = i + 1) begin : gen_alu
        alu1bit alu_inst (
            .a(a[i]),
            .b(b[i]),
            .cin(carries[i]),    // ה-cin מגיע מהיחידה הקודמת
            .op(op),             // ה-op משותף לכל היחידות
            .s(s[i]),
            .cout(carries[i+1])  // ה-cout עובר ליחידה הבאה
        );
    end
endgenerate

assign cout = carry_array[64];

// End of your code

endmodule
