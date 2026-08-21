	.syntax unified
	.text

	thumb_func_start sub_813321C
sub_813321C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	ldr r0, [r2, #0x40]
	ldr r3, _08133264 @ =0xFFFFF600
	adds r0, r0, r3
	cmp r1, r0
	bgt _0813325C
	adds r0, r2, #0x0
	adds r0, #0x08
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x28]
	ldr r0, _08133268 @ =0x081332BD
	str r0, [r1, #0x54]
	adds r0, r4, #0x0
	bl sub_807C298
_0813325C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133264: .4byte 0xFFFFF600
_08133268: .4byte sub_81332BC
