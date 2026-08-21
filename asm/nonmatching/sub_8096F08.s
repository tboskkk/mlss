	.syntax unified
	.text

	thumb_func_start sub_8096F08
sub_8096F08:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08096F54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08096F4C
	ldr r2, _08096F58 @ =0x00002050
	cmp r4, r5
	bne _08096F2A
	subs r2, #0x4D
_08096F2A:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	ldr r0, _08096F5C @ =0x08096F61
	str r0, [r4, #0x4C]
_08096F4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096F54: .4byte 0x03000FD8
_08096F58: .4byte 0x00002050
_08096F5C: .4byte sub_8096F60
