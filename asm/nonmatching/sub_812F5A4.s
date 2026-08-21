	.syntax unified
	.text

	thumb_func_start sub_812F5A4
sub_812F5A4:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	ldr r5, _0812F5D4 @ =0x08211B20
	movs r0, #0xC8
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	str r4, [sp, #0x000]
	movs r1, #0x02
	negs r1, r1
	str r1, [sp, #0x004]
	movs r1, #0x08
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_812A9A0
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0812F5D4: .4byte 0x08211B20
