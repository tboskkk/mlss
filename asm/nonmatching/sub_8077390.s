	.syntax unified
	.text

	thumb_func_start sub_8077390
sub_8077390:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080773CE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080773AC
	adds r1, #0xFF
_080773AC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080773B6
	adds r2, #0xFF
_080773B6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080773C0
	adds r3, #0xFF
_080773C0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080773E4 @ =0x000024E9
	bl sub_80DF024
	movs r0, #0x0A
	str r0, [r5, #0x00]
_080773CE:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080773DC
	ldr r0, _080773E8 @ =0x08077611
	str r0, [r4, #0x4C]
_080773DC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080773E4: .4byte 0x000024E9
_080773E8: .4byte sub_8077610
