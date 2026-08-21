	.syntax unified
	.text

	thumb_func_start sub_8147AD4
sub_8147AD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r7, r1, #0x0
	mov r8, r2
	adds r4, r7, #0x0
	adds r4, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x0C]
	subs r2, r1, r0
	movs r3, #0xF0
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08147B1C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08147B1E
_08147B1C:
	movs r0, #0xFF
_08147B1E:
	movs r1, #0x00
	mov r12, r1
	strb r0, [r7, #0x02]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	adds r0, #0x4A
	ldrh r5, [r0, #0x00]
	movs r3, #0xC2
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, [r0, #0x00]
	adds r2, #0x10
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	adds r3, #0x08
	adds r0, r4, r3
	adds r3, #0x04
	adds r4, r4, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	str r5, [sp, #0x000]
	add r0, sp, #0x004
	mov r4, r12
	strb r4, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_813A44C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x46
	ldrb r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _08147B98 @ =0x08148B05
	mov r2, r8
	str r0, [r2, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147B98: .4byte sub_8148B04
