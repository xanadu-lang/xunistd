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
: FILEp1
, fp2
: FILEp1): ecbool =
(
  loop()
) where
{
fun
loop(): ecbool =
let
val c0 =
toint(fgetc(fp1))
in
if
(c0 < 0)
then ecbool_okay()
else
let
val ec = fputc(c0, fp2)
in
  if
  okayq(ec)
  then loop() else ecbool_fail()
end
end
} (* end of [fcopy] *)
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
  then
  (
  ecbool_fail()
  ) where
  {
  val ( ) =
  assert(okayq(fclose(fp1)))
  }
  else
  let
  val res =
  fcopy<>(fp1, fp2)
  val ( ) =
  assert(okayq(fclose(fp1)))
  val ( ) =
  assert(okayq(fclose(fp2))) in res end
//
end // end of [else]
//
end // end of [fcopy_path]

(* ****** ****** *)

(* end of [test01.dats] *)
