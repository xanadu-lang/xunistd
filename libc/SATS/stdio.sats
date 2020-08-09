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
FILEp0 = p2gez(FILE)
typedef
FILEp1 = p2gtz(FILE)

(* ****** ****** *)

fun
fclose(FILEp1): ecineg

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
, mode: string): FILEp0
fun
freopen
( path: string
, mode: string
, stream: FILEp1): FILEp0
//              
(* ****** ****** *)
//
fun
getchar(): ecieof
//
fun
getc(FILEp1): ecieof
fun
fgetc(FILEp1): ecieof
(* ****** ****** *)
fun
ungetc
( c0: int
, stream: FILEp1): ecieof
(* ****** ****** *)
fun
fgets
{n:int}
{i:nat|i<=n}
( buf
: charpn(n)
, size: sint(i)
, stream: FILEp1): charp0
(* ****** ****** *)
//
fun
putchar(c0: int): ecieof
//n
fun
putc(c0: int, FILEp1): ecieof
fun
fputc(c0: int, FILEp1): ecieof
//
(* ****** ****** *)
fun
puts(cs: string): ecieof
fun
fputs(cs: string, FILEp1): ecieof
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
, nmemb: size(i), stream: FILEp1): sizelte(i)
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
, nmemb: size(i), stream: FILEp1): sizelte(i)
(* ****** ****** *)
                            
(* end of [stdio.sats] *)
