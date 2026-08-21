	.syntax unified
	.text

	thumb_func_start sub_806C7B4
sub_806C7B4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C7C4
	adds r1, #0xFF
_0806C7C4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C7CE
	adds r2, #0xFF
_0806C7CE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C7D8
	adds r3, #0xFF
_0806C7D8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C7FC @ =0x00001E01
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_0806C7FC: .4byte 0x00001E01
