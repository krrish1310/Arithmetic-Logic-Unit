module ALU_2bit_tb;

    reg signed [1:0] A, B;
    reg Cin;
    reg [2:0] control;
    wire signed [3:0] result;

    ALU_2bit uut (
        .A(A), .B(B), .Cin(Cin),
        .control(control),
        .result(result)
    );

    initial begin
        $display("Time\tA\tB\tCin\tCtrl\tRes");

        A = 2; B = 1; Cin = 0;
        control = 3'b000; #10; // AND
        $display("%0t\t%d\t%d\t%d\t%b\t%d", $time, A, B, Cin, control, result);

        control = 3'b001; #10; // OR
        control = 3'b010; #10; // XOR
        control = 3'b011; #10; // NOT A

        control = 3'b100; #10; // ADD
        control = 3'b101; #10; // SUB
        control = 3'b110; #10; // MUL
        control = 3'b111; #10; // COMPARE

        A = -1; B = 2; Cin = 0;
        control = 3'b101; #10; // SUB (signed test)

        $finish;
    end

endmodule
