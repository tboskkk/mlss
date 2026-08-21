	.syntax unified
	.text

	thumb_func_start sub_8106F8C
sub_8106F8C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r4, _08106FF4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x02
	adds r2, #0x80
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106FEE
	ldr r1, [r4, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	movs r0, #0x04
	ands r0, r2
	adds r1, #0x80
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r4, #0x08
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08106FF8 @ =0x080FD961
	str r0, [r6, #0x04]
_08106FEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08106FF4: .4byte 0x03000FD8
_08106FF8: .4byte sub_80FD960
