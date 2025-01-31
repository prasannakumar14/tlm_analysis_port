class consumer extends uvm_component;
  `uvm_component_utils(consumer)

  xtn x;

  uvm_tlm_analysis_fifo #(xtn) fifo_xtn;

  function new(string name="consumer", uvm_component parent);
    super.new(name,parent);
    fifo_xtn=new("fifo_xtn",this);
  endfunction

  task run_phase(uvm_phase phase);
    repeat(5) begin
      fifo_xtn.get(x);
      `uvm_info("from consumer",$sformatf("Received Values \n %s",x.sprint()),UVM_LOW);
    end
  endtask
endclass
