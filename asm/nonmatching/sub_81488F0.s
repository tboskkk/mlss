	.syntax unified
	.text

	thumb_func_start sub_81488F0
sub_81488F0:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	ldr r2, _0814892C @ =0x083A05EC
	ldr r1, _08148930 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r5, [r1, #0x00]
	cmp r5, #0x01
	beq _08148964
	cmp r5, #0x01
	bgt _08148934
	cmp r5, #0x00
	beq _0814893E
	b _081489D2
_0814892C: .4byte 0x083A05EC
_08148930: .4byte 0x00000216
_08148934:
	cmp r5, #0x02
	beq _08148984
	cmp r5, #0x03
	beq _081489AA
	b _081489D2
_0814893E:
	ldr r1, [r4, #0x0C]
	ldr r2, _08148960 @ =0x00000276
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	ldr r2, [r4, #0x10]
	subs r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x90
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	b _081489A2
	.byte 0x00, 0x00
_08148960: .4byte 0x00000276
_08148964:
	ldr r1, [r4, #0x0C]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	ldr r2, [r4, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	str r5, [sp, #0x000]
	b _0814899E
_08148984:
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x90
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814899E:
	movs r0, #0x00
	str r0, [sp, #0x004]
_081489A2:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _081489D2
_081489AA:
	ldr r1, [r4, #0x0C]
	ldr r2, _081489DC @ =0xFFFFF600
	adds r1, r1, r2
	ldr r2, [r4, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_081489D2:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081489DC: .4byte 0xFFFFF600
