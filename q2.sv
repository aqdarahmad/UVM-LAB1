//=========================================================
// File: alu_sequencer.sv
// Description: Sequencer for ALU verification
//=========================================================

`ifndef ALU_SEQUENCER_SV
`define ALU_SEQUENCER_SV

// Import UVM package
import uvm_pkg::*;
`include "uvm_macros.svh"
`include "alu_sequence_item.sv"

//----------------------------------------------
// Class: alu_sequencer
//----------------------------------------------
class alu_sequencer extends uvm_sequencer #(alu_sequence_item);

  // Register this component with UVM factory
  `uvm_component_utils(alu_sequencer)

  // -------------------------
  // Constructor
  // -------------------------
  function new(string name = "alu_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction : new

endclass : alu_sequencer

`endif
