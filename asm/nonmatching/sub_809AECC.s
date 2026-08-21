	.syntax unified
	.text

	thumb_func_start sub_809AECC
sub_809AECC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _0809AF58 @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldr r2, [r7, #0x34]
	mov r8, r2
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0809AF38
	mov r0, r8
	ldrb r5, [r0, #0x01]
	ldrb r6, [r0, #0x02]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r5
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r6
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_80880C4
_0809AF38:
	mov r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
	ldr r0, _0809AF5C @ =0x0809AB49
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809AF58: .4byte 0x03000FD8
_0809AF5C: .4byte sub_809AB48
