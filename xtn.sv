class xtn extends uvm_sequence_item;
  rand bit[3:0] addr;

  `uvm_object_utils_begin(xtn)
  `uvm_field_int(addr, UVM_ALL_ON)
  `uvm_object_utils_end
  
  function new(string name="xtn");
    super.new(name);
  endfunction
endclass

  
