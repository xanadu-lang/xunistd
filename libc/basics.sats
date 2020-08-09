(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2020 Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
(*
//
// Author: Hongwei Xi
// Start Time: August, 2020
// Authoremail: gmhwxiATgmailDOTcom
//
*)
(* ****** ****** *)
#staload
"prelude\
/SATS/CC/basics.sats"
(* ****** ****** *)
typedef
charp0 = p2gez(char)
typedef
charp1 = p2gtz(char)
typedef
charpn(n:i0) = p2trn(char, n)
(* ****** ****** *)
typedef
charcp0 = cp2gez(char)
typedef
charcp1 = cp2gtz(char)
typedef
charcpn(n:i0) = cp2trn(char, n)
(* ****** ****** *)
(*
HX:
Note that 'ec' for error code
HX:
It is a cardinal sin to ignore
error code in systems programming!
HX:
A function returning a boolean is
often given a name that ends with 'q'
*)
(* ****** ****** *)
//
absvwtp
ecbool_vt(b:b0)==bool(b)
//
vwtpdef
ecbool =
[b:b0] ecbool_vt(b)
vwtpdef
ecbool(b:b0) = ecbool_vt(b)
//
(* ****** ****** *)
//
fun
ecbool_okay(): ecbool(tt)
fun
ecbool_fail(): ecbool(ff)
//
(* ****** ****** *)
//
fun
ecbool_okayq
{b:b0}(ecbool(b)): bool(b)
fun
ecbool_failq
{b:b0}(ecbool(b)): bool(~b)
//
#symload okayq with ecbool_okayq
#symload failq with ecbool_failq
//
(* ****** ****** *)

(*
ecineg // ok/err: 0/-1
ecinez // ok/err: 0/nz
ecieqz // ok/err: nz/0
ecieof // ok/err: 0/lz
ecinul // ok/err: nz/0
*)

(* ****** ****** *)
//
absvwtp
ecineg_vt(i:i0) == sint(i)
//
vwtpdef
ecineg =
[i:i0] ecineg_vt(i)
vwtpdef
ecineg(i:i0) = ecineg_vt(i)
//
(* ****** ****** *)
fcast
ecineg_toint
{i:int}(ecineg(i)): sint(i)
#symload int with ecineg_toint
#symload toint with ecineg_toint
(* ****** ****** *)
fcast
ecineg_ofint
{i:int}(int(i)): ecineg(i)
#symload ofint with ecineg_ofint
#symload ecineg with ecineg_ofint
(* ****** ****** *)
fun
ecineg_okay(): ecineg(0)
fun
ecineg_fail(): ecineg(-1)
(* ****** ****** *)
//
fun
ecineg_failq
{i:int}(ecineg(i)): bool(i<0)
fun
ecineg_okayq
{i:int}(ecineg(i)): bool(i>=0)
//
#symload failq with ecineg_failq
#symload okayq with ecineg_okayq
//
(* ****** ****** *)
//
absvwtp
ecieof_vt(i:i0) == int(i)
//
vwtpdef
ecieof =
[i:i0] ecieof_vt(i)
vwtpdef
ecieof(i:i0) = ecieof_vt(i)
//
(* ****** ****** *)
//
fcast
ecieof_toint
{i:int}(ecieof(i)): int(i)
#symload int with ecieof_toint
#symload toint with ecieof_toint
//
(* ****** ****** *)
//
fun
ecieof_failq
{i:int}(ecieof(i)): bool(i<0)
fun
ecieof_okayq
{i:int}(ecieof(i)): bool(i>=0)
//
#symload failq with ecieof_failq
#symload okayq with ecieof_okayq
//
(* ****** ****** *)
//
// HX:
// For file descriptors
//
abstype
fildes_t0(i:i0) == int(i)
typedef
fildes = [i:i0] fildes_t0(i)
typedef
fildes(i:i0) = [i:i0] fildes_t0(i)
//
(* ****** ****** *)
//
fcast
fildes_toint
{i:i0}
(fd: fildes(i)): int(i)
fcast
fildes_ofint
{i:nat}(fd: int(i)): fildes(i)
//
#symload toint with fildes_toint
#symload fildes with fildes_ofint
//
(* ****** ****** *)

(* end of [basics.sats] *)
