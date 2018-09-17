module casez_pdec(
        input [7:0] in,
        output [2:0] out,
        output valid
    );
    always@(*) begin
        valid = 1
        casez(in)
            7'b1???_????: out = 3'd7;
            7'b01??_????: out = 3'd6;
            7'b001?_????: out = 3'd5;
            7'b0001_????: out = 3'd4;
            7'b0000_1???: out = 3'd3;
            7'b0000_01??: out = 3'd2;
            7'b0000_001?: out = 3'd1;
            7'b0000_0001: out = 3'd0;
            default: valid = 0;
        endcase
    end
endmodule