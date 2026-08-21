	.syntax unified
	.text

	thumb_func_start sub_81066DC
sub_81066DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _081066F0
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106714
_081066F0:
	ldr r0, _0810671C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r1, r2
	adds r2, #0x04
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	bne _08106714
	bl sub_807F6D0
	movs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r0, _08106720 @ =0x081063A9
	str r0, [r4, #0x04]
_08106714:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810671C: .4byte 0x03000FD8
_08106720: .4byte sub_81063A8
