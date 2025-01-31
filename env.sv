class env extends uvm_env;
  `uvm_component_utils(env)

  producer p;
  consumer c;
 
  function new(string name="env", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    p=producer::type_id::create("p",this);
    c=consumer::type_id::create("c",this);
  endfunction

  function void connect_phase(uvm_phase phase);
    p.monitor_port.connect(c.fifo_xtn.analysis_export);
  endfunction
endclass

