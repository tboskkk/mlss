	.syntax unified
	.text

	thumb_func_start sub_80761AC
sub_80761AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080761E0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r2, #0x00
	bl sub_8082D00
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080761DA
	ldr r0, _080761E4 @ =0x080752BD
	str r0, [r4, #0x4C]
_080761DA:
	pop {r4}
	pop {r0}
	bx r0
_080761E0: .4byte 0x03000FD8
_080761E4: .4byte sub_80752BC
