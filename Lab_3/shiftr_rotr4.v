module shiftr_rotr4 (
        input [2:0] ctrl,
        input [3:0] in,
        output [3:0] out
    );
    always@(*)
        case(ctrl)
            3'b000: out = in;
            3'b001: out = {1'd0, in[3:1]};
            3'b010: out = {2'd0, in[3:2]};
            3'b011: out = {3'd0, in[3]};
            3'b100: out = {4'd0};
            3'b101: out = {in[0], in[3:1]}; 
            3'b110: out = {in[1:0], in[3:2]};
            3'b111: out = {in[2:0], in[3]};
            default: out = in;
        endcase

endmodule