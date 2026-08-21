	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8066D50
sub_8066D50:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08066D6C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066D74 @ =0x08066DA5
	str r0, [r4, #0x4C]
_08066D6C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066D74: .4byte sub_8066DA4
	thumb_func_start sub_8066D78
sub_8066D78:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066D98
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066DA0 @ =0x0808750D
	str r0, [r4, #0x4C]
_08066D98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066DA0: .4byte sub_808750C
	thumb_func_start sub_8066DA4
sub_8066DA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066E00
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066E08 @ =0x08066E0D
	str r0, [r4, #0x4C]
_08066E00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066E08: .4byte sub_8066E0C
	thumb_func_start sub_8066E0C
sub_8066E0C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08066E52
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08066E30
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08066E3C
_08066E30:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08066E3C:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08066E58 @ =0x08066E5D
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
_08066E52:
	pop {r4}
	pop {r0}
	bx r0
_08066E58: .4byte sub_8066E5C
	thumb_func_start sub_8066E5C
sub_8066E5C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066EA8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08066EA8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0xA4
	movs r1, #0x01
	ands r1, r0
	adds r1, #0x03
	str r1, [r2, #0x00]
	ldr r0, _08066EB0 @ =0x08066EB5
	str r0, [r4, #0x4C]
_08066EA8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066EB0: .4byte sub_8066EB4
	thumb_func_start sub_8066EB4
sub_8066EB4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066ED4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066EDC @ =0x0806688D
	str r0, [r4, #0x4C]
_08066ED4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066EDC: .4byte sub_806688C
	thumb_func_start sub_8066EE0
sub_8066EE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066F54
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066F5C @ =0x08066F61
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08066F54:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066F5C: .4byte sub_8066F60
	thumb_func_start sub_8066F60
sub_8066F60:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08066FE8
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08066FF0 @ =0x08067831
	str r0, [r4, #0x58]
	ldr r0, _08066FF4 @ =0x08067839
	str r0, [r4, #0x60]
	bl sub_8199F30
	movs r1, #0x03
	ands r0, r1
	adds r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldr r0, _08066FF8 @ =0x08066FFD
	str r0, [r4, #0x4C]
_08066FE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066FF0: .4byte 0x08067831
_08066FF4: .4byte sub_8067838
_08066FF8: .4byte sub_8066FFC
	thumb_func_start sub_8066FFC
sub_8066FFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	mov r10, r0
	cmp r0, #0x00
	beq _08067016
	b _08067162
_08067016:
	movs r0, #0xAC
	adds r0, r0, r5
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08067108
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x8C
	adds r2, r5, #0x0
	adds r2, #0x9C
	str r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	movs r3, #0x84
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08067068
	adds r0, #0xFF
_08067068:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08067078
	adds r0, #0xFF
_08067078:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08067088
	adds r0, #0xFF
_08067088:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r1, [r3, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r4, r1, r0
	ldr r2, _08067100 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _080670BE
	adds r0, #0xFF
_080670BE:
	asrs r7, r0, #0x08
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _080670D8
	movs r0, #0x02
_080670D8:
	negs r0, r0
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	mov r3, r8
	str r0, [r3, #0x00]
	str r7, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	mov r1, r10
	mov r0, r9
	strh r1, [r0, #0x00]
	ldr r0, _08067104 @ =0x08067179
	b _08067160
	.byte 0x00, 0x00
_08067100: .4byte 0x03001038
_08067104: .4byte sub_8067178
_08067108:
	bl sub_8199F30
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r1, [r5, #0x2C]
	ldr r2, [r1, #0x28]
	adds r3, r2, #0x0
	adds r3, #0xD8
	movs r1, #0x1D
	ands r1, r0
	lsls r1, r1, #0x08
	movs r0, #0x98
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	mov r1, r10
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _08067174 @ =0x080678E9
_08067160:
	str r0, [r5, #0x4C]
_08067162:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067174: .4byte sub_80678E8
	thumb_func_start sub_8067178
sub_8067178:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r7, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bge _0806720A
	b _08067774
_0806720A:
	ldr r1, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _08067216
	b _08067774
_08067216:
	ldr r0, [r7, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _08067222
	bl _call_via_r1
_08067222:
	ldr r1, [r7, #0x2C]
	ldr r0, _08067254 @ =0x080678E5
	str r0, [r1, #0x4C]
	ldr r4, [r1, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r5, [r0, #0x00]
	cmp r5, #0x01
	bne _08067248
	b _080673F0
_08067248:
	cmp r5, #0x01
	bgt _08067258
	cmp r5, #0x00
	beq _08067260
	b _080676F8
	.byte 0x00, 0x00
_08067254: .4byte 0x080678E5
_08067258:
	cmp r5, #0x02
	bne _0806725E
	b _08067574
_0806725E:
	b _080676F8
_08067260:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806732C
	cmp r1, #0x00
	bne _080672B4
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806727C
	adds r0, #0xFF
_0806727C:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806728A
	adds r0, #0xFF
_0806728A:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067298
	adds r0, #0xFF
_08067298:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080672B0 @ =0x00004096
	b _080672F4
_080672B0: .4byte 0x00004096
_080672B4:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672C2
	adds r0, #0xFF
_080672C2:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672D0
	adds r0, #0xFF
_080672D0:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672DE
	adds r0, #0xFF
_080672DE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067324 @ =0x00004098
_080672F4:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067302
	adds r1, #0xFF
_08067302:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806730C
	adds r2, #0xFF
_0806730C:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067316
	adds r3, #0xFF
_08067316:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067328 @ =0x0000114F
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_08067324: .4byte 0x00004098
_08067328: .4byte 0x0000114F
_0806732C:
	cmp r1, #0x00
	bne _08067378
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806733E
	adds r0, #0xFF
_0806733E:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806734C
	adds r0, #0xFF
_0806734C:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806735A
	adds r0, #0xFF
_0806735A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067374 @ =0x00004097
	b _080673B8
	.byte 0x00, 0x00
_08067374: .4byte 0x00004097
_08067378:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067386
	adds r0, #0xFF
_08067386:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067394
	adds r0, #0xFF
_08067394:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080673A2
	adds r0, #0xFF
_080673A2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080673E8 @ =0x00004099
_080673B8:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080673C6
	adds r1, #0xFF
_080673C6:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080673D0
	adds r2, #0xFF
_080673D0:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080673DA
	adds r3, #0xFF
_080673DA:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080673EC @ =0x0000115C
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_080673E8: .4byte 0x00004099
_080673EC: .4byte 0x0000115C
_080673F0:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080674B8
	cmp r1, #0x00
	bne _08067444
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806740C
	adds r0, #0xFF
_0806740C:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806741A
	adds r0, #0xFF
_0806741A:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067428
	adds r0, #0xFF
_08067428:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067440 @ =0x0000409A
	b _08067482
	.byte 0x00, 0x00
_08067440: .4byte 0x0000409A
_08067444:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067452
	adds r0, #0xFF
_08067452:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067460
	adds r0, #0xFF
_08067460:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806746E
	adds r0, #0xFF
_0806746E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080674B0 @ =0x0000409C
_08067482:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067490
	adds r1, #0xFF
_08067490:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806749A
	adds r2, #0xFF
_0806749A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080674A4
	adds r3, #0xFF
_080674A4:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080674B4 @ =0x00001172
	bl sub_80DF024
	b _080676F8
_080674B0: .4byte 0x0000409C
_080674B4: .4byte 0x00001172
_080674B8:
	cmp r1, #0x00
	bne _08067500
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674CA
	adds r0, #0xFF
_080674CA:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674D8
	adds r0, #0xFF
_080674D8:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674E6
	adds r0, #0xFF
_080674E6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080674FC @ =0x0000409B
	b _0806753E
_080674FC: .4byte 0x0000409B
_08067500:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806750E
	adds r0, #0xFF
_0806750E:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806751C
	adds r0, #0xFF
_0806751C:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806752A
	adds r0, #0xFF
_0806752A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806756C @ =0x0000409D
_0806753E:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806754C
	adds r1, #0xFF
_0806754C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067556
	adds r2, #0xFF
_08067556:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067560
	adds r3, #0xFF
_08067560:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067570 @ =0x0000117F
	bl sub_80DF024
	b _080676F8
_0806756C: .4byte 0x0000409D
_08067570: .4byte 0x0000117F
_08067574:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08067640
	cmp r1, #0x00
	bne _080675C8
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067590
	adds r0, #0xFF
_08067590:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806759E
	adds r0, #0xFF
_0806759E:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675AC
	adds r0, #0xFF
_080675AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080675C4 @ =0x0000409E
	b _08067608
_080675C4: .4byte 0x0000409E
_080675C8:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675D6
	adds r0, #0xFF
_080675D6:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675E4
	adds r0, #0xFF
_080675E4:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675F2
	adds r0, #0xFF
_080675F2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067638 @ =0x000040A0
_08067608:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067616
	adds r1, #0xFF
_08067616:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067620
	adds r2, #0xFF
_08067620:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806762A
	adds r3, #0xFF
_0806762A:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _0806763C @ =0x00001195
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_08067638: .4byte 0x000040A0
_0806763C: .4byte 0x00001195
_08067640:
	cmp r1, #0x00
	bne _0806768C
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067652
	adds r0, #0xFF
_08067652:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067660
	adds r0, #0xFF
_08067660:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806766E
	adds r0, #0xFF
_0806766E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067688 @ =0x0000409F
	b _080676CC
	.byte 0x00, 0x00
_08067688: .4byte 0x0000409F
_0806768C:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806769A
	adds r0, #0xFF
_0806769A:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080676A8
	adds r0, #0xFF
_080676A8:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080676B6
	adds r0, #0xFF
_080676B6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806777C @ =0x000040A1
_080676CC:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080676DA
	adds r1, #0xFF
_080676DA:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080676E4
	adds r2, #0xFF
_080676E4:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080676EE
	adds r3, #0xFF
_080676EE:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067780 @ =0x000011A2
	bl sub_80DF024
_080676F8:
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x77
	ldrb r0, [r4, #0x00]
	adds r3, r6, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r4, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08067784 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	adds r0, r7, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08067788 @ =0x08067875
	str r0, [r6, #0x4C]
	ldr r0, [r7, #0x08]
	bl sub_807FB64
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	ldr r0, _0806778C @ =0x08067895
	str r0, [r7, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
_08067774:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806777C: .4byte 0x000040A1
_08067780: .4byte 0x000011A2
_08067784: .4byte sub_8087540
_08067788: .4byte sub_8067874
_0806778C: .4byte sub_8067894
	thumb_func_start sub_8067790
sub_8067790:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r5, r6, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08067824
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806782C @ =0x0808750D
	str r0, [r6, #0x4C]
_08067824:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806782C: .4byte sub_808750C
	.byte 0x01, 0x20, 0x40, 0x42, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_8067838
sub_8067838:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0806786C
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0x14
	str r0, [r1, #0x00]
	ldr r0, _08067868 @ =0x080679FD
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _0806786E
_08067868: .4byte sub_80679FC
_0806786C:
	adds r0, r4, #0x0
_0806786E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8067874
sub_8067874:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806788E
	adds r0, r2, #0x0
	bl sub_807C298
_0806788E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8067894
sub_8067894:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x30]
	cmp r5, #0x00
	bne _080678DA
	movs r0, #0x83
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x2C]
	str r5, [r0, #0x4C]
	ldr r0, [r4, #0x08]
	bl sub_807BC90
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _080678E0 @ =0x08067791
	str r0, [r4, #0x4C]
_080678DA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080678E0: .4byte sub_8067790
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_80678E8
sub_80678E8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0806793E
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x05
	adds r0, r0, r5
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08067944 @ =0x08066FFD
	str r0, [r4, #0x4C]
_0806793E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08067944: .4byte sub_8066FFC
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0xA0, 0x31, 0x02, 0x20, 0x08, 0x60, 0xD0, 0x6A, 0x80, 0x6A
	.byte 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C, 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x25, 0x7A, 0x06, 0x08, 0x10, 0xB5, 0x02, 0x1C
	.byte 0xA0, 0x30, 0x01, 0x23, 0x03, 0x60, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F
	.byte 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x04, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x08, 0x60
	.byte 0x02, 0xE0, 0x10, 0x1C, 0x9C, 0x30, 0x03, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x25, 0x7A, 0x06, 0x08, 0x10, 0xB5, 0x02, 0x1C, 0xA0, 0x30, 0x00, 0x23
	.byte 0x03, 0x60, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x01, 0x20, 0x40, 0x42
	.byte 0x81, 0x42, 0x03, 0xD1, 0x10, 0x1C, 0x9C, 0x30, 0x03, 0x60, 0x03, 0xE0, 0x11, 0x1C, 0x9C, 0x31
	.byte 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x25, 0x7A, 0x06, 0x08
