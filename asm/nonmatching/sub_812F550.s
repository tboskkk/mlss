	.syntax unified
	.text

	thumb_func_start sub_812F550
sub_812F550:
	push {lr}
	add sp, #-0x010
	ldr r1, _0812F57C @ =0x0300034C
	ldr r2, _0812F580 @ =0x00000884
	adds r1, r1, r2
	movs r2, #0x01
	negs r2, r2
	str r2, [r1, #0x00]
	ldr r0, [r0, #0x20]
	ldr r1, _0812F584 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	add sp, #0x010
	pop {r0}
	bx r0
_0812F57C: .4byte 0x0300034C
_0812F580: .4byte 0x00000884
_0812F584: .4byte 0x0000FFFF
