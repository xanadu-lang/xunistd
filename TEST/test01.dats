(* ****** ****** *)
//
#staload
"./../libc/basics.sats"
#staload
"./../libc/SATS/stdio.sats"
//
(* ****** ****** *)
//
fun<>
ecineg_succ
(
// argless
) : ecineg(0) = ecineg(0)
fun<>
ecineg_fail
(
// argless
) : ecineg(-1) = ecineg(-1)
//
(* ****** ****** *)

fun<>
fcopy
( fp1
: FILEpgtz
, fp2
: FILEpgtz): ecineg =
let
val c0 = toint(fgetc(fp1))
in
if
(c0 < 0)
then ecineg_succ()
else
let
val ec = fputc(c0, fp2)
in
  if
  succq(ec)
  then fcopy(fp1, fp2) else ecineg_fail()
end
end // end of [fcopy]

(* ****** ****** *)

(* end of [test01.dats] *)
