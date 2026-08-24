	.syntax unified
	.text

	thumb_func_start sub_807B838
sub_807B838:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r2, _0807B858 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	lsls r1, r5, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807B85C
	movs r0, #0x00
	b _0807B8BC
_0807B858: .4byte 0x03000FD8
_0807B85C:
	cmp r6, #0x00
	blt _0807B880
	adds r1, r0, #0x0
	adds r1, #0xF0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0807B880
	cmp r4, #0x00
	beq _0807B880
	ldrh r0, [r0, #0x24]
	ldrh r4, [r3, #0x16]
	adds r0, r0, r4
	strh r0, [r3, #0x16]
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
_0807B880:
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x1C]
	ldrb r0, [r0, #0x01]
	lsls r4, r0, #0x01
	adds r4, r4, r0
	lsls r4, r4, #0x03
	lsls r0, r5, #0x02
	ldr r1, _0807B8C4 @ =0x08502B14
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x16
	asrs r2, r2, #0x16
	ldr r3, [r4, #0x00]
	lsls r3, r3, #0x0C
	asrs r3, r3, #0x16
	ldrh r0, [r4, #0x02]
	lsls r0, r0, #0x12
	asrs r0, r0, #0x16
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_807AFD4
_0807B8BC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807B8C4: .4byte 0x08502B14
