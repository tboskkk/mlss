	.syntax unified
	.text

	thumb_func_start sub_8021A18
sub_8021A18:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08021A60 @ =0x0203FFB8
	ldr r3, [r0, #0x30]
	cmp r3, #0x00
	beq _08021ABE
	cmp r5, #0x02
	bne _08021A68
	ldr r2, _08021A64 @ =0x00F0FFFF
	movs r5, #0x20
_08021A2E:
	cmp r3, r4
	beq _08021A56
	ldrb r1, [r3, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08021A56
	adds r0, r3, #0x0
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08021A56
	ldr r1, [r3, #0x1C]
	ands r1, r2
	ldr r0, [r4, #0x1C]
	ands r0, r2
	cmp r1, r0
	beq _08021AB4
_08021A56:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	bne _08021A2E
	b _08021ABE
	.byte 0x00, 0x00
_08021A60: .4byte 0x0203FFB8
_08021A64: .4byte 0x00F0FFFF
_08021A68:
	movs r6, #0x0F
_08021A6A:
	cmp r3, r4
	beq _08021AB8
	ldrb r0, [r3, #0x1E]
	ldrb r2, [r4, #0x1E]
	adds r1, r6, #0x0
	ands r1, r0
	adds r0, r6, #0x0
	ands r0, r2
	cmp r1, r0
	bne _08021AB8
	cmp r5, #0x00
	bne _08021A8A
	ldrh r0, [r3, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	beq _08021AB4
_08021A8A:
	cmp r5, #0x01
	bne _08021A96
	ldrh r0, [r3, #0x1A]
	ldrh r1, [r4, #0x1A]
	cmp r0, r1
	beq _08021AB4
_08021A96:
	cmp r5, #0x03
	bne _08021AA2
	ldrh r0, [r3, #0x2E]
	ldrh r1, [r4, #0x2E]
	cmp r0, r1
	beq _08021AB4
_08021AA2:
	cmp r5, #0x04
	bne _08021AB8
	ldrh r0, [r3, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	bne _08021AB8
	ldr r0, [r3, #0x44]
	cmp r0, #0x00
	bne _08021AB8
_08021AB4:
	adds r0, r3, #0x0
	b _08021AC0
_08021AB8:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	bne _08021A6A
_08021ABE:
	movs r0, #0x00
_08021AC0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
