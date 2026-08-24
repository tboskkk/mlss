	.syntax unified
	.text

	thumb_func_start sub_8105E6C
sub_8105E6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r1, #0x10
	ldsh r2, [r7, r1]
	cmp r2, #0x00
	beq _08105E86
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _08105F10
_08105E86:
	ldr r0, _08105F1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x08]
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	str r2, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	bl sub_807BC90
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08105EC4
	adds r0, #0xFF
_08105EC4:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r1, [r4, #0x3C]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08105ED4
	adds r1, #0xFF
_08105ED4:
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
	strh r0, [r5, #0x02]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r5, #0x12]
	ldr r0, _08105F20 @ =0x083B950C
	ldrb r0, [r0, #0x01]
	strh r0, [r7, #0x10]
	ldr r0, _08105F24 @ =0x08106875
	str r0, [r7, #0x04]
	movs r0, #0x29
	mov r1, r8
	bl play_sfx_80195B4
_08105F10:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105F1C: .4byte 0x03000FD8
_08105F20: .4byte byte_83B950C @ =0x083B950C
_08105F24: .4byte sub_8106874
