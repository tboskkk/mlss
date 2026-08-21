	.syntax unified
	.text

	thumb_func_start sub_8104800
sub_8104800:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r0, _08104880 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08104874
	movs r2, #0x12
	ldsh r5, [r6, r2]
	ldr r1, _08104884 @ =0x03000FF4
	lsls r0, r5, #0x04
	subs r0, r0, r5
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	ldr r0, _08104888 @ =0x03000FDC
	ldr r3, [r0, #0x00]
	ldr r7, _0810488C @ =0x00008E34
	adds r0, r3, r7
	adds r1, #0x30
	ldrb r1, [r1, #0x00]
	subs r7, #0x18
	adds r2, r3, r7
	adds r7, #0x0C
	adds r3, r3, r7
	ldr r7, _08104890 @ =0x00000342
	adds r4, r4, r7
	ldrb r4, [r4, #0x00]
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	bl sub_8104350
	mov r0, r8
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r6, #0x10]
	ldr r0, _08104894 @ =0x08104981
	str r0, [r6, #0x04]
	ldr r0, _08104898 @ =0x00000123
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08104874:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104880: .4byte 0x03000FD8
_08104884: .4byte 0x03000FF4
_08104888: .4byte 0x03000FDC
_0810488C: .4byte 0x00008E34
_08104890: .4byte 0x00000342
_08104894: .4byte sub_8104980
_08104898: .4byte 0x00000123
