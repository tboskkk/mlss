	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8087AE0
sub_8087AE0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08087B2C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	ldr r3, [r0, #0x74]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08087B08
	adds r0, r2, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08087B08:
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08087B22
	adds r0, r3, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08087B22:
	ldr r0, _08087B30 @ =0x08086F0D
	str r0, [r5, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_08087B2C: .4byte 0x03000FD8
_08087B30: .4byte sub_8086F0C
	thumb_func_start sub_8087B34
sub_8087B34:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08087B94
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08087B62
	adds r1, #0xFF
_08087B62:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08087B6C
	adds r2, #0xFF
_08087B6C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08087B76
	adds r3, #0xFF
_08087B76:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08087B9C @ =0x08086BC5
	str r0, [r4, #0x4C]
_08087B94:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08087B9C: .4byte sub_8086BC4
	.byte 0x70, 0x47, 0x00, 0x00
