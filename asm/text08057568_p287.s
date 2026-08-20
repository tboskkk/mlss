	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8087C6C
sub_8087C6C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08087CD4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08087C94
	cmp r1, #0x04
	bne _08087CD0
_08087C94:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08087CB4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _08087CC0
_08087CB4:
	ldr r2, _08087CDC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_08087CC0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08087CD0:
	ldr r0, _08087CE0 @ =0x08088509
	str r0, [r4, #0x4C]
_08087CD4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08087CDC: .4byte 0x0000204D
_08087CE0: .4byte sub_8088508
	thumb_func_start sub_8087CE4
sub_8087CE4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	movs r1, #0x7A
	adds r1, r1, r4
	mov r12, r1
	movs r5, #0x00
	ldsh r0, [r1, r5]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r6, #0x00
	ldsh r1, [r1, r6]
	muls r0, r1
	cmp r0, #0x00
	bge _08087D0A
	adds r0, #0xFF
_08087D0A:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08087D8C @ =0x00003FFF
	cmp r5, r0
	bgt _08087DAA
	mov r1, r12
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	beq _08087DAA
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r3, r1, r5
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08087D48
	adds r0, #0x3F
_08087D48:
	asrs r0, r0, #0x06
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08087D64
	adds r0, #0x3F
_08087D64:
	asrs r0, r0, #0x06
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _08087D90
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08087D88
	adds r0, #0x3F
_08087D88:
	asrs r0, r0, #0x06
	b _08087DA4
_08087D8C: .4byte 0x00003FFF
_08087D90:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	subs r0, #0x02
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
_08087DA4:
	str r0, [r4, #0x18]
	movs r0, #0x01
	b _08087DDC
_08087DAA:
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	movs r2, #0x02
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08087DDC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8087DE4
sub_8087DE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08087E0C
	adds r0, #0xFF
_08087E0C:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08087E80 @ =0x00003FFF
	cmp r5, r0
	bgt _08087E84
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r3, r1, r5
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08087E40
	adds r0, #0x3F
_08087E40:
	asrs r0, r0, #0x06
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08087E5C
	adds r0, #0x3F
_08087E5C:
	asrs r0, r0, #0x06
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x06
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	movs r0, #0x01
	b _08087EF2
	.byte 0x00, 0x00
_08087E80: .4byte 0x00003FFF
_08087E84:
	movs r7, #0x84
	adds r7, r7, r4
	mov r8, r7
	movs r1, #0x02
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0x88
	movs r2, #0x02
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x06
	movs r7, #0x00
	ldsh r3, [r0, r7]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	cmp r0, #0x00
	blt _08087ECE
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	b _08087EF2
_08087ECE:
	mov r1, r8
	movs r2, #0x02
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	movs r5, #0x02
	ldsh r0, [r6, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08087EF2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8087EFC
sub_8087EFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r2, r12
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	mov r4, r12
	adds r4, #0x7A
	movs r1, #0x00
	ldsh r0, [r4, r1]
	mov r1, r12
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08087F24
	adds r0, #0xFF
_08087F24:
	asrs r0, r0, #0x08
	adds r3, r3, r0
	ldrh r1, [r2, #0x00]
	mov r0, r12
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r3, [r2, #0x00]
	ldr r0, _08087FDC @ =0x00003FFF
	mov r8, r0
	cmp r3, r8
	bgt _08087FE0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	beq _08087FE0
	mov r0, r12
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	subs r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _08087F56
	adds r0, #0xFF
_08087F56:
	asrs r0, r0, #0x08
	muls r0, r3
	cmp r0, #0x00
	bge _08087F60
	adds r0, #0x3F
_08087F60:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	muls r0, r3
	adds r4, r1, r0
	mov r0, r12
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	asrs r3, r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r3, r3, r1
	mov r5, r12
	adds r5, #0x88
	ldr r0, [r5, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r7, r2, r0
	mov r6, r12
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	lsls r1, r1, #0x08
	adds r0, r3, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087F9E
	add r0, r8
_08087F9E:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r1, r12
	str r0, [r1, #0x10]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r1, r0, #0x08
	adds r0, r7, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087FB6
	add r0, r8
_08087FB6:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r5, r12
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r1, r0, #0x08
	adds r0, r2, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087FCE
	add r0, r8
_08087FCE:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r5, r12
	str r0, [r5, #0x18]
	movs r0, #0x01
	b _08088016
	.byte 0x00, 0x00
_08087FDC: .4byte 0x00003FFF
_08087FE0:
	mov r0, r12
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	mov r5, r12
	str r0, [r5, #0x10]
	mov r0, r12
	adds r0, #0x88
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r5, #0x14]
	mov r0, r12
	adds r0, #0x8C
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	mov r1, r12
	str r0, [r1, #0x18]
	mov r2, r12
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08088016:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8088020
sub_8088020:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r4, [r2, r0]
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r3, #0x0
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08088046
	ldr r1, _080880B8 @ =0x000007FF
	adds r0, r0, r1
_08088046:
	asrs r0, r0, #0x0B
	adds r4, r4, r0
	ldrh r1, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r4, [r2, #0x00]
	subs r0, #0x28
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x04
	subs r5, r1, r4
	muls r0, r5
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08088072
	adds r0, #0x07
_08088072:
	asrs r0, r0, #0x03
	str r0, [r3, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0808808E
	adds r0, #0x07
_0808808E:
	asrs r0, r0, #0x03
	str r0, [r3, #0x14]
	adds r0, r3, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080880AA
	adds r0, #0x07
_080880AA:
	asrs r0, r0, #0x03
	str r0, [r3, #0x18]
	ldr r0, _080880B8 @ =0x000007FF
	cmp r4, r0
	ble _080880BC
	movs r0, #0x00
	b _080880BE
_080880B8: .4byte 0x000007FF
_080880BC:
	movs r0, #0x01
_080880BE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80880C4
sub_80880C4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r3, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r3, r3, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	ldr r5, _08088130 @ =0x03001038
	adds r0, r3, #0x0
	muls r0, r3
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0808813C
	ldr r0, _08088134 @ =0x0819832C
	ldr r1, _08088138 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r0
	lsls r0, r6, #0x06
	lsrs r1, r3, #0x1F
	adds r1, r3, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	b _08088140
	.byte 0x00, 0x00
_08088130: .4byte 0x03001038
_08088134: .4byte 0x0819832C
_08088138: .4byte 0x08198220
_0808813C:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08088140:
	movs r1, #0x80
	lsls r1, r1, #0x07
	cmp r0, r1
	ble _0808814A
	adds r0, r1, #0x0
_0808814A:
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8088164
sub_8088164:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	mov r10, r1
	adds r0, #0x8C
	str r0, [sp, #0x00C]
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0x02
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r7, r6, #0x0
	adds r7, #0x92
	movs r0, #0x00
	ldsh r5, [r7, r0]
	add r1, sp, #0x008
	lsls r0, r5, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	bl sub_8087878
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r8, r1
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r1, r0
	ldr r7, _08088230 @ =0x03001038
	ldr r1, _08088234 @ =0x0819832C
	ldr r0, _08088238 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r1, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	subs r0, r5, r0
	ldr r1, [sp, #0x004]
	muls r0, r1
	cmp r0, #0x00
	bge _080881DC
	adds r0, #0x3F
_080881DC:
	asrs r0, r0, #0x06
	adds r2, r0, #0x0
	muls r2, r1
	ldr r1, [sp, #0x008]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080881EC
	adds r0, #0x3F
_080881EC:
	asrs r0, r0, #0x06
	muls r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	adds r2, r0, #0x0
	mov r1, r8
	mov r0, r8
	muls r0, r1
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0808823C
	ldr r2, [r7, #0x00]
	add r2, r9
	mov r1, r10
	lsls r0, r1, #0x06
	lsrs r1, r3, #0x1F
	adds r1, r3, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	b _08088242
	.byte 0x00, 0x00
_08088230: .4byte 0x03001038
_08088234: .4byte 0x0819832C
_08088238: .4byte 0x08198220
_0808823C:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
_08088242:
	adds r1, r6, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x94
	ldr r0, [sp, #0x004]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [sp, #0x008]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8088274
sub_8088274:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	str r2, [sp, #0x000]
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r3, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r3, r3, r0
	mov r0, r8
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r0, r8
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	ldr r0, _08088344 @ =0x03001038
	mov r10, r0
	adds r0, r3, #0x0
	muls r0, r3
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r7, r0, #0x0
	lsls r0, r7, #0x01
	ldr r3, [sp, #0x000]
	muls r0, r3
	lsls r0, r0, #0x08
	mov r2, r9
	mov r1, r9
	muls r1, r2
	adds r0, r0, r1
	mov r3, r10
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	ldr r1, _08088348 @ =0x0819832C
	ldr r0, _0808834C @ =0x08198220
	subs r6, r1, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	mov r1, r9
	subs r5, r4, r1
	lsls r0, r5, #0x08
	add r4, r9
	adds r1, r4, #0x0
	bl _call_via_r2
	mov r1, r8
	adds r1, #0x98
	str r0, [r1, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	mov r1, r9
	lsls r0, r1, #0x09
	adds r1, r4, #0x0
	bl _call_via_r2
	mov r1, r8
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	beq _08088350
	cmp r5, #0x00
	beq _0808836E
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r1, [sp, #0x000]
	lsls r0, r1, #0x0E
	lsrs r1, r5, #0x1F
	adds r1, r5, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	b _08088372
	.byte 0x00, 0x00
_08088344: .4byte 0x03001038
_08088348: .4byte 0x0819832C
_0808834C: .4byte 0x08198220
_08088350:
	cmp r7, #0x00
	beq _0808836E
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	mov r1, r9
	lsls r0, r1, #0x06
	lsrs r1, r7, #0x1F
	adds r1, r7, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r7, #0x0
	bl _call_via_r2
	b _08088372
_0808836E:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08088372:
	movs r1, #0xC0
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _0808837C
	adds r0, r1, #0x0
_0808837C:
	mov r1, r8
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	mov r2, r8
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80883A0
sub_80883A0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r3, r1, #0x0
	cmp r3, #0x00
	beq _080883DE
	adds r1, r4, #0x0
	adds r1, #0x7E
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r2, _080883E4 @ =0x03001038
	ldr r0, _080883E8 @ =0x0819832C
	ldr r1, _080883EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
_080883DE:
	pop {r4}
	pop {r0}
	bx r0
_080883E4: .4byte 0x03001038
_080883E8: .4byte 0x0819832C
_080883EC: .4byte 0x08198220
