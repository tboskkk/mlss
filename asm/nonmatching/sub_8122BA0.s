	.syntax unified
	.text

	thumb_func_start sub_8122BA0
sub_8122BA0:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	cmp r5, #0x00
	bne _08122BD4
	movs r0, #0x98
	lsls r0, r0, #0x02
	ldr r4, _08122BD0 @ =0x08202F70
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x02
	negs r1, r1
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r1, #0x08
	adds r2, r4, #0x0
	adds r3, r6, #0x0
	bl sub_8117C9C
	b _08122BF0
_08122BD0: .4byte 0x08202F70
_08122BD4:
	movs r0, #0x94
	lsls r0, r0, #0x01
	ldr r4, _08122BF8 @ =0x08202F78
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r3, #0x02
	negs r3, r3
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_8127EF8
_08122BF0:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08122BF8: .4byte 0x08202F78
