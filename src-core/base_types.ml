(** Base FIX types. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017
    
    base_types.ml
*)


(** We encode the strings as unique 1-to-1 integers.  The strings that are only
    relevant for administrative messages are encoded by hashing the string.  Codes
    for the business-logic relevant strings are generated by the DSL compiler.
*)
type fix_string = 
    | Model_string of int
    | Admin_string of int
    | Empty_string
;;

(** Symbol is a type alias for fix_string *)
type fix_symbol = fix_string;;

