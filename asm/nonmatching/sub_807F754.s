	.syntax unified
	.text

	thumb_func_start sub_807F754
sub_807F754:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r3, r2, #0x0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0807F79C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0xFF
	str r1, [sp, #0x000]
	ldr r1, _0807F7A0 @ =0x0300034C
	ldrh r2, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x07
	ands r1, r2
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_81151E4
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_0807F79C: .4byte 0x03000FD8
_0807F7A0: .4byte 0x0300034C
