	.syntax unified
	.text

	thumb_func_start sub_8161B94
sub_8161B94:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08161BA4
	cmp r0, #0x01
	beq _08161BE8
	b _08161BFE
_08161BA4:
	ldr r0, [r4, #0x10]
	adds r2, r0, #0x0
	adds r2, #0x14
	str r2, [r4, #0x10]
	ldr r1, [r4, #0x08]
	adds r1, r1, r2
	str r1, [r4, #0x08]
	ldr r0, _08161BE4 @ =0x00004FFF
	cmp r1, r0
	ble _08161BCA
	negs r0, r2
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r4, #0x10]
	asrs r0, r0, #0x08
	cmp r0, #0x00
	beq _08161BF6
_08161BCA:
	ldr r2, [r4, #0x00]
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldr r0, [r4, #0x08]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
	b _08161BFE
_08161BE4: .4byte 0x00004FFF
_08161BE8:
	ldr r0, [r4, #0x2C]
	subs r0, #0x01
	str r0, [r4, #0x2C]
	cmp r0, #0x00
	bgt _08161BFE
	movs r0, #0x01
	b _08161C00
_08161BF6:
	movs r0, #0x50
	str r0, [r4, #0x2C]
	movs r0, #0x01
	str r0, [r4, #0x30]
_08161BFE:
	movs r0, #0x00
_08161C00:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
