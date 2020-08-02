(* ****** ****** *)
(*
API for functions
declared in stadio.h
*)
(* ****** ****** *)
//
#staload
"prelude\
/SATS/CC/basics.sats"
#staload"./../basics.sats"
//
(* ****** ****** *)
//
abstype
FILE_type==$extype"FILE"
//
typedef FILE = FILE_type
//
(* ****** ****** *)

typedef
FILEptr = p2tr(FILE)
typedef
FILEpgez = p2gez(FILE)
typedef
FILEpgtz = p2gtz(FILE)

(* ****** ****** *)

fun
fclose(FILEpgtz): ecineg

(* ****** ****** *)
//
(*
FILE*
fopen
(const char *path, const char *mode);
FILE*
freopen
(const char *path, const char *mode, FILE *stream);
*)
fun
fopen
( path: string
, mode: string): FILEpgez
fun
freopen
( path: string
, mode: string
, stream: FILEpgtz): FILEpgez
//              
(* ****** ****** *)
//
fun
getchar(): ecieof
//
fun
getc(FILEpgtz): ecieof
fun
fgetc(FILEpgtz): ecieof
(* ****** ****** *)
fun
ungetc
( c0: int
, stream: FILEpgtz): ecieof
(* ****** ****** *)
fun
fgets
( buf
: charp1
, size: nint
, stream: FILEpgtz): charp0
(* ****** ****** *)
//
fun
putchar(c0: int): ecieof
//
fun
putc(c0: int, FILEpgtz): ecieof
fun
fputc(c0: int, FILEpgtz): ecieof
//
(* ****** ****** *)
fun
puts(cs: string): ecieof
fun
fputs(cs: string, FILEpgtz): ecieof
(* ****** ****** *)
                            
(* end of [stdio.sats] *)
