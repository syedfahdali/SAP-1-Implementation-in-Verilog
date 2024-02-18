module rom(
    input [3:0] addr,
    input ROM_LOW_OE,
    output reg [7:0] data
);
    always @(addr or ROM_LOW_OE)
    begin
        if(ROM_LOW_OE)
        begin
            data = 8'bz;
        end
        else
        begin
            case(addr)
            // 0 to 7 is allotted for program memory, and 8 to f is allotted for data
                4'h0: data = 8'b0000_1000; 
                4'h1: data = 8'b0001_1001;
                4'h2: data = 8'b1110_1110;
                4'h3: data = 8'b1111_1111;
                4'h4: data = 8'b0000_0000;
                4'h5: data = 8'b0000_0000;
                4'h6: data = 8'b0000_0000;
                4'h7: data = 8'b0000_0000;
                4'h8: data = 8'b0000_1001; 
                4'h9: data = 8'b0000_1000;
                4'ha: data = 8'b0000_0100;
                4'hb: data = 8'b0000_0111;
                4'hc: data = 8'b0000_0000;
                4'hd: data = 8'b0000_0000;
                4'he: data = 8'b0000_0000;
                4'hf: data = 8'b0000_0000;
            endcase
        end
    end
endmodule
