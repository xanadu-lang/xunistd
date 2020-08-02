(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2018 Hongwei Xi, ATS Trustful Software, Inc.
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
// Start Time: July, 2018
// Authoremail: gmhwxiATgmailDOTcom
//
*)
(* ****** ****** *)

typedef
charp0 = p2gez(char)
typedef
charp1 = p2gtz(char)

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
ecbool_succ(): ecbool(tt)
fun
ecbool_fail(): ecbool(ff)
//
(* ****** ****** *)

(*
ec_neg // ok/err: 0/-1
ec_nez // ok/err: 0/nz
ec_eqz // ok/err: nz/0
ec_eof // ok/err: 0/lz
ec_nul // ok/err: nz/0
*)

(* ****** ****** *)
//
absvwtp
ecineg_vt(i:i0) == int(i)
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
{i:int}(ecineg(i)): int(i)
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
ecineg_succ(): ecineg(0)
fun
ecineg_fail(): ecineg(-1)
(* ****** ****** *)
//
fun
ecineg_failq
{i:int}(ecineg(i)): bool(i<0)
fun
ecineg_succq
{i:int}(ecineg(i)): bool(i>=0)
//
#symload failq with ecineg_failq
#symload succq with ecineg_succq
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
ecieof_succq
{i:int}(ecieof(i)): bool(i>=0)
//
#symload failq with ecieof_failq
#symload succq with ecieof_succq
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
{i:i0}(fd: filedes(i)): int(i)
fcast
fildes_ofint
{i:nat}(fd: int(i)): filedes(i)
//
#symload toint with fildes_toint
#symload fildes with fildes_ofint
//
(* ****** ****** *)

(* end of [basics.sats] *)
