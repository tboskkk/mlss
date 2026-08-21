	.syntax unified
	.text

	thumb_func_start sub_8112A24
sub_8112A24:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	ldr r0, [r4, #0x28]
	ldr r1, _08112A8C @ =0x00000113
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08112A90
	adds r2, r3, #0x0
	adds r2, #0xD8
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08112A46
	adds r0, #0xFF
_08112A46:
	asrs r0, r0, #0x08
	adds r0, #0x2E
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08112A58
	adds r0, #0xFF
_08112A58:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x2E
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112A6A
	adds r0, #0xFF
_08112A6A:
	asrs r0, r0, #0x08
	subs r2, r0, #0x2
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112A7A
	adds r0, #0xFF
_08112A7A:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	b _08112ADC
	.byte 0x00, 0x00
_08112A8C: .4byte 0x00000113
_08112A90:
	adds r2, r3, #0x0
	adds r2, #0xD8
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08112A9C
	adds r0, #0xFF
_08112A9C:
	asrs r0, r0, #0x08
	adds r0, #0x40
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08112AAE
	adds r0, #0xFF
_08112AAE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x40
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112AC0
	adds r0, #0xFF
_08112AC0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112ACE
	adds r0, #0xFF
_08112ACE:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
_08112ADC:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x19
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08112B08 @ =0x08112B0D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08112B08: .4byte sub_8112B0C
