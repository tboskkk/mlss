	.syntax unified
	.text

	thumb_func_start sub_8087BD0
sub_8087BD0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	adds r0, r4, #0x0
	adds r0, #0xE4
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08087C10
	adds r5, r0, #0x0
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	bge _08087BEE
	adds r1, #0xFF
_08087BEE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _08087BF8
	adds r2, #0xFF
_08087BF8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x48]
	cmp r3, #0x00
	bge _08087C02
	adds r3, #0xFF
_08087C02:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
_08087C10:
	movs r0, #0x00
	str r0, [r4, #0x54]
	str r0, [r6, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
