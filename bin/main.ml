(** Entry Point for simple circuits *)

(**
 Demande à l'utilisateur un nom de circuit implémenté
 - test le circuit si un test_bench est disponible
 - si les tests sont passés produit un fichier circuit_name.v, 
 le fichier verilog correspondant au circuit
 *)

open Hardcaml
open Simplecircuits

let () =
  let output_mode = Rtl.Output_mode.To_file("verilog/adder.v") in
  Rtl.output ~output_mode Verilog Adder.adder_circuit 
