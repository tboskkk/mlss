	.syntax unified
	.text

	thumb_func_start sub_8158F88
sub_8158F88:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r2, r1, #0x0
	ldr r0, _08158FB4 @ =0x00001F28
	adds r1, r3, r0
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, r2
	beq _08158FAC
	strh r2, [r1, #0x00]
	ldr r1, _08158FB8 @ =0x00001F2A
	adds r0, r3, r1
	movs r1, #0x5A
	strh r1, [r0, #0x00]
	subs r1, #0x5B
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08158FAC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158FB4: .4byte 0x00001F28
_08158FB8: .4byte 0x00001F2A
