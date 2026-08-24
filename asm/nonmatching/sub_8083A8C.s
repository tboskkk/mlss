	.syntax unified
	.text

	thumb_func_start sub_8083A8C
sub_8083A8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08083AAA
	b _08083C60
_08083AAA:
	ldr r3, [r2, #0x28]
	cmp r3, #0x00
	bne _08083AB2
	b _08083C60
_08083AB2:
	ldr r6, [r2, #0x08]
	cmp r6, #0x00
	bne _08083ABA
	b _08083C60
_08083ABA:
	ldrb r0, [r6, #0x1E]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x01
	bne _08083B5C
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	mov r12, r0
	cmp r1, r12
	bne _08083AD8
	movs r5, #0x00
_08083AD8:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08083AE2
	movs r5, #0x4D
_08083AE2:
	ldr r1, _08083B54 @ =0x0838F776
	lsls r0, r5, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r5, [r0, r1]
	cmp r5, #0x00
	bge _08083AF2
	b _08083C60
_08083AF2:
	lsls r0, r4, #0x03
	adds r0, r0, r4
	ldr r3, _08083B58 @ =0x0838F426
	adds r0, r0, r3
	adds r3, r5, r0
	movs r0, #0x44
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x45
	adds r1, r1, r2
	mov r9, r1
	movs r0, #0x46
	adds r0, r0, r2
	mov r10, r0
	adds r1, r2, #0x0
	adds r1, #0x47
	str r1, [sp, #0x000]
	adds r0, r2, #0x0
	adds r0, #0x48
	str r0, [sp, #0x004]
	adds r2, #0x49
	str r2, [sp, #0x008]
	cmp r4, #0x00
	bne _08083BD8
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r1, r6, #0x0
	adds r1, #0x23
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08083BD8
	cmp r0, r12
	beq _08083BD8
	adds r7, r1, #0x0
	ldr r2, _08083B58 @ =0x0838F426
	adds r1, r5, r2
	adds r2, r1, #0x0
_08083B3C:
	adds r1, #0x09
	adds r2, #0x09
	adds r4, #0x01
	adds r3, r2, #0x0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, r7
	beq _08083BD8
	cmp r0, r12
	bne _08083B3C
	b _08083BD8
	.byte 0x00, 0x00
_08083B54: .4byte 0x0838F776
_08083B58: .4byte 0x0838F426
_08083B5C:
	cmp r1, #0x03
	beq _08083B62
	b _08083C60
_08083B62:
	ldr r1, _08083C58 @ =0x0838F44C
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r5, [r0, r3]
	cmp r5, #0x00
	bge _08083B74
	b _08083C60
_08083B74:
	lsls r0, r4, #0x03
	adds r0, r0, r4
	ldr r1, _08083C5C @ =0x0838EC7C
	adds r0, r0, r1
	adds r3, r5, r0
	movs r0, #0x44
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x45
	adds r1, r1, r2
	mov r9, r1
	movs r0, #0x46
	adds r0, r0, r2
	mov r10, r0
	adds r1, r2, #0x0
	adds r1, #0x47
	str r1, [sp, #0x000]
	adds r0, r2, #0x0
	adds r0, #0x48
	str r0, [sp, #0x004]
	adds r2, #0x49
	str r2, [sp, #0x008]
	cmp r4, #0x00
	bne _08083BD8
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r1, r6, #0x0
	adds r1, #0x23
	ldrb r2, [r1, #0x00]
	cmp r0, r2
	beq _08083BD8
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08083BD8
	adds r7, r2, #0x0
	mov r12, r1
	ldr r2, _08083C5C @ =0x0838EC7C
	adds r1, r5, r2
	adds r2, r1, #0x0
_08083BC4:
	adds r1, #0x09
	adds r2, #0x09
	adds r4, #0x01
	adds r3, r2, #0x0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, r7
	beq _08083BD8
	cmp r0, r12
	bne _08083BC4
_08083BD8:
	movs r5, #0x04
	ldsh r1, [r6, r5]
	movs r0, #0x06
	ldsh r2, [r6, r0]
	movs r0, #0x01
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083BEC
	adds r0, #0xFF
_08083BEC:
	asrs r0, r0, #0x08
	mov r5, r8
	strb r0, [r5, #0x00]
	movs r0, #0x02
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083BFE
	adds r0, #0xFF
_08083BFE:
	asrs r0, r0, #0x08
	mov r5, r9
	strb r0, [r5, #0x00]
	movs r0, #0x03
	ldsb r0, [r3, r0]
	muls r0, r2
	cmp r0, #0x00
	bge _08083C10
	adds r0, #0xFF
_08083C10:
	asrs r0, r0, #0x08
	mov r5, r10
	strb r0, [r5, #0x00]
	movs r0, #0x04
	ldsb r0, [r3, r0]
	muls r0, r2
	cmp r0, #0x00
	bge _08083C22
	adds r0, #0xFF
_08083C22:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x000]
	strb r0, [r2, #0x00]
	movs r0, #0x05
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083C34
	adds r0, #0xFF
_08083C34:
	asrs r0, r0, #0x08
	ldr r5, [sp, #0x004]
	strb r0, [r5, #0x00]
	movs r0, #0x06
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083C46
	adds r0, #0xFF
_08083C46:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x008]
	strb r0, [r1, #0x00]
	movs r0, #0x08
	ldsb r0, [r3, r0]
	cmp r0, #0x00
	bne _08083C60
	adds r0, r4, #0x1
	b _08083C64
_08083C58: .4byte 0x0838F44C
_08083C5C: .4byte 0x0838EC7C
_08083C60:
	movs r0, #0x01
	negs r0, r0
_08083C64:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
