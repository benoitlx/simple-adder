open Hardcaml.Signal

(** type t means Signal type in the following program **)

module I = struct
  type 'a t = { in_a : 'a; [@bits 8] in_b : 'a; [@bits 8] carry_in : 'a }
  [@@deriving sexp_of, hardcaml]
end

module O = struct
  type 'a t = { s : 'a; [@bits 8] carry_out : 'a }
  [@@deriving sexp_of, hardcaml]
end

(** One bit Adder with carry return a tuple sum, carry_out *)
let single_adder (a : t) (b : t) (cin : t) : t * t =
  let mid = a ^: b in
  let out = mid ^: cin in
  let cout = a ^: b |: mid ^: cin in
  (out, cout)

(** 8 bits adder with carry input and output *)
let adder ({ in_a; in_b; carry_in } : t I.t) : t O.t =
  let out, cout =
    List.fold_left2
      (fun (tuple : t list * t) a b ->
        let acc, lastc = tuple in
        let s, c = single_adder a b lastc in
        (s :: acc, c))
      ([], carry_in) (bits_msb in_a) (bits_msb in_b)
  in
  { s = concat_msb out; carry_out = cout }

(** Circuit creation from adder function*)
let circuit =
  let open Hardcaml.Circuit in
  create_with_interface (module I) (module O) ~name:"adder" adder

(** A bouger dans un autre fichier **)
let testbench (fn : t I.t -> t O.t) : unit =
  let open Hardcaml in
  let module Simulator = Cyclesim.With_interface (I) (O) in
  let sim = Simulator.create fn in
  let inputs : _ I.t = Cyclesim.inputs sim in
  let outputs : _ O.t = Cyclesim.outputs sim in
  let list_internals () =
    let interns = Cyclesim.in_ports sim in
    List.iteri (fun i p -> Stdio.printf "port%d=%s\n" i (fst p)) interns
  in
  let bench () =
    for i = 0 to 3 do
      for j = 0 to 3 do
        inputs.in_a := Bits.of_int ~width:8 i;
        inputs.in_b := Bits.of_int ~width:8 j;
        inputs.carry_in := Bits.gnd;
        Cyclesim.cycle sim;
        let sf = Bits.to_int !(outputs.s) in
        let cf = Bits.to_int !(outputs.carry_out) in
        Stdio.printf "s, c = %d, %d expected result %d\n" sf cf (i + j);
      done
    done
  in
  list_internals ();
  bench ()
