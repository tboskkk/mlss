	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A19F8
sub_80A19F8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	adds r0, #0x26
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080A1A2C
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r1, [r3, #0x40]
	ldr r0, [r3, #0x18]
	cmp r1, r0
	bne _080A1A84
	movs r4, #0x00
	ldsh r0, [r2, r4]
	adds r0, r1, r0
	str r0, [r3, #0x18]
	b _080A1A84
_080A1A2C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1A3E
	cmp r1, #0x04
	bne _080A1A80
_080A1A3E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1A4C
	adds r0, #0xFF
_080A1A4C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1A5A
	adds r0, #0xFF
_080A1A5A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1A68
	adds r0, #0xFF
_080A1A68:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	bl sub_80880C4
_080A1A80:
	ldr r0, _080A1A8C @ =0x080A1A91
	str r0, [r4, #0x4C]
_080A1A84:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080A1A8C: .4byte sub_80A1A90
	thumb_func_start sub_80A1A90
sub_80A1A90:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A1AB0
	movs r1, #0x00
	str r1, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
_080A1AB0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
