(* ****** ****** *)
#staload
"prelude\
/SATS/CC/basics.sats"
(* ****** ****** *)
#staload
"./../libc/basics.sats"
#staload
"./../libc/SATS/stdio.sats"
(* ****** ****** *)
//
#extern
fun
assert(tf: bool): void
//
(* ****** ****** *)

fun<>
fcopy
( fp1
: FILEpgtz
, fp2
: FILEpgtz): ecbool =
let
val c0 =
toint(fgetc(fp1))
in
if
(c0 < 0)
then ecbool_succ()
else
let
val ec = fputc(c0, fp2)
in
  if
  succq(ec)
  then fcopy(fp1, fp2) else ecbool_fail()
end
end // end of [fcopy]
//
(* ****** ****** *)

fun<>
fcopy_path
( nm1
: string
, nm2
: string): ecbool =
let
val fp1 = fopen(nm1, "r")
in
//
if
eqzq(fp1)
then ecbool_fail()
else
let
val fp2 = fopen(nm2, "w")
in
//
  if
  eqzq(fp2)
  then ecbool_fail()
  else
  let
  val res =
  fcopy<>(fp1, fp2)
  val ( ) =
  assert(succq(fclose(fp1)))
  val ( ) =
  assert(succq(fclose(fp2))) in res end
//
end // end of [else]
//
end // end of [fcopy_path]

(* ****** ****** *)

(* end of [test01.dats] *)
