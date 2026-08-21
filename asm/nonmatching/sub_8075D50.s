	.syntax unified
	.text

	thumb_func_start sub_8075D50
sub_8075D50:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, _08075D94 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8082D00
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075D8E
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082D24
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075D8E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075D94: .4byte 0x03000FD8
