	.syntax unified
	.text

	thumb_func_start sub_81507EC
sub_81507EC:
	ldr r2, _0815080C @ =0x00000242
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r1, #0x0C]
	adds r0, r0, r2
	str r0, [r1, #0x0C]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r1, #0x10]
	adds r0, r0, r2
	str r0, [r1, #0x10]
	bx lr
_0815080C: .4byte 0x00000242
