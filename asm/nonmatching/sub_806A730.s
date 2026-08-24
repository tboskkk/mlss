	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, _0806A758 @ =0x00000111
	bl stop_sfx_80195A8
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_8086C64
	cmp r0, #0x00
	bne _0806A752
	ldr r0, _0806A75C @ =0x0806A77D
	str r0, [r6, #0x4C]
	movs r0, #0x00
_0806A752:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0806A758: .4byte 0x00000111
_0806A75C: .4byte sub_806A77C
