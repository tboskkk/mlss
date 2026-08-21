	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8093CBC
sub_8093CBC:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08093CD4
	ldr r0, _08093CEC @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08093CD4:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093CF0
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08093D08
	.byte 0x00, 0x00
_08093CEC: .4byte 0x00000111
_08093CF0:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x17
	ble _08093D08
	adds r0, r3, #0x0
	bl sub_808DD2C
_08093D08:
	pop {r0}
	bx r0
	thumb_func_start sub_8093D0C
sub_8093D0C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093D24
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093D62
_08093D24:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08093D34
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08093D62
_08093D34:
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
	ldr r0, _08093D68 @ =0x08093B15
	str r0, [r4, #0x4C]
_08093D62:
	pop {r4}
	pop {r0}
	bx r0
_08093D68: .4byte sub_8093B14
	thumb_func_start sub_8093D6C
sub_8093D6C:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08093D84
	ldr r0, _08093D9C @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08093D84:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093DA0
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08093DB8
	.byte 0x00, 0x00
_08093D9C: .4byte 0x00000111
_08093DA0:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _08093DB8
	adds r0, r3, #0x0
	bl sub_808DD2C
_08093DB8:
	pop {r0}
	bx r0
	thumb_func_start sub_8093DBC
sub_8093DBC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093DD4
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093E10
_08093DD4:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08093DE4
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08093E10
_08093DE4:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	ldr r0, _08093E18 @ =0xFFFFFE34
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
	ldr r0, _08093E1C @ =0x08093581
	str r0, [r4, #0x4C]
_08093E10:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08093E18: .4byte 0xFFFFFE34
_08093E1C: .4byte sub_8093580
	thumb_func_start sub_8093E20
sub_8093E20:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093E38
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _08093E4A
_08093E38:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08093E4A
	adds r0, r2, #0x0
	bl sub_808DD2C
_08093E4A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
