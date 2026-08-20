	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8070B70
sub_8070B70:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070BB8
	adds r0, r4, #0x0
	movs r1, #0x2B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070B96
	adds r1, #0xFF
_08070B96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070BA0
	adds r2, #0xFF
_08070BA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070BAA
	adds r3, #0xFF
_08070BAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070BC0 @ =0x0000201C
	bl sub_80DF024
	ldr r0, _08070BC4 @ =0x08070EDD
	str r0, [r4, #0x4C]
_08070BB8:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08070BC0: .4byte 0x0000201C
_08070BC4: .4byte sub_8070EDC
	thumb_func_start sub_8070BC8
sub_8070BC8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x23
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x8C
	lsls r0, r0, #0x09
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	ldr r0, _08070C24 @ =0x00000199
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070C28 @ =0x08070F05
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070C24: .4byte 0x00000199
_08070C28: .4byte sub_8070F04
	thumb_func_start sub_8070C2C
sub_8070C2C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070C50
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x1C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070C58 @ =0x08070F65
	str r0, [r4, #0x4C]
_08070C50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070C58: .4byte sub_8070F64
	thumb_func_start sub_8070C5C
sub_8070C5C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070C7C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08070C7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
