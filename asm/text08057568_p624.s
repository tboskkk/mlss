	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81089A4
sub_81089A4:
	push {lr}
	adds r3, r0, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x0A
	ands r0, r1
	cmp r0, #0x00
	beq _08108A3A
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _081089F0 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08108A2C
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	ldrh r1, [r2, #0x00]
	cmp r0, #0x13
	beq _081089F4
	adds r2, r1, #0x0
	cmp r0, #0x14
	bne _081089FA
	movs r0, #0x80
	lsls r0, r0, #0x03
	orrs r2, r0
	b _081089FA
_081089F0: .4byte 0x0000F3FF
_081089F4:
	movs r2, #0x80
	lsls r2, r2, #0x04
	orrs r2, r1
_081089FA:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r3, r1
	strh r2, [r0, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r3, r2
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, #0x27
	adds r2, r3, r0
	movs r1, #0x01
	movs r0, #0x01
	strh r0, [r2, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r3, r2
	strb r1, [r0, #0x00]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_08108A2C:
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldr r2, _08108A40 @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r0, #0x00]
_08108A3A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08108A40: .4byte 0xFFFC7FFF
	thumb_func_start sub_8108A44
sub_8108A44:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, [r6, #0x08]
	adds r2, r5, #0x0
	adds r2, #0x08
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08108A94
	movs r4, #0x01
	negs r4, r4
	adds r0, r2, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x04]
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0xF5
	cmp r0, r4
	bne _08108A8E
	adds r1, #0x52
_08108A8E:
	adds r0, r1, #0x0
	bl stop_sfx_80195A8
_08108A94:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8108A9C
sub_8108A9C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08108AF4
	adds r1, r2, #0x0
	adds r1, #0x08
	adds r6, r2, #0x0
	adds r6, #0xEC
	movs r2, #0x00
	ldsh r0, [r6, r2]
	movs r5, #0x01
	negs r5, r5
	ldr r2, _08108AEC @ =0x00002057
	cmp r0, r5
	bne _08108AC8
	subs r2, #0x2F
_08108AC8:
	adds r0, r1, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08108AF0 @ =0x08108A45
	str r0, [r4, #0x04]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0xF5
	cmp r0, r5
	bne _08108AE2
	adds r1, #0x52
_08108AE2:
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _08108B08
_08108AEC: .4byte 0x00002057
_08108AF0: .4byte sub_8108A44
_08108AF4:
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0x00
	str r0, [r4, #0x04]
_08108B08:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
