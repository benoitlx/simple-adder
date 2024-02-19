(** Entry Point for simple circuits *)

(**
 Demande à l'utilisateur un nom de circuit implémenté
 - test le circuit si un test_bench est disponible
 - si les tests sont passés produit un fichier circuit_name.v, 
 le fichier verilog correspondant au circuit
 *)

open Hardcaml
open Simplecircuits

let rtl_generation () : unit =
  let output_mode = Rtl.Output_mode.To_file("vhdl/adder.vhdl") in
  Rtl.output ~output_mode Vhdl Adder.circuit


let () =
  Adder.testbench Adder.adder;
  rtl_generation ()
