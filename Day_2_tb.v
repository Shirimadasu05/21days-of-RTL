// DFF TB

module day2_tb ();

  reg clk;
  reg reset;
  reg d_i;
  wire q_norst_o;
  wire q_syncrst_o;
  wire q_asyncrst_o;
  day2 tb(.*);
  initial
    begin
    clk=0;
   #5 clk=1;
      #5;
    end
  initial
    begin
      d_i=0;
      reset=0;
      #5;
      d_i=0;
      reset=1;
      #5;
      d_i=1;
      reset=0;
      #5;
      d_i=1;
      reset=1;
    end

endmodule