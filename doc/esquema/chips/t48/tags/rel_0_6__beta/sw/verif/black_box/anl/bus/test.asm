	;; *******************************************************************
	;; $Id: test.asm,v 1.1.1.1 2004-03-25 22:29:17 arniml Exp $
	;;
	;; Test ANL BUS, data.
	;; *******************************************************************

	INCLUDE	"cpu.inc"
	INCLUDE	"pass_fail.inc"

	ORG	0

	;; Start of test
	mov	a, #0FFH
	outl	bus, a

	clr	a
	ins	a, bus
	inc	a
	jnz	fail

	anl	bus, #0AAH
	jnz	fail

	ins	a, bus
	add	a, #056H
	jnz	fail

pass:	PASS

fail:	FAIL
