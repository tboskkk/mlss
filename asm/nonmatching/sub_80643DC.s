	.syntax unified
	.text

	thumb_func_start sub_80643DC
sub_80643DC:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _0806441C @ =0xFFFFFDE7
	adds r0, r1, r3
	str r0, [r2, #0x10]
	ldr r4, [r2, #0x18]
	ldr r5, _08064420 @ =0xFFFFFF00
	adds r3, r4, r5
	str r3, [r2, #0x18]
	cmp r0, #0x00
	bge _080643F8
	subs r5, #0x1A
	adds r0, r1, r5
_080643F8:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	ble _08064410
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0806440A
	subs r0, r4, #0x1
_0806440A:
	asrs r0, r0, #0x08
	cmp r0, #0x00
	bgt _08064416
_08064410:
	adds r0, r2, #0x0
	bl sub_807C298
_08064416:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806441C: .4byte 0xFFFFFDE7
_08064420: .4byte 0xFFFFFF00
