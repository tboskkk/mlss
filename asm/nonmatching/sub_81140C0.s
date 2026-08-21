	.syntax unified
	.text

	thumb_func_start sub_81140C0
sub_81140C0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r4, [r0, #0x30]
	movs r0, #0x1C
	ldsh r1, [r4, r0]
	movs r0, #0x1E
	ldsh r2, [r4, r0]
	movs r0, #0x20
	ldsh r3, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, _0811410C @ =0x08114529
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811410C: .4byte sub_8114528
