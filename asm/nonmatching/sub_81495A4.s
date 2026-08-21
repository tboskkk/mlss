	.syntax unified
	.text

	thumb_func_start sub_81495A4
sub_81495A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	beq _081495F4
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _08149650
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _08149650
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149650
	ldr r0, _081495F0 @ =0x08149661
	b _08149652
_081495F0: .4byte sub_8149660
_081495F4:
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149614
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08149654
_08149614:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xB4
	lsls r1, r1, #0x06
	adds r0, r0, r1
	cmp r2, r0
	bgt _08149654
	movs r2, #0xEC
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _08149650
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _08149650
	ldr r0, _0814964C @ =0x08149661
	b _08149652
_0814964C: .4byte sub_8149660
_08149650:
	ldr r0, _0814965C @ =0x0814BC69
_08149652:
	str r0, [r6, #0x00]
_08149654:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814965C: .4byte sub_814BC68
