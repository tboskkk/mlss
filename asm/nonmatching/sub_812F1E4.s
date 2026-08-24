	.syntax unified
	.text

	thumb_func_start sub_812F1E4
sub_812F1E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0xC4
	ldrb r0, [r6, #0x00]
	movs r7, #0x7F
	adds r2, r7, #0x0
	ands r2, r0
	adds r3, r4, #0x0
	adds r3, #0xAA
	adds r1, r2, #0x0
	ldrh r0, [r3, #0x00]
	cmp r1, r0
	bcs _0812F22C
	adds r3, #0x0C
	movs r0, #0x03
	strh r0, [r3, #0x00]
	ldr r2, _0812F228 @ =0x083BBDD0
	ldrb r0, [r6, #0x00]
	adds r1, r7, #0x0
	ands r1, r0
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	adds r1, r4, #0x0
	adds r1, #0xB4
	strh r0, [r1, #0x00]
	adds r5, r3, #0x0
	adds r3, r1, #0x0
	b _0812F2D4
_0812F228: .4byte 0x083BBDD0
_0812F22C:
	adds r5, r4, #0x0
	adds r5, #0xAE
	cmp r0, r1
	bhi _0812F280
	ldrh r0, [r3, #0x00]
	ldrh r1, [r5, #0x00]
	adds r0, r0, r1
	cmp r2, r0
	bge _0812F280
	cmp r1, #0x00
	beq _0812F280
	ldr r3, _0812F27C @ =0x083BE67C
	ldr r0, [r4, #0x40]
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x11]
	adds r2, r4, #0x0
	adds r2, #0xB6
	strh r0, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	adds r1, r7, #0x0
	ands r1, r0
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0E]
	adds r1, r4, #0x0
	adds r1, #0xB4
	strh r0, [r1, #0x00]
	adds r5, r2, #0x0
	adds r3, r1, #0x0
	b _0812F2D4
_0812F27C: .4byte 0x083BE67C
_0812F280:
	adds r0, r4, #0x0
	adds r0, #0xAA
	ldrh r0, [r0, #0x00]
	ldrh r1, [r5, #0x00]
	adds r0, r0, r1
	adds r6, r4, #0x0
	adds r6, #0xC4
	ldrb r1, [r6, #0x00]
	movs r7, #0x7F
	adds r2, r7, #0x0
	ands r2, r1
	adds r5, r4, #0x0
	adds r5, #0xB6
	adds r3, r4, #0x0
	adds r3, #0xB4
	cmp r0, r2
	bgt _0812F2D4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bcs _0812F2D4
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812F2D4
	movs r0, #0x03
	strh r0, [r5, #0x00]
	ldr r2, _0812F2F4 @ =0x083BD844
	ldrb r0, [r6, #0x00]
	adds r1, r7, #0x0
	ands r1, r0
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x0E]
	strh r0, [r3, #0x00]
_0812F2D4:
	ldrb r2, [r3, #0x00]
	ldrb r3, [r5, #0x00]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_812EF44
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812F2F4: .4byte 0x083BD844
