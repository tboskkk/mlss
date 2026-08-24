	.syntax unified
	.text

	thumb_func_start sub_80ED90C
sub_80ED90C:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r2, #0x0
	ldr r2, _080ED998 @ =0x03000FF8
	ldm r5!, {r1}
	lsls r1, r1, #0x03
	ldr r4, [r2, #0x00]
	adds r4, r4, r1
	ldr r0, [r0, #0x14]
	movs r1, #0x93
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _080ED99C @ =0x083D6C58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x03]
	lsls r0, r0, #0x08
	ldrb r1, [r2, #0x02]
	orrs r0, r1
	subs r2, r2, r0
	ldm r5!, {r0}
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldm r5!, {r1}
	add r0, sp, #0x004
	strb r1, [r0, #0x00]
	ldrh r2, [r4, #0x00]
	lsrs r0, r2, #0x0C
	subs r0, #0x01
	ldr r1, _080ED9A0 @ =0x00000FFF
	ands r1, r2
	add r2, sp, #0x004
	ldrb r2, [r2, #0x00]
	mov r6, sp
	adds r6, #0x05
	str r6, [sp, #0x000]
	add r3, sp, #0x004
	bl sub_803FDBC
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	strb r0, [r4, #0x02]
	ldm r5!, {r0}
	strb r0, [r4, #0x03]
	ldm r5!, {r0}
	strb r0, [r4, #0x04]
	ldr r1, [r5, #0x00]
	ldrb r0, [r6, #0x00]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	ldrb r2, [r4, #0x05]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x05]
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080ED998: .4byte 0x03000FF8
_080ED99C: .4byte dword_83D6C58 @ =0x083D6C58
_080ED9A0: .4byte 0x00000FFF
