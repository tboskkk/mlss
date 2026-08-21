	.syntax unified
	.text

	thumb_func_start sub_81064F8
sub_81064F8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08106530 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x40
	ldrh r0, [r1, #0x00]
	subs r2, r0, #0x1
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08106514
	adds r0, #0xFF
_08106514:
	asrs r0, r0, #0x08
	subs r0, r2, r0
	strh r0, [r1, #0x00]
	ldrh r0, [r4, #0x18]
	adds r0, #0x19
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106534
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _0810655A
_08106530: .4byte 0x03000FD8
_08106534:
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r2, #0xE8
	cmp r0, #0x00
	beq _08106548
	movs r2, #0xFA
_08106548:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	movs r0, #0x28
	strh r0, [r4, #0x10]
	ldr r0, _08106560 @ =0x08106651
	str r0, [r4, #0x04]
_0810655A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08106560: .4byte sub_8106650
