module ALU_2bit (
    input signed [1:0] A, B,       // signed for subtraction
    input Cin,
    input [2:0] control,
    output reg signed [3:0] result // signed output
);

    wire signed [3:0] add_result, sub_result, mul_result;
    wire [3:0] compare_result;

    assign add_result = A + B + Cin;
    assign sub_result = A - B - Cin;
    assign mul_result = A * B;
    assign compare_result = (A > B) ? 4'b0001 : 4'b0000;

    always @(*) begin
        case (control[2]) 
            1'b0: begin // Logical
                case (control[1:0])
                    2'b00: result = {2'b00, A & B};
                    2'b01: result = {2'b00, A | B};
                    2'b10: result = {2'b00, A ^ B};
                    2'b11: result = {2'b00, ~A}; // NOT A
                endcase
            end

            1'b1: begin // Arithmetic
                case (control[1:0])
                    2'b00: result = add_result;
                    2'b01: result = sub_result;
                    2'b10: result = mul_result;
                    2'b11: result = compare_result;
                endcase
            end
        endcase
    end

endmodule
