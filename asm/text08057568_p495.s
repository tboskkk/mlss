	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813F790
sub_813F790:
	push {r4, r5, r6, lr}
	add sp, #-0x014
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, [r5, #0x0C]
	cmp r1, #0x00
	bge _0813F7A2
	ldr r0, _0813F84C @ =0x00000FFF
	adds r1, r1, r0
_0813F7A2:
	asrs r1, r1, #0x0C
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _0813F7AE
	ldr r4, _0813F84C @ =0x00000FFF
	adds r2, r2, r4
_0813F7AE:
	asrs r2, r2, #0x0C
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	add r3, sp, #0x008
	bl sub_80457E8
	ldr r1, [sp, #0x010]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0813F7CC
	str r1, [sp, #0x008]
_0813F7CC:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0x008]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	adds r3, r3, r4
	str r0, [sp, #0x000]
	add r4, sp, #0x004
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A44C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0813F850 @ =0x083A05EC
	ldr r1, _0813F854 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, _0813F858 @ =0x08142C19
	str r0, [r6, #0x00]
	add sp, #0x014
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813F84C: .4byte 0x00000FFF
_0813F850: .4byte 0x083A05EC
_0813F854: .4byte 0x00000216
_0813F858: .4byte sub_8142C18
	thumb_func_start sub_813F85C
sub_813F85C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813F8A4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813F8A6
_0813F8A4:
	movs r0, #0xFF
_0813F8A6:
	movs r4, #0x00
	strb r0, [r5, #0x02]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	adds r0, #0x64
	ldrh r3, [r0, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	adds r2, #0x30
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	mov r0, sp
	strb r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0813F948 @ =0x083A05EC
	ldr r1, _0813F94C @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x60
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0813F950 @ =0x08142BCD
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813F948: .4byte 0x083A05EC
_0813F94C: .4byte 0x00000216
_0813F950: .4byte sub_8142BCC
	thumb_func_start sub_813F954
sub_813F954:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813F9C6
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x08]
	cmp r0, #0x00
	beq _0813F99E
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0813F9CC @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813F9C6
_0813F99E:
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813F9D0
_0813F9C6:
	movs r0, #0x00
	b _0813F9D2
	.byte 0x00, 0x00
_0813F9CC: .4byte 0x00007FFF
_0813F9D0:
	movs r0, #0x01
_0813F9D2:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_813F9DC
sub_813F9DC:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r1, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _0813FA04
	cmp r0, #0x02
	bhi _0813F9FA
	cmp r0, #0x00
	beq _0813FA2E
	b _0813FA5A
_0813F9FA:
	cmp r0, #0x04
	beq _0813FA2E
	cmp r0, #0x06
	beq _0813FA1C
	b _0813FA5A
_0813FA04:
	cmp r2, #0x00
	bne _0813FA5A
	cmp r3, #0x00
	bne _0813FA5A
	ldr r0, _0813FA18 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813FA5A
_0813FA12:
	movs r0, #0x00
	b _0813FA5C
	.byte 0x00, 0x00
_0813FA18: .4byte 0x7FFFFFFF
_0813FA1C:
	ldr r0, _0813FA64 @ =0x7FFFFFFF
	cmp r2, r0
	bne _0813FA2E
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813FA2E
	cmp r1, r3
	beq _0813FA12
_0813FA2E:
	cmp r2, #0x00
	bne _0813FA3C
	cmp r3, #0x00
	bne _0813FA3C
	ldr r0, _0813FA64 @ =0x7FFFFFFF
	cmp r1, r0
	beq _0813FA12
_0813FA3C:
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	bne _0813FA5A
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813FA5A
	cmp r1, r3
	bne _0813FA5A
	ldr r1, [r4, #0x0C]
	movs r0, #0xA0
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _0813FA12
_0813FA5A:
	movs r0, #0x01
_0813FA5C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813FA64: .4byte 0x7FFFFFFF
	thumb_func_start sub_813FA68
sub_813FA68:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813FA8E
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0813FA9A
_0813FA8E:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0813FA9A:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	ldr r2, _0813FAD8 @ =0x03001038
	ldr r0, _0813FADC @ =0x0819832C
	ldr r1, _0813FAE0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813FAE4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0813FAE8
_0813FAD8: .4byte 0x03001038
_0813FADC: .4byte 0x0819832C
_0813FAE0: .4byte 0x08198220
_0813FAE4:
	movs r1, #0x01
	negs r1, r1
_0813FAE8:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	ldrh r0, [r6, #0x24]
	lsls r0, r0, #0x0C
	adds r1, r1, r0
	str r1, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813FB40 @ =0x08142B4D
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813FB40: .4byte sub_8142B4C
