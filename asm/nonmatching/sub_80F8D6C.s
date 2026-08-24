	.syntax unified
	.text

	thumb_func_start sub_80F8D6C
sub_80F8D6C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r7, [sp, #0x014]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r4, #0x20
	adds r4, r4, r1
	ldr r2, _080F8DA0 @ =0x082001D0
	movs r0, #0x08
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	adds r3, r7, #0x0
	bl sub_80E588C
	str r0, [r4, #0x00]
	bl sub_80E92A8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F8DA0: .4byte dword_82001D0 @ =0x082001D0
