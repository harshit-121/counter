`include "counter.v"
module counter_tb();

    reg clr, clk;
    wire [7:0] out;

    counter C1 (clr,clk,out);

    initial clk = 1'b0;

    always  #5 clk = ~clk;

    initial
       begin
          clr = 1'b1;
          #15 clr = 1'b0;
          #200 clr = 1'b1;
          #10 $finish;
        end

    initial
      begin
        $dumpfile("counter.vcd");
        $dumpvars(0,counter_tb);
        $monitor ($time, " Count: %d", out);
        clr =1 ; #10; 
      end
endmodule