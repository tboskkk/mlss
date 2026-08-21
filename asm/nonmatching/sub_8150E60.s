	.syntax unified
	.text

	thumb_func_start sub_8150E60
sub_8150E60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, [r2, #0x00]
	ldr r0, [r4, #0x0C]
	adds r3, r3, r0
	ldr r2, [r2, #0x04]
	ldr r0, [r4, #0x10]
	adds r2, r2, r0
	ldr r0, [r1, #0x00]
	subs r0, r0, r3
	ldr r1, [r1, #0x04]
	subs r1, r1, r2
	ldr r2, _08150EB4 @ =0x03001038
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r2, r0, #0x0
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	bge _08150E98
	adds r0, #0xFF
_08150E98:
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x30]
	muls r1, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08150EA8
	adds r0, #0x03
_08150EA8:
	asrs r1, r0, #0x02
	cmp r2, r1
	blt _08150EB8
	movs r0, #0x00
	b _08150EBA
	.byte 0x00, 0x00
_08150EB4: .4byte 0x03001038
_08150EB8:
	movs r0, #0x01
_08150EBA:
	pop {r4}
	pop {r1}
	bx r1
