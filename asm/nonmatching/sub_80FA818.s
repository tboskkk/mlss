	.syntax unified
	.text

	thumb_func_start sub_80FA818
sub_80FA818:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	add sp, #-0x00C
	mov r10, r0
	ldr r1, [r2, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	mov r9, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r9
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r0, r10
	ldr r3, [r0, #0x24]
	ldr r6, _080FA89C @ =0x000009A2
	adds r5, r3, r6
	ldrb r4, [r5, #0x00]
	lsls r2, r4, #0x18
	lsrs r1, r2, #0x19
	adds r1, #0x01
	lsls r1, r1, #0x01
	movs r0, #0x01
	mov r8, r0
	movs r0, #0x01
	ands r0, r4
	orrs r0, r1
	strb r0, [r5, #0x00]
	lsrs r2, r2, #0x19
	lsls r2, r2, #0x02
	ldr r0, _080FA8A0 @ =0x00000888
	adds r3, r3, r0
	adds r3, r3, r2
	mov r2, r9
	str r2, [r3, #0x00]
	mov r0, r10
	ldr r1, [r0, #0x24]
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x00
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FA89C: .4byte 0x000009A2
_080FA8A0: .4byte 0x00000888
