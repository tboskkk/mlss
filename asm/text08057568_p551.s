	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FCD68
sub_80FCD68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	movs r7, #0x00
	movs r0, #0x00
	mov r9, r0
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	ldr r0, _080FCE60 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _080FCDDA
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FCDDA
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	mvns r0, r0
	cmp r0, #0x00
	beq _080FCDDA
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080FCDDA
	movs r0, #0x01
	str r0, [sp, #0x000]
_080FCDDA:
	movs r6, #0x00
_080FCDDC:
	ldr r0, _080FCE60 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080FCDFC
	cmp r1, #0x04
	bne _080FCE8A
_080FCDFC:
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r5, #0x80
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080FCE8A
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x02
	negs r1, r1
	cmp r0, r1
	bne _080FCE36
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	beq _080FCE36
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080FCE8A
_080FCE36:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	beq _080FCE64
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r4, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r2, #0x16
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080FCE5A
	adds r0, #0xFF
_080FCE5A:
	asrs r5, r0, #0x08
	b _080FCE66
	.byte 0x00, 0x00
_080FCE60: .4byte 0x03000FD8
_080FCE64:
	ldr r5, _080FCF4C @ =0x7FFFFFFF
_080FCE66:
	cmp r5, r9
	bne _080FCE7E
	movs r0, #0x01
	add r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	mov r0, r8
	bl sub_81DD77C
	cmp r0, #0x00
	beq _080FCE86
_080FCE7E:
	cmp r5, r9
	ble _080FCE8A
	movs r1, #0x01
	mov r8, r1
_080FCE86:
	adds r7, r4, #0x0
	mov r9, r5
_080FCE8A:
	adds r6, #0x01
	cmp r6, #0x07
	ble _080FCDDC
	cmp r7, #0x00
	bne _080FCF58
	movs r3, #0x00
	ldr r2, _080FCF50 @ =0x03000FD8
	mov r8, r2
	mov r6, r8
	movs r0, #0x06
	mov r12, r0
	movs r5, #0x88
	lsls r5, r5, #0x01
	movs r7, #0x7F
_080FCEA6:
	ldr r0, [r6, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x06
	beq _080FCEC8
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_080FCEC8:
	adds r1, r3, #0x1
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x06
	beq _080FCEEC
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_080FCEEC:
	adds r1, r3, #0x2
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x06
	beq _080FCF10
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_080FCF10:
	adds r1, r3, #0x3
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x06
	beq _080FCF34
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_080FCF34:
	adds r3, #0x04
	cmp r3, #0x07
	ble _080FCEA6
	mov r2, r8
	ldr r1, [r2, #0x00]
	ldr r0, _080FCF54 @ =0x000002BB
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	b _080FD07C
	.byte 0x00, 0x00
_080FCF4C: .4byte 0x7FFFFFFF
_080FCF50: .4byte 0x03000FD8
_080FCF54: .4byte 0x000002BB
_080FCF58:
	ldr r1, [sp, #0x000]
	cmp r1, #0x00
	beq _080FCFBA
	ldr r0, _080FCF8C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FCFBA
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	beq _080FCF90
	cmp r0, #0x02
	beq _080FCFA8
	b _080FCFBA
	.byte 0x00, 0x00
_080FCF8C: .4byte 0x03000FD8
_080FCF90:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FCFBA
	b _080FCFB8
_080FCFA8:
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080FCFBA
_080FCFB8:
	adds r7, r3, #0x0
_080FCFBA:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x15
	bne _080FD014
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	cmp r0, #0x01
	beq _080FCFF4
	cmp r0, #0x01
	bcc _080FCFE0
	cmp r0, #0x02
	beq _080FCFFE
	b _080FD006
_080FCFE0:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _080FCFF0 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
	b _080FD006
_080FCFF0: .4byte 0x0000F3FF
_080FCFF4:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81084B4
	b _080FD006
_080FCFFE:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81083EC
_080FD006:
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldr r2, _080FD08C @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r0, #0x00]
_080FD014:
	ldr r0, _080FD090 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	str r7, [r0, #0x7C]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x87
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	movs r4, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _080FD094 @ =0x080FD09D
	mov r1, r10
	str r0, [r1, #0x04]
	bl sub_810CBC8
	mov r2, r10
	strh r4, [r2, #0x18]
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080FD07C
	bl sub_810C950
	movs r2, #0x96
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0B
	bne _080FD066
	movs r0, #0x01
	mov r1, r10
	strh r0, [r1, #0x18]
_080FD066:
	ldr r2, _080FD098 @ =0x0000012B
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bne _080FD07C
	mov r1, r10
	ldrh r0, [r1, #0x18]
	movs r1, #0x02
	orrs r0, r1
	mov r2, r10
	strh r0, [r2, #0x18]
_080FD07C:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FD08C: .4byte 0xFFFC7FFF
_080FD090: .4byte 0x03000FD8
_080FD094: .4byte sub_80FD09C
_080FD098: .4byte 0x0000012B
	thumb_func_start sub_80FD09C
sub_80FD09C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080FD11C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x7C]
	bl sub_80813A0
	movs r1, #0x18
	ldsh r0, [r6, r1]
	ldr r1, _080FD120 @ =0x080FD39D
	cmp r0, #0x00
	beq _080FD0B6
	ldr r1, _080FD124 @ =0x080FD1AD
_080FD0B6:
	str r1, [r6, #0x04]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FD138
	ldr r0, _080FD128 @ =0x00000121
	adds r0, r0, r4
	mov r12, r0
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD192
	adds r0, r4, #0x0
	bl sub_8108928
	ldr r0, _080FD12C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD130 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r6, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD134 @ =0x0810707D
	str r0, [r6, #0x04]
	b _080FD192
_080FD11C: .4byte 0x03000FD8
_080FD120: .4byte sub_80FD39C
_080FD124: .4byte sub_80FD1AC
_080FD128: .4byte 0x00000121
_080FD12C: .4byte 0x03000FDC
_080FD130: .4byte 0x00008E58
_080FD134: .4byte sub_810707C
_080FD138:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FD192
	ldr r0, _080FD198 @ =0x00000121
	adds r0, r0, r4
	mov r12, r0
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD192
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r1, #0x10
	bl sub_8087318
	ldr r0, _080FD19C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD1A0 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r6, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD1A4 @ =0x08107041
	str r0, [r6, #0x04]
	ldrh r1, [r5, #0x00]
	ldr r0, _080FD1A8 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r5, #0x00]
_080FD192:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FD198: .4byte 0x00000121
_080FD19C: .4byte 0x03000FDC
_080FD1A0: .4byte 0x00008E58
_080FD1A4: .4byte sub_8107040
_080FD1A8: .4byte 0x0000FCFF
