	push {r4, lr}
	bl sub_8020A78
	ldr r2, _0816AFC8 @ =0x03000D48
	ldr r4, _0816AFCC @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _0816AFD0 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r2, _0816AFD4 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r4, _0816AFD8 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816AFC8: .4byte 0x03000D48
_0816AFCC: .4byte 0x0203FFB8
_0816AFD0: .4byte 0x00000A14
_0816AFD4: .4byte 0x03000D4C
_0816AFD8: .4byte 0x0300034C
