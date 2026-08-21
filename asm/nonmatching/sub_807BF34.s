	.syntax unified
	.text

	thumb_func_start sub_807BF34
sub_807BF34:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r9, r0
	mov r10, r2
	str r3, [sp, #0x010]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _0807C0C0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0807C0C4 @ =0x00001076
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r3, _0807C0C8 @ =0x03001034
	cmp r0, #0x00
	beq _0807BF7A
	movs r2, #0x06
_0807BF68:
	movs r0, #0xD0
	add r8, r0
	mov r0, r8
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF68
_0807BF7A:
	mov r1, r8
	ldr r7, [r1, #0x08]
	ldr r3, [r3, #0x00]
	movs r0, #0x00
	movs r2, #0xD0
	bl _call_via_r3
	mov r2, r8
	str r7, [r2, #0x08]
	mov r0, r9
	str r0, [r2, #0x28]
	ldr r0, _0807C0CC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r2, #0x00]
	str r2, [r1, #0x78]
	cmp r5, #0x00
	beq _0807C03C
	adds r0, r7, #0x0
	bl sub_807BDDC
	ldrb r1, [r7, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r7, #0x13]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r7, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r6, #0x08
	orrs r0, r6
	strb r0, [r7, #0x13]
	movs r5, #0x00
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r7, #0x0
	bl sub_80842D8
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r7, #0x0
	bl sub_807BC90
	ldrb r1, [r7, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	orrs r0, r6
	subs r1, #0x24
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7, #0x1F]
	movs r0, #0x01
	ldr r1, [sp, #0x038]
	ands r1, r0
	lsls r2, r1, #0x06
	ldrb r1, [r7, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x11]
_0807C03C:
	mov r2, r8
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r10
	lsls r0, r2, #0x08
	mov r1, r8
	str r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r2, [sp, #0x010]
	lsls r0, r2, #0x08
	str r0, [r1, #0x14]
	str r0, [r1, #0x3C]
	ldr r0, [sp, #0x034]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
	str r0, [r1, #0x40]
	adds r1, #0x90
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	mov r3, r8
	adds r3, #0xCC
	mov r0, r9
	cmp r0, #0x00
	beq _0807C0A6
	adds r0, #0xD0
	ldrh r1, [r0, #0x00]
	mov r0, r8
	adds r0, #0xC8
	strh r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0xD4
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	ldrb r2, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r0, r9
	adds r0, #0xD2
	ldrh r0, [r0, #0x00]
	mov r1, r8
	adds r1, #0xCA
	strh r0, [r1, #0x00]
_0807C0A6:
	ldrb r1, [r3, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r3, #0x00]
	mov r0, r8
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807C0C0: .4byte 0x03000FDC
_0807C0C4: .4byte 0x00001076
_0807C0C8: .4byte 0x03001034
_0807C0CC: .4byte 0x03000FD8
