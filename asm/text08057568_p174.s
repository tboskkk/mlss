	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8081C7C
sub_8081C7C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80E3D1C
	ldr r0, _08081CAC @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _08081CB0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _08081CB4 @ =0x0300034C
	ldr r0, _08081CB8 @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08081CBC @ =0x08081A69
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
_08081CAC: .4byte sub_80FC91C
_08081CB0: .4byte 0x03000FD8
_08081CB4: .4byte 0x0300034C
_08081CB8: .4byte 0x00000888
_08081CBC: .4byte sub_8081A68
	thumb_func_start sub_8081CC0
sub_8081CC0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80E3D1C
	ldr r0, _08081CF0 @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _08081CF4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _08081CF8 @ =0x0300034C
	ldr r0, _08081CFC @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08081D00 @ =0x080821C5
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
_08081CF0: .4byte sub_80FC91C
_08081CF4: .4byte 0x03000FD8
_08081CF8: .4byte 0x0300034C
_08081CFC: .4byte 0x00000888
_08081D00: .4byte sub_80821C4
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
