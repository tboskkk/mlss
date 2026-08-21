	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8091B30
sub_8091B30:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091B48
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091B86
_08091B48:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08091B58
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08091B86
_08091B58:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x04
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
	ldr r0, _08091B8C @ =0x08091939
	str r0, [r4, #0x4C]
_08091B86:
	pop {r4}
	pop {r0}
	bx r0
_08091B8C: .4byte sub_8091938
	thumb_func_start sub_8091B90
sub_8091B90:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08091BA8
	ldr r0, _08091BC0 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08091BA8:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091BC4
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08091BDC
	.byte 0x00, 0x00
_08091BC0: .4byte 0x00000111
_08091BC4:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _08091BDC
	adds r0, r3, #0x0
	bl sub_808DD2C
_08091BDC:
	pop {r0}
	bx r0
	thumb_func_start sub_8091BE0
sub_8091BE0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091BF8
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091C34
_08091BF8:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08091C08
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08091C34
_08091C08:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	ldr r0, _08091C3C @ =0xFFFFFE34
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
	ldr r0, _08091C40 @ =0x080913A5
	str r0, [r4, #0x4C]
_08091C34:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08091C3C: .4byte 0xFFFFFE34
_08091C40: .4byte sub_80913A4
	thumb_func_start sub_8091C44
sub_8091C44:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091C5C
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _08091C6E
_08091C5C:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08091C6E
	adds r0, r2, #0x0
	bl sub_808DD2C
_08091C6E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
