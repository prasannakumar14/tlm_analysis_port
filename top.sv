`include "uvm_macros.svh"
`include "pkg.sv"

module top();
 import uvm_pkg::*;
 import pkg::*;
 
  initial begin
    run_test("test");
  end
endmodule
