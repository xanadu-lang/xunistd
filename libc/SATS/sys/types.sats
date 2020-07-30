(* ****** ****** *)
(*
API for functions
declared in sys/types.h
*)
(* ****** ****** *)

#staload
"./../../basics.sats"

(* ****** ****** *)
//
abstype
ino_type ==
$extype"ino_t"
//
typedef ino = ino_type
//
(* ****** ****** *)
//
abstype
dev_type ==
$extype"dev_t"
//
typedef dev = dev_type
//
(* ****** ****** *)
//
abstype
gid_type ==
$extype"gid_t"
//
typedef gid = gid_type
//
(* ****** ****** *)
//
abstype
gid_type ==
$extype"gid_t"
//
typedef gid = gid_type
//
(* ****** ****** *)
//
abstype
off_type ==
$extype"off_t"
//
typedef off = off_type
//
(* ****** ****** *)
//
abstype
mode_type ==
$extype"mode_t"
//
typedef mode = mode_type
//
(* ****** ****** *)
//
abstype
nlink_type ==
$extype"nlink_t"
//
typedef nlink = nlink_type
//
(* ****** ****** *)
//
abstype
blkcnt_type ==
$extype"blkcnt_t"
//
typedef blkcnt = blkcnt_type
//
(* ****** ****** *)
//
abstype
blksize_type ==
$extype"blksize_t"
//
typedef blksize = blksize_type
//
(* ****** ****** *)
//
abstype
timespec_t0 ==
$extype"struct timespec"
//
typedef timespec = timespec_t0
//
(* ****** ****** *)

(* end of [sys/types.sats] *)
