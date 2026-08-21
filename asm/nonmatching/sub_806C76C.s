	.syntax unified
	.text

	thumb_func_start sub_806C76C
sub_806C76C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806C7A8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C782
	adds r1, #0xFF
_0806C782:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C78C
	adds r2, #0xFF
_0806C78C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C796
	adds r3, #0xFF
_0806C796:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C7B0 @ =0x00001DF8
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_0806C7A8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_0806C7B0: .4byte 0x00001DF8
