

module tb_main();
    reg clk, clr;
    wire [7:0] out;
    wire [6:0] LED1;
    wire [6:0] LED2;
    main mymain(
         .clk(clk), .clr(clr), .out(out) , .LED1(LED1) , .LED2(LED2)
    );

    initial
    begin
        #10 clk = 1'b0;
    end

    always
    begin
        #5 clk = ~clk;
    end

    initial
    begin
        $dumpfile("tb_top.vcd");
        $dumpvars(0, tb_main);
    end

    initial
    begin
        #2 clr = 1'b1;
        #6 clr = 1'b0;
        #8  clr = 1'b1;
        #12 clr =1'b0;
        #500 $finish;
    end

    initial
    begin
        $monitor("out:%b", out);
    end
endmodule
