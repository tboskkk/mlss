	.syntax unified
	.text

	thumb_func_start sub_819B418
sub_819B418:
	push {r4, r5, lr}
	ldr r4, _0819B448 @ =0x03007FF0
	ldr r2, [r4, #0x00]
	ldr r3, _0819B44C @ =0x00000492
	adds r1, r2, r3
	movs r5, #0x00
	ldsh r1, [r1, r5]
	lsls r1, r1, #0x01
	movs r5, #0x90
	lsls r5, r5, #0x03
	adds r2, r2, r5
	adds r2, r2, r1
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, r2, r3
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	movs r1, #0x07
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
_0819B448: .4byte 0x03007FF0
_0819B44C: .4byte 0x00000492
