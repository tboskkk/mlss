	.syntax unified
	.text

	thumb_func_start sub_8073E4C
sub_8073E4C:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, _08073EA4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	ldr r2, [r1, #0x74]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08073E7C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08073E7C
	adds r1, r3, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08073E7C:
	adds r2, r3, #0x0
	adds r2, #0xAC
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08073E9C
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x3C
	strh r0, [r2, #0x00]
	ldr r0, _08073EA8 @ =0x0807411D
	str r0, [r3, #0x4C]
_08073E9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08073EA4: .4byte 0x03000FD8
_08073EA8: .4byte sub_807411C
