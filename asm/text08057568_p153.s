	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8082A28
sub_8082A28:
	push {lr}
	ldr r2, _08082A3C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08082A40
	movs r0, #0x01
	b _08082A68
_08082A3C: .4byte 0x03000FD8
_08082A40:
	ldr r0, _08082A4C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r3, _08082A50 @ =0x00003660
	adds r1, r0, r3
	b _08082A56
	.byte 0x00, 0x00
_08082A4C: .4byte 0x03000FDC
_08082A50: .4byte 0x00003660
_08082A54:
	subs r1, #0x08
_08082A56:
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08082A54
	ldr r0, [r2, #0x00]
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r0, r0, r2
	str r1, [r0, #0x00]
	movs r0, #0x00
_08082A68:
	pop {r1}
	bx r1
	thumb_func_start sub_8082A6C
sub_8082A6C:
	push {lr}
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082AA6
	movs r2, #0xF0
	lsls r2, r2, #0x08
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	beq _08082AA6
	movs r0, #0xB0
	lsls r0, r0, #0x08
	cmp r2, r0
	beq _08082AA6
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _08082AA6
	movs r0, #0xE0
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _08082AA6
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80214A4
_08082AA6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8082AAC
sub_8082AAC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _08082AF4
	ldr r0, _08082AC0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08082AC4 @ =0x00003660
	adds r4, r0, r1
	b _08082AD0
	.byte 0x00, 0x00
_08082AC0: .4byte 0x03000FDC
_08082AC4: .4byte 0x00003660
_08082AC8:
	ldrh r0, [r4, #0x00]
	cmp r0, r5
	beq _08082AF4
	subs r4, #0x08
_08082AD0:
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08082AC8
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80213A0
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082AF4
	ldr r0, _08082AFC @ =0x07FFFFFF
	cmp r1, r0
	bhi _08082AF4
	strh r5, [r4, #0x00]
	str r1, [r4, #0x04]
_08082AF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082AFC: .4byte 0x07FFFFFF
