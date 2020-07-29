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
p1trez =
[l:a0|l>=null] p1tr(l)
typedef
p1trnz =
[l:a0|l > null] p1tr(l)

typedef
p2trez(a:vt) =
[l:a0|l>=null] p2tr(a, l)
typedef
p2trnz(a:vt) =
[l:a0|l > null] p2tr(a, l)

(* ****** ****** *)
//
typedef ptrez = p1trez
typedef ptrnz = p1trnz
//
typedef ptrez(a:vt) = p2trez(a)
typedef ptrnz(a:vt) = p2trnz(a)
//
(* ****** ****** *)

(*
ec_neg
ec_nez
ec_eqz
ec_eof
ec_nul
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
//
fcast
ecineg_toint
{i:int}(ec: ecineg(i)): int(i)
#symload int with ecineg_toint
#symload toint with ecineg_toint
//
(* ****** ****** *)
//
fun
ecineg_failq
{i:int}(ec: ecineg(i)): bool(i<0)
fun
ecineg_succq
{i:int}(ec: ecineg(i)): bool(i>=0)
//
#symload failq with ecineg_failq
#symload succq with ecineg_succq
//
(* ****** ****** *)

abstype
fildes_t0(i:i0) == int(i)
typedef
fildes = [i:i0] fildes_t0(i)
typedef
fildes(i:i0) = [i:i0] fildes_t0(i)

(* ****** ****** *)

(* end of [basics.sats] *)
