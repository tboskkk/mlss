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
