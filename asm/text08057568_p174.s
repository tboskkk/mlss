	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8081D04
sub_8081D04:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8081444
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08081D20
	adds r0, #0xFF
_08081D20:
	asrs r1, r0, #0x08
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08081D2E
	adds r0, #0xFF
_08081D2E:
	asrs r2, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08081D46
	adds r2, #0xFF
_08081D46:
	asrs r2, r2, #0x08
	adds r2, #0x20
	adds r0, r4, #0x0
	movs r1, #0xC0
	lsls r1, r1, #0x03
	bl sub_808842C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x14
	strh r0, [r5, #0x10]
	ldr r0, _08081D80 @ =0x08082205
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08081D80: .4byte sub_8082204
	thumb_func_start sub_8081D84
sub_8081D84:
	push {r4, r5, lr}
	movs r1, #0x2C
	muls r0, r1
	ldr r1, _08081DD0 @ =0x08500A98
	adds r0, r0, r1
	ldr r4, [r0, #0x14]
	cmp r4, #0x00
	beq _08081DD8
	ldr r1, _08081DD4 @ =0x0000FFFF
_08081D96:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	cmp r0, r1
	bne _08081D96
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	ldr r1, _08081DD4 @ =0x0000FFFF
	cmp r0, r1
	beq _08081DC2
	adds r5, r1, #0x0
_08081DB2:
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	cmp r0, r5
	bne _08081DB2
_08081DC2:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	bl sub_8082AAC
	b _08081DC2
_08081DD0: .4byte 0x08500A98
_08081DD4: .4byte 0x0000FFFF
_08081DD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
