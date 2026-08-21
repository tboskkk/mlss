	.syntax unified
	.text

	thumb_func_start sub_8138E28
sub_8138E28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	str r1, [sp, #0x000]
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	ldr r3, [sp, #0x024]
	ldr r2, [r6, #0x2C]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08138E48
	adds r0, #0xFF
_08138E48:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08138E54
	adds r0, #0xFF
_08138E54:
	asrs r0, r0, #0x08
	mov r9, r0
	ldr r0, [r2, #0x14]
	cmp r0, #0x00
	bge _08138E60
	adds r0, #0xFF
_08138E60:
	asrs r0, r0, #0x08
	mov r12, r0
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r7, r0, #0x08
	adds r1, #0x04
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x08
	mov r10, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08138E80
	adds r0, #0xFF
_08138E80:
	asrs r4, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08138E8A
	adds r0, #0xFF
_08138E8A:
	asrs r5, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08138E94
	adds r0, #0xFF
_08138E94:
	asrs r3, r0, #0x08
	ldr r1, _08138F04 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	bne _08138F08
	movs r6, #0x83
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138F08
	cmp r12, r3
	bne _08138F08
	lsrs r3, r7, #0x01
	mov r0, r8
	subs r1, r0, r3
	subs r1, #0x02
	ldr r2, [sp, #0x000]
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsrs r2, r0, #0x09
	adds r0, r4, r2
	cmp r1, r0
	bgt _08138F08
	mov r1, r8
	adds r0, r1, r3
	adds r0, #0x02
	subs r1, r4, r2
	cmp r0, r1
	blt _08138F08
	mov r2, r9
	mov r3, r10
	subs r0, r2, r3
	subs r0, #0x02
	cmp r0, r5
	bgt _08138F08
	mov r1, r9
	adds r1, #0x02
	ldr r6, [sp, #0x000]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	subs r0, r5, r0
	cmp r1, r0
	blt _08138F08
	movs r0, #0x01
	b _08138F0A
	.byte 0x00, 0x00
_08138F04: .4byte 0x00000246
_08138F08:
	movs r0, #0x00
_08138F0A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
