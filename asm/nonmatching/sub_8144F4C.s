	.syntax unified
	.text

	thumb_func_start sub_8144F4C
sub_8144F4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	bl sub_813B514
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08144F98
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	adds r0, #0xD0
	ldrh r0, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08144FD4 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _08144FD8 @ =0x08144CD5
	str r0, [r6, #0x0C]
_08144F98:
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08144FE0
	movs r0, #0x03
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0x11
	movs r3, #0x1E
	bl sub_8139FB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144FCC
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_81457C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144FE4
	ldr r0, _08144FDC @ =0x08144FF1
	str r0, [r6, #0x00]
_08144FCC:
	mov r1, r8
	ldrh r0, [r1, #0x1C]
	b _08144FE2
	.byte 0x00, 0x00
_08144FD4: .4byte sub_813B1E8
_08144FD8: .4byte sub_8144CD4
_08144FDC: .4byte sub_8144FF0
_08144FE0:
	subs r0, #0x01
_08144FE2:
	strh r0, [r5, #0x00]
_08144FE4:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
