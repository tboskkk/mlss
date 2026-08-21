	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FADD4
sub_80FADD4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, [r6, #0x24]
	ldr r2, _080FAE28 @ =0x000009A2
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	lsrs r5, r1, #0x01
	ldr r1, _080FAE2C @ =0x00000888
	adds r4, r0, r1
	cmp r5, #0x00
	beq _080FAE06
_080FADEA:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FADF8
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x00]
_080FADF8:
	lsls r0, r5, #0x10
	ldr r2, _080FAE30 @ =0xFFFF0000
	adds r0, r0, r2
	adds r4, #0x04
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080FADEA
_080FAE06:
	ldr r1, [r6, #0x24]
	ldr r3, _080FAE28 @ =0x000009A2
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x01
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x24]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FAE28: .4byte 0x000009A2
_080FAE2C: .4byte 0x00000888
_080FAE30: .4byte 0xFFFF0000
	thumb_func_start sub_80FAE34
sub_80FAE34:
	push {r4, r5, lr}
	movs r5, #0x0D
	ldr r4, [r0, #0x24]
_080FAE3A:
	ldr r0, _080FAE5C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0xA8
	bl _call_via_r3
	adds r4, #0xA8
	lsls r0, r5, #0x10
	ldr r1, _080FAE60 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080FAE3A
	pop {r4, r5}
	pop {r0}
	bx r0
_080FAE5C: .4byte 0x03001034
_080FAE60: .4byte 0xFFFF0000
	thumb_func_start sub_80FAE64
sub_80FAE64:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	ldr r0, [r0, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r2, r2, #0x12
	adds r2, r2, r0
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x12]
	movs r5, #0x07
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080FAEBC
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080FAEB4
	ldrb r0, [r3, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0x12]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldrh r0, [r2, #0x00]
	movs r1, #0x20
	eors r0, r1
	strh r0, [r2, #0x00]
_080FAEB4:
	ldrb r1, [r3, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r3, #0x12]
_080FAEBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80FAEC4
sub_80FAEC4:
	push {r4, lr}
	adds r4, r1, #0x0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r0, #0x14]
	bl sub_8120E90
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _080FAEE6
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r2, #0x02
	eors r1, r2
	strh r1, [r0, #0x00]
_080FAEE6:
	pop {r4}
	pop {r0}
	bx r0
