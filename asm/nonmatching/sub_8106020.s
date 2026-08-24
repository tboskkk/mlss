	.syntax unified
	.text

	thumb_func_start sub_8106020
sub_8106020:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r2, #0x10
	ldsh r1, [r7, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _0810603E
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _081060D2
_0810603E:
	ldr r0, _081060E0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x08]
	ldr r1, _081060E4 @ =0x00008004
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	mov r2, r9
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08106086
	adds r0, #0xFF
_08106086:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08106096
	adds r1, #0xFF
_08106096:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _081060E8 @ =0x083B950C
	ldrb r0, [r0, #0x00]
	strh r0, [r7, #0x10]
	ldr r0, _081060EC @ =0x081060F1
	str r0, [r7, #0x04]
	movs r0, #0x28
	mov r1, r9
	bl play_sfx_80195B4
_081060D2:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081060E0: .4byte 0x03000FD8
_081060E4: .4byte 0x00008004
_081060E8: .4byte byte_83B950C @ =0x083B950C
_081060EC: .4byte sub_81060F0
