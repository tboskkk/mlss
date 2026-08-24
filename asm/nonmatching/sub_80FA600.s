	.syntax unified
	.text

	thumb_func_start sub_80FA600
sub_80FA600:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r6, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r7, #0x00
	mov r9, r7
	movs r0, #0x00
	mov r8, r0
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080FA658
	ldr r0, [r6, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x06
	adds r1, r0, r1
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	bge _080FA642
	adds r0, #0xFF
_080FA642:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bge _080FA64E
	adds r0, #0xFF
_080FA64E:
	asrs r0, r0, #0x08
	adds r1, #0x3D
	ldrb r1, [r1, #0x00]
	subs r0, r0, r1
	mov r9, r0
_080FA658:
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x04]
	cmp r0, #0xFF
	bne _080FA668
	ldr r0, _080FA6B8 @ =0x083B950C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	str r0, [r5, #0x14]
_080FA668:
	ldr r0, [r6, #0x20]
	ldrb r1, [r5, #0x00]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r5, #0x08]
	movs r7, #0x0C
	ldsh r4, [r5, r7]
	str r4, [sp, #0x000]
	movs r7, #0x10
	ldsh r4, [r5, r7]
	str r4, [sp, #0x004]
	ldrb r4, [r5, #0x14]
	str r4, [sp, #0x008]
	bl sub_80E8878
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x3F
	beq _080FA6A6
	ldr r0, [r6, #0x20]
	lsls r1, r2, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x08]
	mov r7, r9
	strh r7, [r0, #0x0A]
	ldr r0, [r6, #0x20]
	adds r1, r2, #0x0
	bl sub_80E8E78
_080FA6A6:
	movs r0, #0x01
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FA6B8: .4byte 0x083B950C
