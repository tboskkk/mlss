	.syntax unified
	.text

	thumb_func_start sub_807972C
sub_807972C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807974E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_0807974E:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807976A
	adds r0, r5, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079770 @ =0x08079A91
	str r0, [r5, #0x4C]
_0807976A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08079770: .4byte sub_8079A90
