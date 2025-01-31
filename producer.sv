class producer extends uvm_component;
  `uvm_component_utils(producer)

  xtn x;

  uvm_analysis_port #(xtn) monitor_port;

  function new(string name="producer", uvm_component parent);
    super.new(name,parent);
    monitor_port=new("monitor_port",this);
  endfunction

  task run_phase(uvm_phase phase);
 
    repeat(5) begin
      x=xtn::type_id::create("x");
      x.randomize();
      monitor_port.write(x);
    end
  endtask
endclass
