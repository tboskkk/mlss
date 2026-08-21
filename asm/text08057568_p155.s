	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DFA24
sub_80DFA24:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r3, r1]
	mov r8, r0
	movs r0, #0x12
	ldsh r4, [r3, r0]
	mov r9, r4
	mov r1, r8
	lsls r0, r1, #0x07
	subs r0, r0, r1
	lsls r0, r0, #0x01
	cmp r0, #0x00
	bge _080DFA4A
	adds r0, #0xFF
_080DFA4A:
	asrs r0, r0, #0x08
	mov r8, r0
	movs r4, #0x04
	add r9, r4
	ldr r2, _080DFB00 @ =0x08198584
	movs r0, #0xFF
	mov r1, r9
	ands r0, r1
	lsls r1, r0, #0x01
	adds r0, r1, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _080DFA68
	adds r0, #0x3F
_080DFA68:
	asrs r0, r0, #0x06
	mov r4, r8
	muls r4, r0
	mov r12, r4
	ldr r4, _080DFB04 @ =0x08198504
	adds r0, r1, r4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080DFA7E
	adds r0, #0x3F
_080DFA7E:
	asrs r0, r0, #0x06
	mov r6, r8
	muls r6, r0
	mov r10, r6
	movs r0, #0x28
	ldsh r2, [r2, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _080DFA92
	adds r0, #0x3F
_080DFA92:
	asrs r7, r0, #0x06
	adds r0, r6, #0x0
	muls r0, r7
	movs r1, #0x28
	ldsh r4, [r4, r1]
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080DFAA4
	adds r1, #0x3F
_080DFAA4:
	asrs r5, r1, #0x06
	cmp r0, #0x00
	bge _080DFAAC
	adds r0, #0xFF
_080DFAAC:
	asrs r6, r0, #0x08
	mov r0, r10
	muls r0, r5
	cmp r0, #0x00
	bge _080DFAB8
	adds r0, #0xFF
_080DFAB8:
	asrs r1, r0, #0x08
	mov r10, r1
	muls r1, r7
	mov r0, r12
	muls r0, r5
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080DFACA
	adds r0, #0xFF
_080DFACA:
	asrs r1, r0, #0x08
	mov r2, r12
	muls r2, r7
	mov r0, r10
	muls r0, r5
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080DFADC
	adds r0, #0xFF
_080DFADC:
	asrs r0, r0, #0x08
	str r0, [r3, #0x04]
	str r6, [r3, #0x08]
	str r1, [r3, #0x0C]
	mov r4, r8
	strh r4, [r3, #0x10]
	mov r0, r9
	strh r0, [r3, #0x12]
	ldrh r0, [r3, #0x16]
	subs r0, #0x01
	strh r0, [r3, #0x16]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DFB00: .4byte 0x08198584
_080DFB04: .4byte 0x08198504
