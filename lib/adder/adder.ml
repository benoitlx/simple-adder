open Hardcaml.Signal

(** type t means Signal type in the following program **)

module I = struct
  type 'a t = {
    in_a : 'a; [@bits 8]
    in_b : 'a; [@bits 8]
    carry_in : 'a;
  } 
  [@@deriving sexp_of, hardcaml]
end

module O = struct
  type 'a t =  {
    out : 'a; [@bits 8]
    carry_out : 'a;
  }
  [@@deriving sexp_of, hardcaml]
end


(** One bit Adder with carry return a tuple sum, carry_out *)
let single_adder (a: t) (b: t) (cin: t) : t * t =
  let mid = a ^: b in
  let out = mid ^: cin in
  let cout = (a ^: b) |: (mid ^: cin) in
  out, cout

let adder ({in_a; in_b; carry_in}: t I.t) : t O.t = 
  let out, cout = List.fold_left2 (fun (tuple: t list * t) a b -> 
    let acc, lastc = tuple in
    let s, c = single_adder a b lastc in 
    s::acc, c) ([], carry_in) (bits_msb in_a) (bits_msb in_b) in
  {out=concat_msb out; carry_out=cout}

let adder_circuit = 
  let open Hardcaml.Circuit in
  create_with_interface (module I) (module O) ~name:"adder" adder 
