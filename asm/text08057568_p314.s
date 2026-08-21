	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8092D20
sub_8092D20:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08092D38
	ldr r0, _08092D50 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08092D38:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092D54
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08092D6C
	.byte 0x00, 0x00
_08092D50: .4byte 0x00000111
_08092D54:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _08092D6C
	adds r0, r3, #0x0
	bl sub_808DD2C
_08092D6C:
	pop {r0}
	bx r0
	thumb_func_start sub_8092D70
sub_8092D70:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092D88
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08092DC4
_08092D88:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08092D98
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08092DC4
_08092D98:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	ldr r0, _08092DCC @ =0xFFFFFE34
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08092DD0 @ =0x08092535
	str r0, [r4, #0x4C]
_08092DC4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08092DCC: .4byte 0xFFFFFE34
_08092DD0: .4byte sub_8092534
	thumb_func_start sub_8092DD4
sub_8092DD4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092DEC
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _08092DFE
_08092DEC:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08092DFE
	adds r0, r2, #0x0
	bl sub_808DD2C
_08092DFE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
