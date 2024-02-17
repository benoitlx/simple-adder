(* adder function *)
open Hardcaml.Signal

let adder a b = a +: b
let c = output "c" (adder (input "ina" 8) (input "inb" 8))
let circuit = Hardcaml.Circuit.create_exn ~name:"my_first_adder" [ c ];;

Stdio.printf "Verilog begin\n";;
Hardcaml.Rtl.print Vhdl circuit;;
Stdio.printf "Verilog end\n"

let sim = Hardcaml.Cyclesim.create circuit
let a = Hardcaml.Cyclesim.in_port sim "ina"
let b = Hardcaml.Cyclesim.in_port sim "inb"
let c = Hardcaml.Cyclesim.out_port sim "c";;

a := Hardcaml.Bits.of_int ~width:8 10;;
b := Hardcaml.Bits.of_int ~width:8 20;;
Hardcaml.Cyclesim.cycle sim;;
Stdio.printf "\n\nSimulation:\n";;
Stdio.printf "c = %i\n" (Hardcaml.Bits.to_int !c)
