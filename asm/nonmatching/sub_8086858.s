	.syntax unified
	.text

	thumb_func_start sub_8086858
sub_8086858:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0808686A
	adds r2, #0xFF
_0808686A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08086874
	adds r3, #0xFF
_08086874:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0808687E
	adds r0, #0xFF
_0808687E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r5, r0, #0x0
	lsls r2, r4, #0x01
	ldr r0, _08086958 @ =0x0838F8B4
	adds r2, r2, r0
	adds r3, r5, #0x0
	adds r3, #0x76
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x44
	strb r1, [r0, #0x00]
	ldrh r0, [r2, #0x02]
	adds r1, r5, #0x0
	adds r1, #0x45
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x04]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x06]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	ldrh r1, [r2, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x48
	strb r1, [r0, #0x00]
	ldrh r0, [r2, #0x0A]
	adds r1, r5, #0x0
	adds r1, #0x49
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x3B
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	str r6, [r5, #0x30]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	ldr r3, [r5, #0x08]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	movs r4, #0x01
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r4, _0808695C @ =0x08086961
	str r4, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r5, #0x0
	bl _call_via_r4
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x58]
	str r0, [r6, #0x58]
	ldr r0, [r5, #0x5C]
	str r0, [r6, #0x5C]
	ldr r0, [r5, #0x60]
	str r0, [r6, #0x60]
	ldr r0, [r5, #0x64]
	str r0, [r6, #0x64]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08086958: .4byte dword_838F8B4 @ =0x0838F8B4
_0808695C: .4byte sub_8086960
