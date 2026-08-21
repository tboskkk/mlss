	.syntax unified
	.text

	thumb_func_start sub_8132594
sub_8132594:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081325DC
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x38]
	cmp r1, #0x00
	bge _081325AE
	adds r1, #0xFF
_081325AE:
	asrs r1, r1, #0x08
	ldr r2, [r2, #0x3C]
	cmp r2, #0x00
	bge _081325B8
	adds r2, #0xFF
_081325B8:
	asrs r2, r2, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _081325E4 @ =0x081325E9
	str r0, [r4, #0x4C]
_081325DC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_081325E4: .4byte sub_81325E8
