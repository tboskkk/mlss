	.syntax unified
	.text

	thumb_func_start sub_808A8F8
sub_808A8F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r10, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0808A914
	b _0808AA40
_0808A914:
	mov r0, r10
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808AA50 @ =0x0808C099
	mov r1, r10
	str r0, [r1, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	mov r2, r10
	ldr r1, [r2, #0x10]
	cmp r1, #0x00
	bge _0808A93A
	adds r1, #0xFF
_0808A93A:
	asrs r6, r1, #0x08
	mov r0, r10
	ldr r2, [r0, #0x14]
	cmp r2, #0x00
	bge _0808A946
	adds r2, #0xFF
_0808A946:
	asrs r5, r2, #0x08
	mov r1, r10
	ldr r4, [r1, #0x18]
	cmp r4, #0x00
	bge _0808A952
	adds r4, #0xFF
_0808A952:
	asrs r4, r4, #0x08
	mov r2, r10
	ldr r2, [r2, #0x2C]
	mov r9, r2
	mov r1, r10
	ldr r0, [r1, #0x28]
	ldr r1, _0808AA54 @ =0x00004068
	adds r2, r6, #0x0
	subs r2, #0x0C
	adds r3, r4, #0x0
	adds r3, #0x32
	str r3, [sp, #0x000]
	movs r3, #0x01
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	adds r3, r5, #0x0
	bl sub_807BF34
	adds r7, r0, #0x0
	ldr r0, _0808AA58 @ =0x00000C59
	mov r2, r10
	str r2, [sp, #0x000]
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80DF024
	mov r0, r10
	str r7, [r0, #0x30]
	adds r1, r7, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r3, r10
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r4, r10
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r5, r10
	adds r5, #0xA4
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r6, #0x00
	strh r6, [r0, #0x00]
	adds r2, #0x0C
	mov r0, r9
	ldr r0, [r0, #0x28]
	mov r9, r0
	adds r0, #0xD8
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	mov r0, r9
	adds r0, #0xDC
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	mov r0, r9
	adds r0, #0xE0
	ldr r1, [r5, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	mov r1, r10
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	ldr r0, _0808AA5C @ =0x0808C111
	str r0, [r7, #0x4C]
_0808AA40:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808AA50: .4byte sub_808C098
_0808AA54: .4byte 0x00004068
_0808AA58: .4byte 0x00000C59
_0808AA5C: .4byte sub_808C110
