	.syntax unified
	.text

	thumb_func_start sub_808A7B0
sub_808A7B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0808A7CA
	b _0808A8D6
_0808A7CA:
	adds r0, r7, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808A8E4 @ =0x0808C0C1
	str r0, [r7, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _0808A7EC
	adds r1, #0xFF
_0808A7EC:
	asrs r1, r1, #0x08
	mov r9, r1
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _0808A7F8
	adds r2, #0xFF
_0808A7F8:
	asrs r2, r2, #0x08
	mov r8, r2
	ldr r4, [r7, #0x18]
	cmp r4, #0x00
	bge _0808A804
	adds r4, #0xFF
_0808A804:
	asrs r4, r4, #0x08
	ldr r5, [r7, #0x2C]
	ldr r0, [r7, #0x28]
	ldr r1, _0808A8E8 @ =0x00004068
	mov r2, r9
	subs r2, #0x0A
	adds r3, r4, #0x0
	adds r3, #0x28
	str r3, [sp, #0x000]
	movs r3, #0x01
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	mov r3, r8
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r0, _0808A8EC @ =0x00000C52
	str r7, [sp, #0x000]
	mov r1, r9
	mov r2, r8
	adds r3, r4, #0x0
	bl sub_80DF024
	str r6, [r7, #0x30]
	adds r1, r6, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x9C
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	strh r3, [r0, #0x00]
	subs r1, #0x24
	ldr r5, [r5, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r2, _0808A8F0 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r5, #0x90
	lsls r5, r5, #0x05
	adds r0, r0, r5
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	subs r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	ldr r0, _0808A8F4 @ =0x0808C111
	str r0, [r6, #0x4C]
_0808A8D6:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808A8E4: .4byte sub_808C0C0
_0808A8E8: .4byte 0x00004068
_0808A8EC: .4byte 0x00000C52
_0808A8F0: .4byte 0xFFFFE000
_0808A8F4: .4byte sub_808C110
