	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814979C
sub_814979C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r2, [r0, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r4, r6, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1E
	movs r1, #0x20
	cmp r0, #0x00
	bge _081497D4
	movs r1, #0x40
_081497D4:
	adds r0, r2, #0x0
	adds r0, #0x20
	strb r1, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r6, r1
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_8149458
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x1D
	cmp r0, #0x00
	blt _08149800
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	blt _08149800
	ldr r0, [r7, #0x28]
	movs r3, #0x04
	ldsh r0, [r0, r3]
	cmp r0, #0x04
	beq _0814980A
_08149800:
	ldr r0, [r7, #0x2C]
	movs r4, #0x04
	ldsh r0, [r0, r4]
	cmp r0, #0x04
	bne _08149890
_0814980A:
	add r4, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149890
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x28]
	mov r12, r0
	ldr r0, [r6, #0x0C]
	cmp r0, #0x00
	bge _0814982C
	adds r0, #0xFF
_0814982C:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	ldr r2, [r6, #0x10]
	cmp r2, #0x00
	bge _08149838
	adds r2, #0xFF
_08149838:
	lsls r2, r2, #0x08
	mov r3, sp
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r3, #0x00]
	adds r5, #0x02
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x06]
	adds r5, #0x02
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	mov r1, sp
	movs r3, #0x02
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x04
	adds r2, r2, r0
	strh r2, [r1, #0x04]
	ldr r2, _081498D8 @ =0x00007FFF
	mov r0, sp
	mov r1, r12
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149890
	movs r0, #0xC0
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x00]
_08149890:
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bne _081498BC
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bne _081498BC
	movs r2, #0xC0
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_081498BC:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	add r2, r8
	ldr r3, [r2, #0x00]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl _call_via_r3
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081498D8: .4byte 0x00007FFF
	thumb_func_start sub_81498DC
sub_81498DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
	mov r4, sp
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	strb r0, [r4, #0x00]
	mov r0, sp
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08149930
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	b _08149942
_08149930:
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	adds r1, r1, r2
	ldr r2, _08149984 @ =0xFFFFDC00
	adds r1, r1, r2
	str r1, [r0, #0x00]
_08149942:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149988 @ =0x0814B989
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149984: .4byte 0xFFFFDC00
_08149988: .4byte sub_814B988
	thumb_func_start sub_814998C
sub_814998C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081499F4
	adds r0, r5, #0x0
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #0x02
	bl sub_813A5C8
	adds r0, r5, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x07
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
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
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081499F0 @ =0x0814BA11
	b _08149AAA
	.byte 0x00, 0x00
_081499F0: .4byte sub_814BA10
_081499F4:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r7, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	subs r6, r1, r0
	ldr r2, _08149ABC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, _08149AC0 @ =0x2D900000
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08149A2A
	adds r0, #0xFF
_08149A2A:
	asrs r4, r0, #0x08
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r7, r1, #0x05
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r6, r1, #0x05
	mov r0, r8
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r4, r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r4, r4, r1
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	movs r3, #0x28
	bl sub_813B798
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, _08149AC4 @ =0x0814B92D
_08149AAA:
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149ABC: .4byte 0x03001038
_08149AC0: .4byte 0x2D900000
_08149AC4: .4byte sub_814B92C
	thumb_func_start sub_8149AC8
sub_8149AC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	mov r8, r0
	adds r4, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r3, #0xEC
	lsls r3, r3, #0x01
	adds r6, r4, r3
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1F
	cmp r0, #0x00
	beq _08149B02
	add r5, sp, #0x010
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149B02
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1E
	cmp r0, #0x00
	blt _08149B06
_08149B02:
	movs r0, #0x00
	b _08149B70
_08149B06:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x28]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _08149B16
	adds r0, #0xFF
_08149B16:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08149B22
	adds r0, #0xFF
_08149B22:
	lsls r2, r0, #0x08
	mov r3, sp
	movs r4, #0x10
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r3, #0x00]
	movs r4, #0x12
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x06]
	movs r4, #0x14
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	mov r1, sp
	movs r3, #0x16
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x04
	adds r2, r2, r0
	strh r2, [r1, #0x04]
	ldr r2, _08149B7C @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	movs r1, #0x00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08149B6E
	movs r1, #0x01
_08149B6E:
	adds r0, r1, #0x0
_08149B70:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08149B7C: .4byte 0x00007FFF
	thumb_func_start sub_8149B80
sub_8149B80:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r1, #0x0
	mov r9, r2
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r6, r7, r1
	movs r1, #0x00
	mov r8, r1
	strh r0, [r6, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldrh r0, [r6, #0x00]
	adds r5, r5, r0
	ldrb r0, [r5, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149C44 @ =0x08149C4D
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _08149C48 @ =0x0814B849
	str r0, [r1, #0x04]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149C44: .4byte sub_8149C4C
_08149C48: .4byte sub_814B848
	thumb_func_start sub_8149C4C
sub_8149C4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x010]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x014]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08149C8A
	b _08149E00
_08149C8A:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08149C9E
	b _08149E34
_08149C9E:
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149CB2
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _08149CBE
_08149CB2:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08149CBE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r2, [sp, #0x00C]
	movs r3, #0xC2
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r4, #0xC4
	lsls r4, r4, #0x01
	adds r0, r2, r4
	ldr r2, [r0, #0x00]
	ldr r5, [sp, #0x00C]
	adds r3, #0x08
	adds r0, r5, r3
	adds r3, #0x04
	adds r4, r5, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r7, #0x0
	bl sub_8047F60
	mov r0, r8
	ldr r1, [r0, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	mov r2, r8
	ldr r1, [r2, #0x10]
	ldr r0, [r7, #0x10]
	subs r6, r1, r0
	ldr r5, _08149DF4 @ =0x0819832C
	ldr r0, _08149DF8 @ =0x08198220
	subs r5, r5, r0
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r4, r2, r5
	mov r1, r9
	mov r0, r9
	muls r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r4
	mov r10, r0
	ldr r2, [sp, #0x014]
	ldrh r0, [r2, #0x0A]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r4, [r3, #0x14]
	adds r4, r4, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	subs r4, r4, r0
	movs r1, #0xBC
	lsls r1, r1, #0x01
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	str r1, [sp, #0x018]
	ldrh r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	mov r8, r0
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	mov r0, r9
	mov r1, r10
	bl _call_via_r2
	mov r1, r8
	muls r1, r0
	mov r9, r1
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	mov r1, r10
	bl _call_via_r2
	mov r6, r8
	muls r6, r0
	ldr r5, [sp, #0x018]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	ldrh r0, [r0, #0x08]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	movs r2, #0x01
	strb r2, [r0, #0x00]
	adds r0, r7, #0x0
	mov r1, r9
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	bl sub_813A44C
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r7, r3
	ldr r0, [r4, #0x00]
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldr r2, [sp, #0x018]
	ldrh r0, [r2, #0x00]
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	ldrb r0, [r0, #0x04]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08149E34
	.byte 0x00, 0x00
_08149DF4: .4byte 0x0819832C
_08149DF8: .4byte 0x08198220
_08149DFC: .4byte 0x03001038
_08149E00:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x2C
	ldsh r0, [r0, r2]
	cmp r0, #0xFF
	ble _08149E24
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_08149E24:
	adds r0, r7, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149E34
	ldr r0, _08149E44 @ =0x08149E49
	str r0, [r5, #0x00]
_08149E34:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149E44: .4byte sub_8149E48
	thumb_func_start sub_8149E48
sub_8149E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r9, r2
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r6, [r0, #0x00]
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149E82
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _08149E8E
_08149E82:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08149E8E:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r6, #0x08]
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x14]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149EF0 @ =0x0814B7A5
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149EF0: .4byte sub_814B7A4
	thumb_func_start sub_8149EF4
sub_8149EF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	str r0, [sp, #0x020]
	adds r7, r1, #0x0
	str r2, [sp, #0x024]
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x028]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, [sp, #0x020]
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149F3A
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r3, [sp, #0x020]
	adds r0, r0, r3
	b _08149F4C
_08149F3A:
	ldr r4, [sp, #0x020]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r0, r0, r4
_08149F4C:
	ldr r5, [r0, #0x28]
	ldr r1, [r5, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x030]
	ldr r1, [r5, #0x10]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	mov r10, r1
	ldr r4, _0814A03C @ =0x0819832C
	ldr r0, _0814A040 @ =0x08198220
	subs r4, r4, r0
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r6, r2, r4
	ldr r1, [sp, #0x030]
	adds r0, r1, #0x0
	muls r0, r1
	mov r3, r10
	mov r1, r10
	muls r1, r3
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r6
	mov r9, r0
	mov r1, r8
	ldrh r0, [r1, #0x0A]
	lsls r0, r0, #0x08
	str r0, [sp, #0x038]
	ldr r2, [r5, #0x14]
	adds r2, r2, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	subs r2, r2, r0
	str r2, [sp, #0x034]
	ldr r2, [sp, #0x028]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r2, r2, r3
	mov r8, r2
	ldrh r0, [r2, #0x00]
	ldr r1, [sp, #0x02C]
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r6, [r0, #0x00]
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r0, [sp, #0x030]
	mov r1, r9
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	str r1, [sp, #0x030]
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r10
	mov r1, r9
	bl _call_via_r2
	adds r4, r0, #0x0
	muls r4, r6
	mov r10, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x02C]
	adds r0, r0, r2
	ldrh r6, [r0, #0x20]
	ldr r3, [sp, #0x020]
	movs r4, #0xC1
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x03C]
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r4, sp, #0x008
	movs r3, #0x00
	mov r9, r3
	strb r3, [r4, #0x00]
	add r4, sp, #0x00C
	movs r3, #0x01
	mov r8, r3
	strb r3, [r4, #0x00]
	ldr r3, [sp, #0x03C]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0814A048
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r4, [sp, #0x038]
	adds r3, r3, r4
	str r6, [sp, #0x000]
	add r0, sp, #0x004
	mov r4, r9
	strb r4, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_813A44C
	b _0814A05C
	.byte 0x00, 0x00
_0814A03C: .4byte 0x0819832C
_0814A040: .4byte 0x08198220
_0814A044: .4byte 0x03001038
_0814A048:
	str r6, [sp, #0x000]
	add r0, sp, #0x004
	mov r1, r8
	strb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ldr r1, [sp, #0x030]
	mov r2, r10
	ldr r3, [sp, #0x034]
	bl sub_813A44C
_0814A05C:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x028]
	subs r3, #0x9C
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	ldr r4, [sp, #0x02C]
	adds r0, r0, r4
	ldrb r0, [r0, #0x1C]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0814A0A0 @ =0x0814B805
	ldr r1, [sp, #0x024]
	str r0, [r1, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814A0A0: .4byte sub_814B804
	thumb_func_start sub_814A0A4
sub_814A0A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A0E0
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	b _0814A0EC
_0814A0E0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814A0EC:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r7, #0x08]
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x2C]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814A160 @ =0x0814B7A5
	str r0, [r6, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A164 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A16C
	ldr r0, _0814A168 @ =0x08149EF5
	b _0814A16E
_0814A160: .4byte sub_814B7A4
_0814A164: .4byte 0x00007FFF
_0814A168: .4byte sub_8149EF4
_0814A16C:
	ldr r0, _0814A180 @ =0x0814A185
_0814A16E:
	str r0, [r6, #0x04]
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A180: .4byte sub_814A184
	thumb_func_start sub_814A184
sub_814A184:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x010]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	subs r5, r1, r0
	ldr r2, _0814A240 @ =0x03001038
	mov r10, r2
	ldr r4, _0814A244 @ =0x0819832C
	ldr r0, _0814A248 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r2, #0x00]
	adds r6, r2, r4
	mov r1, r9
	mov r0, r9
	muls r0, r1
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r6
	mov r8, r0
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	adds r0, #0x40
	ldrb r6, [r0, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r9
	mov r1, r8
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	mov r9, r1
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	mov r1, r8
	bl _call_via_r2
	adds r5, r0, #0x0
	muls r5, r6
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r1, r0
	movs r1, #0xF2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r2, #0xF4
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r2, r2, r0
	cmp r3, r2
	ble _0814A24C
	movs r3, #0x80
	lsls r3, r3, #0x06
	b _0814A252
	.byte 0x00, 0x00
_0814A240: .4byte 0x03001038
_0814A244: .4byte 0x0819832C
_0814A248: .4byte 0x08198220
_0814A24C:
	ldr r1, _0814A2BC @ =0xFFFFE000
	adds r0, r3, r1
	subs r3, r2, r0
_0814A252:
	ldr r2, [sp, #0x00C]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	adds r4, r2, r0
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	ldrh r0, [r0, #0x38]
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	mov r1, r9
	adds r2, r5, #0x0
	bl sub_813A44C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0814A2C0 @ =0x0814A2C9
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	ldr r0, _0814A2C4 @ =0x0814B731
	str r0, [r1, #0x04]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A2BC: .4byte 0xFFFFE000
_0814A2C0: .4byte sub_814A2C8
_0814A2C4: .4byte sub_814B730
	thumb_func_start sub_814A2C8
sub_814A2C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814A2E6
	adds r0, #0xFF
_0814A2E6:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814A2FA
	adds r0, #0xFF
_0814A2FA:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r3, _0814A418 @ =0x03001038
	mov r8, r3
	ldr r1, _0814A41C @ =0x0819832C
	ldr r0, _0814A420 @ =0x08198220
	subs r6, r1, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r0, [r4, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r9, r1
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r0, [r4, #0x10]
	mov r1, r9
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	subs r1, #0x78
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814A370
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814A370:
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x014]
	mov r1, sp
	ldr r0, [sp, #0x010]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, #0x0
	subs r0, #0x19
	strh r0, [r1, #0x00]
	mov r3, sp
	mov r0, r10
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0x0
	subs r0, #0x13
	strh r0, [r3, #0x06]
	mov r0, sp
	adds r2, #0x19
	strh r2, [r0, #0x02]
	adds r1, #0x13
	strh r1, [r0, #0x04]
	ldr r0, [r7, #0x04]
	ldr r1, _0814A424 @ =0x0814B6CD
	mov r10, r1
	cmp r0, r10
	beq _0814A3FE
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, r5
	mov r0, sp
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r1, r0
	blt _0814A3FE
	subs r0, r2, r5
	mov r1, sp
	movs r2, #0x02
	ldsh r1, [r1, r2]
	cmp r0, r1
	bgt _0814A3FE
	mov r0, sp
	ldr r3, [sp, #0x01C]
	lsls r1, r3, #0x10
	asrs r5, r1, #0x10
	movs r1, #0x06
	ldsh r0, [r0, r1]
	cmp r5, r0
	blt _0814A3FE
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	mov r1, r9
	bl _call_via_r2
	subs r0, r5, r0
	mov r1, sp
	movs r2, #0x04
	ldsh r1, [r1, r2]
	cmp r0, r1
	bgt _0814A3FE
	mov r3, r10
	str r3, [r7, #0x04]
_0814A3FE:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bne _0814A408
	ldr r0, [r7, #0x04]
	str r0, [r7, #0x00]
_0814A408:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814A418: .4byte 0x03001038
_0814A41C: .4byte 0x0819832C
_0814A420: .4byte 0x08198220
_0814A424: .4byte sub_814B6CC
	thumb_func_start sub_814A428
sub_814A428:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r7, r6, r2
	ldrh r0, [r7, #0x00]
	cmp r0, #0x00
	beq _0814A4DE
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x18]
	subs r0, r0, r1
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x14]
	adds r1, r1, r0
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0814A512
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x4C
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	strh r5, [r7, #0x00]
	b _0814A512
_0814A4DE:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x2C
	ldsh r1, [r0, r2]
	ldr r0, _0814A520 @ =0x0000084F
	cmp r1, r0
	ble _0814A512
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _0814A524 @ =0x0814B67D
	str r3, [r4, #0x00]
	ldr r0, _0814A528 @ =0x0814B86D
	str r0, [r4, #0x04]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
_0814A512:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A520: .4byte 0x0000084F
_0814A524: .4byte sub_814B67C
_0814A528: .4byte sub_814B86C
	.byte 0x70, 0xB5, 0x82, 0xB0, 0x04, 0x1C, 0x0D, 0x1C, 0x2E, 0x1C, 0x58, 0x36, 0x01, 0xA9, 0xB1, 0xF7
	.byte 0x03, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x0A, 0xD0, 0x20, 0x1C, 0x29, 0x1C, 0x00, 0x22, 0xEF, 0xF7
	.byte 0x9D, 0xFC, 0x00, 0x06, 0x00, 0x16, 0x01, 0x21, 0x49, 0x42, 0x88, 0x42, 0x05, 0xD1, 0x20, 0x1C
	.byte 0x29, 0x1C, 0x00, 0x22, 0x00, 0xF0, 0xB2, 0xFF, 0x53, 0xE0, 0xDA, 0x21, 0x49, 0x00, 0x68, 0x18
	.byte 0x00, 0x68, 0x08, 0x22, 0x80, 0x5E, 0x00, 0x28, 0x1B, 0xD0, 0x20, 0x1C, 0x29, 0x1C, 0x00, 0xF0
	.byte 0xBB, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x14, 0xD0, 0x80, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x68
	.byte 0x04, 0x22, 0x80, 0x5E, 0x02, 0x28, 0x06, 0xD0, 0x04, 0x31, 0x60, 0x18, 0x00, 0x68, 0x04, 0x22
	.byte 0x80, 0x5E, 0x02, 0x28, 0x05, 0xD1, 0x20, 0x1C, 0x29, 0x1C, 0x02, 0x22, 0x00, 0xF0, 0x8E, 0xFF
	.byte 0x2F, 0xE0, 0x01, 0xA8, 0x00, 0x78, 0x80, 0x00, 0x00, 0x19, 0x84, 0x6A, 0xBC, 0x21, 0x49, 0x00
	.byte 0x70, 0x18, 0x00, 0x88, 0xAC, 0x22, 0x52, 0x00, 0xB1, 0x18, 0x09, 0x68, 0x40, 0x00, 0x40, 0x18
	.byte 0x06, 0x8D, 0xE1, 0x68, 0xE8, 0x68, 0x0A, 0x1A, 0x21, 0x69, 0x28, 0x69, 0x09, 0x1A, 0x10, 0x1C
	.byte 0x08, 0x43, 0x00, 0x28, 0x07, 0xD0, 0x10, 0x1C, 0x9E, 0xF7, 0xD6, 0xFF, 0x00, 0x04, 0x00, 0x0C
	.byte 0x10, 0x30, 0x01, 0x0A, 0x00, 0xE0, 0xFF, 0x21, 0x00, 0x20, 0xA9, 0x70, 0xE1, 0x68, 0x22, 0x69
	.byte 0x6B, 0x46, 0x18, 0x70, 0x28, 0x1C, 0x33, 0x1C, 0xEF, 0xF7, 0x3E, 0xFE, 0x28, 0x1C, 0xF1, 0xF7
	.byte 0x21, 0xF8, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_814A618
sub_814A618:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	mov r12, r1
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r3, [r0, #0x00]
	movs r5, #0xEA
	lsls r5, r5, #0x01
	add r5, r12
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0814A694
	adds r4, r3, #0x0
	adds r4, #0x23
	ldrb r0, [r4, #0x00]
	cmp r0, #0x08
	bls _0814A654
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814A654:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x0D
	bls _0814A6BC
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A6BC
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	mov r1, r12
	movs r2, #0x03
	bl sub_814B038
	movs r0, #0x00
	strh r0, [r5, #0x00]
	b _0814A6BC
_0814A694:
	adds r0, r3, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0814A6BC
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A6BC
	adds r0, r6, #0x0
	mov r1, r12
	movs r2, #0x04
	bl sub_814B4C8
_0814A6BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A6C4
sub_814A6C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	ldr r6, _0814A7A0 @ =0x03001038
	ldr r1, _0814A7A4 @ =0x0819832C
	ldr r0, _0814A7A8 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814A720
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814A720:
	movs r5, #0xB7
	lsls r5, r5, #0x02
	adds r2, r4, r5
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814A7BC
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r5, r4, r3
	ldrb r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0814A75E
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x06
	bl sub_814B038
	ldrb r1, [r5, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0814A75E:
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814A7BC
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r5, _0814A7AC @ =0x0000020F
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A7B0
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814A802
	.byte 0x00, 0x00
_0814A7A0: .4byte 0x03001038
_0814A7A4: .4byte 0x0819832C
_0814A7A8: .4byte 0x08198220
_0814A7AC: .4byte 0x0000020F
_0814A7B0:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
	b _0814A802
_0814A7BC:
	ldr r0, _0814A810 @ =0x00000242
	adds r1, r4, r0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x02
	add r1, r8
	ldr r3, [r1, #0x00]
	adds r0, r3, r0
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _0814A7D8
	adds r1, #0x03
_0814A7D8:
	asrs r1, r1, #0x02
	adds r1, r2, r1
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r5, #0x00
	ldsh r2, [r1, r5]
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0814A7F8
	adds r0, #0x03
_0814A7F8:
	asrs r1, r0, #0x02
	adds r1, r2, r1
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0814A802:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A810: .4byte 0x00000242
	thumb_func_start sub_814A814
sub_814A814:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0814A880
	movs r1, #0x23
	adds r1, r1, r3
	mov r12, r1
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bls _0814A854
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814A854:
	mov r1, r12
	ldrb r0, [r1, #0x00]
	cmp r0, #0x03
	bls _0814A906
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A906
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x08
	bl sub_814B038
	movs r0, #0x00
	strh r0, [r6, #0x00]
	b _0814A906
_0814A880:
	movs r0, #0x23
	adds r0, r0, r3
	mov r12, r0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0814A8A2
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814A8A2:
	mov r1, r12
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bls _0814A906
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A906
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A8F8 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A8FC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
	b _0814A906
_0814A8F8: .4byte 0x00007FFF
_0814A8FC:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x09
	bl sub_814B4C8
_0814A906:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A910
sub_814A910:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814A946
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814B4F4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A942
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x01
	bl sub_814B4C8
	b _0814A984
_0814A942:
	movs r0, #0x28
	b _0814A948
_0814A946:
	subs r0, #0x01
_0814A948:
	strh r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A984
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
_0814A984:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A98C
sub_814A98C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A9CC
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A9C8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A9C6
	b _0814AABC
_0814A9C6:
	b _0814A9EA
_0814A9C8: .4byte 0x00007FFF
_0814A9CC:
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A9F8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A9FC
_0814A9EA:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x09
	bl sub_814B4C8
	b _0814AAD2
	.byte 0x00, 0x00
_0814A9F8: .4byte 0x00007FFF
_0814A9FC:
	ldr r1, _0814AA34 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	beq _0814AA38
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x08
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0814AA38
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814B4F4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AA38
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x02
	bl sub_814B4C8
	b _0814AAD2
_0814AA34: .4byte 0x00000246
_0814AA38:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	subs r2, #0x20
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r7, [r0, #0x28]
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814AA78
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r1, r0, #0x08
	b _0814AA7A
_0814AA78:
	movs r1, #0xFF
_0814AA7A:
	movs r0, #0x00
	strb r1, [r5, #0x02]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r3, sp
	strb r0, [r3, #0x00]
	adds r0, r5, #0x0
	adds r3, r7, #0x0
	bl sub_813A284
	ldr r1, _0814AAC8 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r2, [r5, #0x0C]
	adds r2, r2, r0
	adds r1, #0x02
	adds r0, r5, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r3, [r5, #0x10]
	adds r3, r3, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AACC
_0814AABC:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_814B4C8
	b _0814AAD2
_0814AAC8: .4byte 0x00000242
_0814AACC:
	adds r0, r5, #0x0
	bl sub_813B650
_0814AAD2:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814AADC
sub_814AADC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r12, r0
	ldr r2, _0814AB18 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0814AB66
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0814AB1C
	ldr r0, [r4, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	b _0814AB22
	.byte 0x00, 0x00
_0814AB18: .4byte 0x000002DE
_0814AB1C:
	ldr r0, [r4, #0x0C]
	ldr r1, _0814ABA0 @ =0xFFFFFC00
	adds r0, r0, r1
_0814AB22:
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	subs r1, r1, r0
	ldr r2, _0814ABA4 @ =0x00000242
	adds r0, r4, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	ldr r1, _0814ABA8 @ =0x000002DE
	adds r0, r4, r1
	strh r2, [r0, #0x00]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	add r2, r12
	ldrh r1, [r2, #0x00]
	ldr r0, _0814ABAC @ =0x0000FFFE
	cmp r1, r0
	bhi _0814AB4A
	adds r0, r1, #0x1
	strh r0, [r2, #0x00]
_0814AB4A:
	movs r3, #0xBF
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0814AB66:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r0, #0x1D
	bls _0814AB96
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814AB96
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x0D
	bl sub_814B4C8
_0814AB96:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814ABA0: .4byte 0xFFFFFC00
_0814ABA4: .4byte 0x00000242
_0814ABA8: .4byte 0x000002DE
_0814ABAC: .4byte 0x0000FFFE
	thumb_func_start sub_814ABB0
sub_814ABB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0814AC50
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldr r0, [r4, #0x14]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	subs r1, #0xDC
	strh r1, [r0, #0x00]
	ldr r3, _0814AC3C @ =0x0000023E
	adds r0, r4, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x01
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r3, _0814AC40 @ =0x03001038
	ldr r0, _0814AC44 @ =0x0819832C
	ldr r2, _0814AC48 @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	asrs r0, r1, #0x01
	ldr r3, _0814AC4C @ =0xFFFC0000
	adds r0, r0, r3
	bl _call_via_r2
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r4, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AC34
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AC34:
	movs r0, #0x01
	strh r0, [r5, #0x00]
	b _0814AD16
	.byte 0x00, 0x00
_0814AC3C: .4byte 0x0000023E
_0814AC40: .4byte 0x03001038
_0814AC44: .4byte 0x0819832C
_0814AC48: .4byte 0x08198220
_0814AC4C: .4byte 0xFFFC0000
_0814AC50:
	cmp r0, #0x01
	bne _0814AD16
	ldr r6, _0814ACFC @ =0x03001038
	ldr r1, _0814AD00 @ =0x0819832C
	ldr r0, _0814AD04 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	subs r3, #0x10
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814ACA2
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814ACA2:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r4, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814AD16
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814AD16
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r3, _0814AD08 @ =0x0000020F
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AD0C
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814AD16
_0814ACFC: .4byte 0x03001038
_0814AD00: .4byte 0x0819832C
_0814AD04: .4byte 0x08198220
_0814AD08: .4byte 0x0000020F
_0814AD0C:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
_0814AD16:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814AD24
sub_814AD24:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	adds r7, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r7, r1
	cmp r2, #0x00
	bne _0814AD98
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xE9
	lsls r6, r6, #0x01
	adds r1, r7, r6
	movs r0, #0x50
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x30]
	adds r0, r7, #0x0
	mov r2, r9
	bl sub_813A5C8
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AD94 @ =0x0814A911
	b _0814B020
_0814AD94: .4byte sub_814A910
_0814AD98:
	cmp r2, #0x01
	bne _0814ADB8
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814ADB4 @ =0x0814A98D
	b _0814B020
_0814ADB4: .4byte sub_814A98C
_0814ADB8:
	cmp r2, #0x02
	bne _0814ADCC
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814ADC8 @ =0x0814A619
	b _0814B020
	.byte 0x00, 0x00
_0814ADC8: .4byte sub_814A618
_0814ADCC:
	cmp r2, #0x04
	beq _0814ADD2
	b _0814AF2C
_0814ADD2:
	movs r4, #0xB0
	lsls r4, r4, #0x03
	mov r9, r4
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	ldr r1, [r4, #0x00]
	ldr r3, [r1, #0x0C]
	ldr r5, _0814AF00 @ =0x00000242
	adds r0, r1, r5
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x0C]
	subs r3, r3, r0
	adds r5, r7, r5
	strh r3, [r5, #0x00]
	ldr r3, [r1, #0x10]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r1, r4
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x10]
	subs r3, r3, r0
	adds r4, r7, r4
	strh r3, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_813B178
	ldr r0, _0814AF04 @ =0x03001038
	mov r8, r0
	ldr r6, _0814AF08 @ =0x0819832C
	ldr r0, _0814AF0C @ =0x08198220
	subs r6, r6, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r6
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r5, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r4, #0x00]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r3, r7, r2
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r4, #0xA0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	adds r2, r2, r6
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	movs r1, #0x01
	bl _call_via_r2
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	str r0, [r1, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r9
	strh r4, [r0, #0x00]
	adds r2, #0x7E
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r1, r1, #0x01
	add r1, r9
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	asrs r0, r1, #0x01
	ldr r4, _0814AF10 @ =0xFFE1C000
	adds r0, r0, r4
	bl _call_via_r2
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r1, r7, r6
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AED0
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AED0:
	ldr r0, _0814AF14 @ =0x0000020F
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r10
	adds r1, r7, #0x0
	movs r2, #0x04
	bl sub_814B038
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x13
	bls _0814AF1C
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AF18 @ =0x0814A6C5
	b _0814B020
_0814AF00: .4byte 0x00000242
_0814AF04: .4byte 0x03001038
_0814AF08: .4byte 0x0819832C
_0814AF0C: .4byte 0x08198220
_0814AF10: .4byte 0xFFE1C000
_0814AF14: .4byte 0x0000020F
_0814AF18: .4byte sub_814A6C4
_0814AF1C:
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF28 @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AF28: .4byte sub_814B530
_0814AF2C:
	cmp r2, #0x07
	bne _0814AF4C
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AF48 @ =0x0814A815
	b _0814B020
_0814AF48: .4byte sub_814A814
_0814AF4C:
	cmp r2, #0x09
	bne _0814AF90
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r2, [r0, #0x00]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF8C @ =0x0814B5D1
	b _0814B020
_0814AF8C: .4byte sub_814B5D0
_0814AF90:
	cmp r2, #0x0A
	bne _0814AFCC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	movs r4, #0xE9
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strh r0, [r1, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AFC4 @ =0x0813B1E9
	str r0, [r1, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AFC8 @ =0x0814A911
	b _0814B020
	.byte 0x00, 0x00
_0814AFC4: .4byte sub_813B1E8
_0814AFC8: .4byte sub_814A910
_0814AFCC:
	cmp r2, #0x0B
	bne _0814AFE0
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AFDC @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AFDC: .4byte sub_814B530
_0814AFE0:
	cmp r2, #0x0C
	bne _0814B004
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xD0
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r0, _0814B000 @ =0x0814AADD
	b _0814B020
	.byte 0x00, 0x00
_0814B000: .4byte sub_814AADC
_0814B004:
	cmp r0, #0x0D
	bne _0814B022
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814B034 @ =0x0814ABB1
_0814B020:
	str r0, [r1, #0x00]
_0814B022:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B034: .4byte sub_814ABB0
	thumb_func_start sub_814B038
sub_814B038:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, r5, #0x0
	adds r4, #0x58
	cmp r2, #0x00
	bne _0814B092
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B436
_0814B092:
	cmp r2, #0x01
	bne _0814B0F4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x20
	movs r1, #0x30
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r3, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r3, #0x0
	orrs r0, r1
	cmp r0, #0x00
	bne _0814B0E2
	b _0814B352
_0814B0E2:
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	b _0814B348
_0814B0F4:
	cmp r2, #0x02
	bne _0814B136
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x31
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	b _0814B3D8
_0814B136:
	cmp r2, #0x03
	bne _0814B19C
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0814B180
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	b _0814B18A
_0814B180:
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814B18A:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	b _0814B3D6
_0814B19C:
	cmp r2, #0x04
	bne _0814B20A
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0814B1F2
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	b _0814B1FC
_0814B1F2:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814B1FC:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	b _0814B436
_0814B20A:
	cmp r2, #0x05
	bne _0814B210
	b _0814B436
_0814B210:
	cmp r2, #0x06
	bne _0814B246
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x07
	movs r2, #0x00
	b _0814B3D6
_0814B246:
	cmp r2, #0x07
	bne _0814B280
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x08
	movs r2, #0x00
	b _0814B3D6
_0814B280:
	cmp r2, #0x08
	bne _0814B2BA
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r2, #0x00
	b _0814B3D6
_0814B2BA:
	cmp r2, #0x09
	bne _0814B35E
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r0, r5, r3
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
	beq _0814B2EE
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814B2F0
_0814B2EE:
	movs r0, #0xFF
_0814B2F0:
	strb r0, [r5, #0x02]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
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
	movs r1, #0xC2
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	movs r3, #0xC4
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B352
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
_0814B348:
	asrs r0, r0, #0x0D
	movs r1, #0x07
	ands r0, r1
	asrs r1, r0, #0x01
	b _0814B354
_0814B352:
	movs r1, #0x00
_0814B354:
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	b _0814B436
_0814B35E:
	cmp r2, #0x0A
	bne _0814B3E4
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
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
	ldr r1, _0814B3BC @ =0x00000242
	adds r3, r5, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B3C0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0814B3C4
	.byte 0x00, 0x00
_0814B3BC: .4byte 0x00000242
_0814B3C0:
	movs r3, #0x01
	negs r3, r3
_0814B3C4:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r3, #0x0
_0814B3D6:
	movs r3, #0x00
_0814B3D8:
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	b _0814B436
_0814B3E4:
	cmp r2, #0x0B
	beq _0814B436
	cmp r2, #0x0C
	beq _0814B436
	cmp r2, #0x0D
	bne _0814B436
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x11
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
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
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
_0814B436:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B440
sub_814B440:
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	cmp r2, #0x00
	bne _0814B456
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x50
	b _0814B4C0
_0814B456:
	cmp r2, #0x01
	bne _0814B464
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x41
	b _0814B4C0
_0814B464:
	cmp r2, #0x02
	bne _0814B472
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B472:
	cmp r2, #0x03
	beq _0814B4C2
	cmp r2, #0x04
	bne _0814B48A
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B4C2
_0814B48A:
	cmp r2, #0x05
	beq _0814B4C2
	cmp r2, #0x06
	beq _0814B4C2
	cmp r2, #0x07
	bne _0814B4A0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B4A0:
	cmp r0, #0x08
	beq _0814B4C2
	cmp r0, #0x09
	beq _0814B4C2
	cmp r0, #0x0A
	beq _0814B4C2
	cmp r0, #0x0B
	beq _0814B4C2
	cmp r0, #0x0C
	beq _0814B4C2
	cmp r0, #0x0D
	bne _0814B4C2
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x00
_0814B4C0:
	strh r0, [r1, #0x00]
_0814B4C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B4C8
sub_814B4C8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	adds r2, r5, #0x0
	bl sub_814B440
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814AD24
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814B038
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B4F4
sub_814B4F4:
	push {r4, r5, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	add r0, sp, #0x004
	movs r2, #0x24
	movs r3, #0x0A
	bl sub_8139CAC
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	movs r0, #0x30
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x30
	bl sub_80FBB50
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0814B526
	movs r1, #0x01
_0814B526:
	adds r0, r1, #0x0
	add sp, #0x014
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_814B530
sub_814B530:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0x0
	ldr r6, _0814B5C4 @ =0x03001038
	ldr r1, _0814B5C8 @ =0x0819832C
	ldr r0, _0814B5CC @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0814B58A
	adds r0, r4, #0x0
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	bl _call_via_r2
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	str r1, [r5, #0x18]
_0814B58A:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814B5B8
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0814B5B8
	movs r0, #0x00
	str r0, [r5, #0x18]
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
_0814B5B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B5C4: .4byte 0x03001038
_0814B5C8: .4byte 0x0819832C
_0814B5CC: .4byte 0x08198220
	thumb_func_start sub_814B5D0
sub_814B5D0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B5EC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
_0814B5EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x1D, 0x48, 0x2A, 0x18, 0x10, 0x78, 0x10, 0x21
	.byte 0x08, 0x43, 0x10, 0x70, 0x28, 0x1C, 0xEE, 0xF7, 0x4A, 0xFA, 0x19, 0x48, 0x2A, 0x18, 0x11, 0x78
	.byte 0x05, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xEE, 0x22, 0x52, 0x00, 0xA9, 0x18, 0xE8, 0x68
	.byte 0x08, 0x60, 0xF0, 0x20, 0x40, 0x00, 0x29, 0x18, 0x28, 0x69, 0x08, 0x60, 0x08, 0x32, 0xA9, 0x18
	.byte 0x68, 0x69, 0x08, 0x60, 0xF4, 0x20, 0x40, 0x00, 0x29, 0x18, 0xA8, 0x69, 0x08, 0x60, 0x20, 0x1C
	.byte 0x29, 0x1C, 0x00, 0x22, 0xFF, 0xF7, 0x3F, 0xFF, 0xCC, 0x22, 0x52, 0x00, 0xA9, 0x18, 0x09, 0x48
	.byte 0x08, 0x60, 0x4E, 0xF0, 0x6C, 0xFC, 0x01, 0x1C, 0x04, 0x20, 0x92, 0xF0, 0x8E, 0xF8, 0xE8, 0x22
	.byte 0x52, 0x00, 0xA9, 0x18, 0x08, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x3E, 0x03
	.byte 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00, 0x81, 0xB3, 0x13, 0x08
	thumb_func_start sub_814B67C
sub_814B67C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	adds r0, #0x50
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _0814B6C4 @ =0x0000020E
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0814B6C8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x0C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B6C4: .4byte 0x0000020E
_0814B6C8: .4byte sub_813B1E8
	thumb_func_start sub_814B6CC
sub_814B6CC:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r0, #0xF2
	lsls r0, r0, #0x01
	add r0, r12
	movs r1, #0xF4
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0814B72C @ =0x0814A429
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B72C: .4byte sub_814A428
	thumb_func_start sub_814B730
sub_814B730:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	ldr r5, _0814B798 @ =0xFFFFD000
	adds r0, r0, r5
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814B79C @ =0x0814B7A5
	str r0, [r2, #0x00]
	ldr r0, _0814B7A0 @ =0x0814A185
	str r0, [r2, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B798: .4byte 0xFFFFD000
_0814B79C: .4byte sub_814B7A4
_0814B7A0: .4byte sub_814A184
