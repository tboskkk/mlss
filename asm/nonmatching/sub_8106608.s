	.syntax unified
	.text

	thumb_func_start sub_8106608
sub_8106608:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r0, _0810664C @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x40
	ldrh r0, [r1, #0x00]
	subs r3, r0, #0x1
	movs r5, #0x18
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08106624
	adds r0, #0xFF
_08106624:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x18]
	adds r0, #0x19
	strh r0, [r2, #0x18]
	ldr r0, [r4, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x40
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	bgt _08106644
	strh r3, [r1, #0x00]
	str r3, [r2, #0x04]
_08106644:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810664C: .4byte 0x03000FD8
