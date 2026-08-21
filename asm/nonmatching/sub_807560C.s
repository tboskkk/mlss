	.syntax unified
	.text

	thumb_func_start sub_807560C
sub_807560C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075682
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075682
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807564C
	adds r1, #0xFF
_0807564C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075656
	adds r2, #0xFF
_08075656:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075660
	adds r3, #0xFF
_08075660:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807568C @ =0x00002470
	bl sub_80DF024
	ldr r1, _08075690 @ =0x0000183E
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08075694 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _08075698 @ =0x08075C49
	str r0, [r4, #0x58]
	ldr r0, _0807569C @ =0x08075C11
	str r0, [r4, #0x60]
	ldr r0, _080756A0 @ =0x08075C8D
	str r0, [r4, #0x4C]
_08075682:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807568C: .4byte 0x00002470
_08075690: .4byte 0x0000183E
_08075694: .4byte 0x03000E3C
_08075698: .4byte sub_8075C48
_0807569C: .4byte sub_8075C10
_080756A0: .4byte sub_8075C8C
