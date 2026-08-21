	.syntax unified
	.text

	thumb_func_start sub_81100B0
sub_81100B0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08110124
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081100D2
	adds r0, #0xFF
_081100D2:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x44
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081100E4
	adds r0, #0xFF
_081100E4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081100F2
	adds r0, #0xFF
_081100F2:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0811012C @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08110130 @ =0x08110179
	str r0, [r4, #0x4C]
_08110124:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0811012C: .4byte 0x0000011B
_08110130: .4byte sub_8110178
