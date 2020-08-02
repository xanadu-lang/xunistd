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
{n:int}
{i:nat|i<=n}
( buf
: charpn(n)
, size: sint(i)
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
(*
size_t
fread
( void *ptr
, size_t size, size_t nmemb, FILE *stream);
*)
fun
fread_byte
{n:int}
{i:nat|i<=n}
( buf: charpn(n)
, nmemb: size(i), stream: FILEpgtz): sizelte(i)
(* ****** ****** *)
(*
size_t
fwrite
( const void *ptr
, size_t size, size_t nmemb, FILE *stream);
*)
fun
fwrite_byte
{n:int}
{i:nat|i<=n}
( buf: charcpn(n)
, nmemb: size(i), stream: FILEpgtz): sizelte(i)
(* ****** ****** *)
                            
(* end of [stdio.sats] *)
