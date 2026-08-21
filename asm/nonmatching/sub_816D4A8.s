	.syntax unified
	.text

	thumb_func_start sub_816D4A8
sub_816D4A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0x68
	ldrh r1, [r4, #0x00]
	cmp r1, #0x01
	beq _0816D4D6
	cmp r1, #0x01
	bgt _0816D4C2
	cmp r1, #0x00
	beq _0816D4CC
	b _0816D528
_0816D4C2:
	cmp r1, #0x02
	beq _0816D4E4
	cmp r1, #0x03
	beq _0816D518
	b _0816D528
_0816D4CC:
	ldr r0, [r5, #0x40]
	str r1, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x00
	b _0816D502
_0816D4D6:
	ldr r0, [r5, #0x40]
	bl sub_81631DC
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816D528
	b _0816D508
_0816D4E4:
	ldr r0, _0816D510 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0816D528
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x37
	bl play_sfx_80195B4
	ldr r0, [r5, #0x40]
	ldr r2, _0816D514 @ =0xFFFF6000
	movs r1, #0x00
	str r1, [sp, #0x000]
_0816D502:
	movs r3, #0x14
	bl sub_8163238
_0816D508:
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	b _0816D528
_0816D510: .4byte 0x0300034C
_0816D514: .4byte 0xFFFF6000
_0816D518:
	ldr r0, [r5, #0x40]
	bl sub_81631DC
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816D528
	ldr r0, [r5, #0x58]
	str r0, [r5, #0x54]
_0816D528:
	ldr r0, [r5, #0x40]
	bl sub_8162F20
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
