(* ****** ****** *)
(*
API for functions
declared in sys/stat.h
*)
(* ****** ****** *)

#staload
"./../../basics.sats"

(* ****** ****** *)

abstype
stat_type ==
$extype"struct stat"
typedef stat_t0 = stat_type

(* ****** ****** *)

(*
These return: 0 if OK, -1 on error
*)
fun
stat
( fnm: string, buf: ptrnz(stat_t0)): ecineg
fun
fstat
( fd0: fildes, buf: ptrnz(stat_t0)): ecineg
fun
lstat
( fnm: string, buf: ptrnz(stat_t0)): ecineg

(* ****** ****** *)

(* end of [sys/stat.sats] *)
