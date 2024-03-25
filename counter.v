module counter(clear,clock,count);

    parameter N=7;
    input clear,clock;
    output [N:0]count;
    reg [N:0]count;

    always @ (negedge clock)
    if (clear)
        count<=0;
    else
        count<= count +1;

endmodule