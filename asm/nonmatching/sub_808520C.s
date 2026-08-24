	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r7, r2, #0x0
	mov r8, r3
	ldr r0, [sp, #0x024]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp, #0x020]
	cmp r2, #0x00
	beq _08085252
	lsls r4, r1, #0x02
	adds r4, r4, r1
	lsls r4, r4, #0x02
	adds r4, r5, r4
	lsrs r2, r0, #0x1C
	adds r0, r5, #0x0
	bl sub_80846A4
	ldr r0, [r4, #0x0C]
	ldrb r1, [r4, #0x02]
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	mov r4, r8
	lsls r3, r4, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [sp, #0x020]
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	bl sub_8083860
_08085252:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
