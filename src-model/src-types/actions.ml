(* Aesthetic Integration copyright 2017 *)
(* @meta[imandra_ignore] on @end *)
open Numeric;;
open Base_types;;
open Datetime;;
(* @meta[imandra_ignore] off @end *)

type m_action_fix_x = {
    f_x_x : int
}
;;

type fix_action =
    | FIX_Action_x of m_action_fix_x
;;
