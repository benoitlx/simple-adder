open Hardcaml
open Hardcaml.Signal

(**
 8 bits full adder
 Inputs:
   - in_a
   - in_b
   - carry_in
 Outputs:
   - out
   - carry_out
 *)

(** We expose both input and output **)
module I : sig
  type 'a t 
end

module O : sig
  type 'a t 
end

(** define the adder function **)
val adder : t I.t -> t O.t
(** define the circuit **)
val adder_circuit : Circuit.t
