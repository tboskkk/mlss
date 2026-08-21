	.syntax unified
	.text

	thumb_func_start sub_8106D9C
sub_8106D9C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08106DDA
	ldr r0, _08106DE0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, _08106DE4 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08106DDA
	ldr r1, _08106DE8 @ =0x00000346
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08106DD6
	movs r0, #0x00
	movs r1, #0x00
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x00
	bl sub_810CB04
_08106DD6:
	ldr r0, _08106DEC @ =0x080FCC79
	str r0, [r4, #0x04]
_08106DDA:
	pop {r4}
	pop {r0}
	bx r0
_08106DE0: .4byte 0x03000FD8
_08106DE4: .4byte 0x000002BF
_08106DE8: .4byte 0x00000346
_08106DEC: .4byte sub_80FCC78
