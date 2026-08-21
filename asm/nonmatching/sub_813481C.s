	.syntax unified
	.text

	thumb_func_start sub_813481C
sub_813481C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x0C]
	cmp r3, #0x00
	beq _08134894
	movs r6, #0x00
	ldr r1, _08134848 @ =0x08212548
	ldr r2, [r4, #0x34]
	movs r5, #0x00
	ldr r0, [r1, #0x00]
	cmp r2, r0
	bge _0813484C
	adds r0, r3, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x04]
	cmp r0, r1
	beq _08134880
	str r6, [sp, #0x000]
	b _08134874
	.byte 0x00, 0x00
_08134848: .4byte 0x08212548
_0813484C:
	movs r6, #0x01
	ldr r0, [r1, #0x08]
	cmp r2, r0
	bge _0813485E
	adds r0, r3, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x0C]
	b _0813486E
_0813485E:
	movs r6, #0x02
	ldr r0, [r1, #0x10]
	cmp r2, r0
	bge _08134888
	adds r0, r3, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x14]
_0813486E:
	cmp r0, r1
	beq _08134880
	str r5, [sp, #0x000]
_08134874:
	adds r0, r3, #0x0
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
_08134880:
	ldr r0, [r4, #0x0C]
	bl sprite_show_8020CBC
	b _0813488A
_08134888:
	movs r6, #0x03
_0813488A:
	cmp r6, #0x02
	ble _08134894
	ldr r0, [r4, #0x0C]
	bl sprite_hide_8021F20
_08134894:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
