	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808A27C
sub_808A27C:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808A31A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r5, #0x07
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0808A2C4
	adds r2, #0xFF
_0808A2C4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _0808A2CE
	adds r3, #0xFF
_0808A2CE:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0808A2D8
	adds r0, #0xFF
_0808A2D8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808A324 @ =0x0000405A
	bl sub_807BF34
	str r0, [r4, #0x30]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x30]
	adds r0, #0x74
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, _0808A328 @ =0x0808C225
	str r0, [r4, #0x4C]
_0808A31A:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808A324: .4byte 0x0000405A
_0808A328: .4byte sub_808C224
	thumb_func_start sub_808A32C
sub_808A32C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808A3BA
	ldr r0, [r4, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _0808A3C0 @ =0x0808C1FD
	str r0, [r4, #0x4C]
_0808A3BA:
	pop {r4}
	pop {r0}
	bx r0
_0808A3C0: .4byte sub_808C1FC
	thumb_func_start sub_808A3C4
sub_808A3C4:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808A4BC
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r0, _0808A4C4 @ =0x0808C19D
	str r0, [r5, #0x4C]
	ldr r6, [r5, #0x2C]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0808A3FC
	adds r0, #0xFF
_0808A3FC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0C
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _0808A40A
	adds r3, #0xFF
_0808A40A:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _0808A414
	adds r0, #0xFF
_0808A414:
	asrs r0, r0, #0x08
	adds r0, #0x32
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808A4C8 @ =0x00004059
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x24
	ldr r2, [r6, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	ldr r0, _0808A4CC @ =0x0808C1C5
	str r0, [r4, #0x4C]
_0808A4BC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808A4C4: .4byte sub_808C19C
_0808A4C8: .4byte 0x00004059
_0808A4CC: .4byte sub_808C1C4
	thumb_func_start sub_808A4D0
sub_808A4D0:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808A5C8
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808A5D0 @ =0x0808C175
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r6, [r5, #0x2C]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0808A508
	adds r0, #0xFF
_0808A508:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0C
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _0808A516
	adds r3, #0xFF
_0808A516:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _0808A520
	adds r0, #0xFF
_0808A520:
	asrs r0, r0, #0x08
	adds r0, #0x32
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808A5D4 @ =0x00004059
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x24
	ldr r2, [r6, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	ldr r0, _0808A5D8 @ =0x0808C1C5
	str r0, [r4, #0x4C]
_0808A5C8:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808A5D0: .4byte sub_808C174
_0808A5D4: .4byte 0x00004059
_0808A5D8: .4byte sub_808C1C4
	thumb_func_start sub_808A5DC
sub_808A5DC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0808A656
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0808A656
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808A65C @ =0x0808750D
	str r0, [r4, #0x4C]
_0808A656:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808A65C: .4byte sub_808750C
	thumb_func_start sub_808A660
sub_808A660:
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
	bne _0808A67A
	b _0808A78A
_0808A67A:
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808A798 @ =0x0808C0E9
	str r0, [r7, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _0808A69C
	adds r1, #0xFF
_0808A69C:
	asrs r1, r1, #0x08
	mov r8, r1
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _0808A6A8
	adds r2, #0xFF
_0808A6A8:
	asrs r5, r2, #0x08
	ldr r4, [r7, #0x18]
	cmp r4, #0x00
	bge _0808A6B2
	adds r4, #0xFF
_0808A6B2:
	asrs r4, r4, #0x08
	ldr r0, [r7, #0x2C]
	mov r9, r0
	ldr r0, [r7, #0x28]
	ldr r1, _0808A79C @ =0x00004068
	mov r2, r8
	subs r2, #0x0C
	adds r3, r4, #0x0
	adds r3, #0x32
	str r3, [sp, #0x000]
	movs r3, #0x01
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	adds r3, r5, #0x0
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r0, _0808A7A0 @ =0x00000C52
	str r7, [sp, #0x000]
	mov r1, r8
	adds r2, r5, #0x0
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
	movs r3, #0x20
	orrs r0, r3
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
	movs r2, #0x00
	strh r2, [r0, #0x00]
	subs r1, #0x24
	mov r5, r9
	ldr r4, [r5, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r5, _0808A7A4 @ =0xFFFFE000
	adds r0, r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r5, _0808A7A8 @ =0xFFFFFC00
	adds r0, r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	ldr r0, _0808A7AC @ =0x0808C111
	str r0, [r6, #0x4C]
_0808A78A:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808A798: .4byte sub_808C0E8
_0808A79C: .4byte 0x00004068
_0808A7A0: .4byte 0x00000C52
_0808A7A4: .4byte 0xFFFFE000
_0808A7A8: .4byte 0xFFFFFC00
_0808A7AC: .4byte sub_808C110
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
	thumb_func_start sub_808AA60
sub_808AA60:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r10, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0808AA7C
	b _0808ABEE
_0808AA7C:
	mov r0, r10
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808AC00 @ =0x0808C071
	mov r1, r10
	str r0, [r1, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	mov r2, r10
	ldr r1, [r2, #0x10]
	cmp r1, #0x00
	bge _0808AAA2
	adds r1, #0xFF
_0808AAA2:
	asrs r4, r1, #0x08
	mov r3, r10
	ldr r2, [r3, #0x14]
	cmp r2, #0x00
	bge _0808AAAE
	adds r2, #0xFF
_0808AAAE:
	asrs r6, r2, #0x08
	mov r0, r10
	ldr r5, [r0, #0x18]
	cmp r5, #0x00
	bge _0808AABA
	adds r5, #0xFF
_0808AABA:
	asrs r5, r5, #0x08
	mov r1, r10
	ldr r1, [r1, #0x2C]
	mov r9, r1
	mov r2, r10
	ldr r0, [r2, #0x28]
	ldr r1, _0808AC04 @ =0x00004068
	adds r2, r4, #0x0
	subs r2, #0x0A
	adds r3, r5, #0x0
	adds r3, #0x16
	str r3, [sp, #0x000]
	movs r3, #0x01
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	adds r3, r6, #0x0
	bl sub_807BF34
	adds r7, r0, #0x0
	ldr r0, _0808AC08 @ =0x00000C59
	mov r1, r10
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	adds r3, r5, #0x0
	bl sub_80DF024
	mov r2, r10
	str r7, [r2, #0x30]
	adds r1, r7, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r3, r10
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r5, r10
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r6, r10
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x84
	mov r0, r9
	ldr r0, [r0, #0x28]
	mov r12, r0
	adds r0, #0xD8
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	mov r0, r12
	adds r0, #0xDC
	ldr r1, [r5, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	mov r0, r12
	adds r0, #0xE0
	ldr r1, [r6, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	mov r3, r8
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	mov r1, r10
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	mov r3, r10
	adds r3, #0x77
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r2, #0x77
	adds r2, r2, r7
	mov r8, r2
	movs r2, #0x01
	ands r2, r0
	lsls r2, r2, #0x06
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r8
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	movs r3, #0x01
	ands r3, r0
	lsls r0, r3, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	ldr r2, [sp, #0x010]
	orrs r1, r2
	mov r3, r8
	strb r1, [r3, #0x00]
	ldr r0, _0808AC0C @ =0x0808C111
	str r0, [r7, #0x4C]
_0808ABEE:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808AC00: .4byte sub_808C070
_0808AC04: .4byte 0x00004068
_0808AC08: .4byte 0x00000C59
_0808AC0C: .4byte sub_808C110
	thumb_func_start sub_808AC10
sub_808AC10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r7, r0, #0x0
	ldr r2, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r2
	mov r9, r0
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808AC32
	adds r0, #0xFF
_0808AC32:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x034]
	cmp r1, #0x00
	bge _0808AC44
	adds r1, #0xFF
_0808AC44:
	asrs r0, r1, #0x08
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bge _0808AC56
	adds r1, #0xFF
_0808AC56:
	asrs r0, r1, #0x08
	str r0, [sp, #0x008]
	ldr r1, [r7, #0x30]
	cmp r1, #0x00
	beq _0808AC7C
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _0808AC68
	adds r0, #0xFF
_0808AC68:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _0808AC74
	adds r0, #0xFF
_0808AC74:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r1, #0x40]
	b _0808ACA2
_0808AC7C:
	adds r0, r2, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808AC88
	adds r0, #0xFF
_0808AC88:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	adds r0, r2, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808AC98
	adds r0, #0xFF
_0808AC98:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	adds r0, r2, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
_0808ACA2:
	cmp r0, #0x00
	bge _0808ACA8
	adds r0, #0xFF
_0808ACA8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	add r0, sp, #0x00C
	add r1, sp, #0x010
	add r2, sp, #0x014
	movs r3, #0x00
	bl sub_807FC08
	ldr r4, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	subs r4, r4, r0
	ldr r5, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r5, r5, r0
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r2, _0808ADE0 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r1, _0808ADE4 @ =0x0819832C
	ldr r0, _0808ADE8 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _0808ADE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r0, _0808ADE0 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r5, r5, #0x08
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	adds r1, #0xAE
	strh r4, [r1, #0x00]
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldr r3, _0808ADEC @ =0x0300034C
	ldr r2, _0808ADF0 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	strh r4, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r4, [r2, #0x1E]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x034]
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r4, r10
	ldr r4, [r4, #0x00]
	str r4, [sp, #0x024]
	ldr r2, [r7, #0x30]
	cmp r2, #0x00
	beq _0808ADF4
	ldr r0, [r2, #0x38]
	ldr r1, [r2, #0x3C]
	ldr r2, [r2, #0x40]
	ldr r3, [sp, #0x01C]
	subs r0, r0, r3
	str r0, [sp, #0x028]
	ldr r4, [sp, #0x020]
	subs r4, r1, r4
	mov r10, r4
	ldr r0, [sp, #0x024]
	subs r0, r2, r0
	mov r9, r0
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	bne _0808AD82
	b _0808AECC
_0808AD82:
	mov r7, r8
	mov r8, r9
	mov r6, r10
	ldr r5, [sp, #0x028]
_0808AD8A:
	ldr r1, _0808ADE0 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r2, [sp, #0x01C]
	adds r0, r2, r0
	str r0, [r4, #0x04]
	ldr r3, _0808ADE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _0808ADE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	mov r2, r9
	lsls r0, r2, #0x01
	add r8, r0
	mov r3, r10
	lsls r0, r3, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x028]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0808AD8A
	b _0808AECC
_0808ADE0: .4byte 0x03001038
_0808ADE4: .4byte 0x0819832C
_0808ADE8: .4byte 0x08198220
_0808ADEC: .4byte 0x0300034C
_0808ADF0: .4byte 0x00000888
_0808ADF4:
	mov r0, r9
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, #0x04
	ldr r3, [r0, #0x00]
	ldr r4, [sp, #0x01C]
	subs r0, r1, r4
	cmp r0, #0x00
	bge _0808AE0C
	adds r0, #0x07
_0808AE0C:
	asrs r0, r0, #0x03
	str r0, [sp, #0x02C]
	ldr r1, [sp, #0x020]
	subs r0, r2, r1
	cmp r0, #0x00
	bge _0808AE1A
	adds r0, #0x07
_0808AE1A:
	asrs r0, r0, #0x03
	str r0, [sp, #0x030]
	ldr r2, [sp, #0x024]
	subs r0, r3, r2
	cmp r0, #0x00
	bge _0808AE28
	adds r0, #0x07
_0808AE28:
	asrs r6, r0, #0x03
	ldr r3, [sp, #0x02C]
	adds r0, r3, #0x0
	muls r0, r3
	ldr r4, [sp, #0x030]
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r2, _0808AEE0 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	lsls r3, r5, #0x03
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r4, #0x00
	ldsh r0, [r0, r4]
	ldr r2, [sp, #0x02C]
	adds r1, r2, #0x0
	muls r1, r0
	str r1, [sp, #0x02C]
	ldr r4, [sp, #0x030]
	adds r3, r4, #0x0
	muls r3, r0
	str r3, [sp, #0x030]
	muls r6, r0
	movs r0, #0x0D
	muls r5, r0
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _0808AECC
	mov r9, r8
	mov r10, r6
	mov r8, r3
	adds r7, r1, #0x0
_0808AE7A:
	ldr r0, _0808AEE0 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r9
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x01C]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	ldr r3, _0808AEE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _0808AEE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	mov r0, r10
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	lsls r0, r6, #0x01
	add r10, r0
	ldr r2, [sp, #0x030]
	lsls r0, r2, #0x01
	add r8, r0
	ldr r3, [sp, #0x02C]
	lsls r0, r3, #0x01
	adds r7, r7, r0
	cmp r4, #0x00
	bne _0808AE7A
_0808AECC:
	ldr r0, [sp, #0x018]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808AEE0: .4byte 0x03001038
	thumb_func_start sub_808AEE4
sub_808AEE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	movs r0, #0xAC
	add r0, r8
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r1, r0, #0x1
	mov r2, r9
	strh r1, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0808AF08
	b _0808B0CC
_0808AF08:
	mov r4, r8
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0808AF14
	adds r0, #0xFF
_0808AF14:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0A
	mov r0, r8
	ldr r3, [r0, #0x14]
	cmp r3, #0x00
	bge _0808AF24
	adds r3, #0xFF
_0808AF24:
	asrs r3, r3, #0x08
	mov r4, r8
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0808AF30
	adds r0, #0xFF
_0808AF30:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808B0DC @ =0x00004066
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	str r0, [r7, #0x2C]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_807FA14
	ldr r6, [r7, #0x04]
	ldr r0, _0808B0E0 @ =0x03000FD8
	ldr r5, [r0, #0x00]
	ldrb r4, [r5, #0x07]
	lsls r3, r4, #0x1B
	lsrs r2, r3, #0x1B
	subs r2, #0x01
	movs r0, #0x1F
	ands r2, r0
	movs r1, #0x20
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r4
	orrs r0, r2
	strb r0, [r5, #0x07]
	lsrs r3, r3, #0x1B
	ldrb r0, [r6, #0x0C]
	ands r1, r0
	orrs r1, r3
	strb r1, [r6, #0x0C]
	mov r0, r9
	str r0, [sp, #0x00C]
	mov r6, r8
	adds r6, #0x84
	movs r1, #0x88
	add r1, r8
	mov r9, r1
	movs r2, #0x8C
	add r2, r8
	mov r10, r2
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r7, #0x0C]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	movs r5, #0x07
_0808B030:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _0808B030
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0808B0E4 @ =0x0808B0ED
	str r0, [r7, #0x4C]
	mov r4, r8
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r2, r9
	str r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	mov r4, r10
	str r0, [r4, #0x00]
	mov r0, r8
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808B0E8 @ =0x0808C04D
	mov r1, r8
	str r0, [r1, #0x4C]
	movs r0, #0x06
	ldr r2, [sp, #0x00C]
	strh r0, [r2, #0x00]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x5C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x5E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_0808B0CC:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808B0DC: .4byte 0x00004066
_0808B0E0: .4byte 0x03000FD8
_0808B0E4: .4byte sub_808B0EC
_0808B0E8: .4byte sub_808C04C
	thumb_func_start sub_808B0EC
sub_808B0EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x07
	ldrh r1, [r4, #0x00]
	adds r0, r0, r1
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_808AC10
	movs r2, #0x00
	ldsh r1, [r4, r2]
	lsls r1, r1, #0x01
	cmp r1, r0
	blt _0808B1F4
	ldr r6, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r6
	mov r8, r0
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B12A
	adds r0, #0xFF
_0808B12A:
	asrs r2, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B138
	adds r0, #0xFF
_0808B138:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B146
	adds r0, #0xFF
_0808B146:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r6, #0x0
	ldr r1, _0808B200 @ =0x00004066
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x03
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x2C]
	str r0, [r5, #0x2C]
	ldr r0, [r1, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	adds r3, r6, #0x0
	adds r3, #0x7F
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r2, #0x77
	adds r2, r2, r5
	mov r12, r2
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, #0x1A
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808B204 @ =0x0808BFF9
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x06
	strh r0, [r1, #0x00]
	str r5, [r7, #0x30]
	adds r1, r7, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _0808B208 @ =0x0808B20D
	str r0, [r7, #0x4C]
_0808B1F4:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808B200: .4byte 0x00004066
_0808B204: .4byte sub_808BFF8
_0808B208: .4byte sub_808B20C
	thumb_func_start sub_808B20C
sub_808B20C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	bl sub_808AC10
	adds r6, r7, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	bgt _0808B2B4
	ldr r5, _0808B2C0 @ =0x03001038
	ldr r4, _0808B2C4 @ =0x0819832C
	ldr r0, _0808B2C8 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB8
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	ldr r3, _0808B2CC @ =0x0300034C
	ldr r2, _0808B2D0 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x01
	bne _0808B2B4
	ldr r0, [r7, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r0, #0x5E
	bl stop_sfx_80195A8
	adds r0, r7, #0x0
	bl sub_807C298
_0808B2B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808B2C0: .4byte 0x03001038
_0808B2C4: .4byte 0x0819832C
_0808B2C8: .4byte 0x08198220
_0808B2CC: .4byte 0x0300034C
_0808B2D0: .4byte 0x00000888
	thumb_func_start sub_808B2D4
sub_808B2D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	mov r8, r0
	movs r0, #0xAC
	add r0, r8
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r1, r0, #0x1
	mov r2, r9
	strh r1, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0808B2F8
	b _0808B53A
_0808B2F8:
	mov r3, r8
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _0808B304
	adds r0, #0xFF
_0808B304:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0A
	mov r4, r8
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _0808B314
	adds r3, #0xFF
_0808B314:
	asrs r3, r3, #0x08
	mov r4, r8
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0808B320
	adds r0, #0xFF
_0808B320:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808B54C @ =0x00004066
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	str r0, [r7, #0x2C]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _0808B550 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	mov r0, r9
	str r0, [sp, #0x020]
	movs r1, #0x0E
	add r1, sp
	mov r9, r1
	add r2, sp, #0x010
	mov r10, r2
	mov r3, r8
	adds r3, #0x84
	str r3, [sp, #0x014]
	mov r4, r8
	adds r4, #0x88
	str r4, [sp, #0x018]
	mov r0, r8
	adds r0, #0x8C
	str r0, [sp, #0x01C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_0808B42E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _0808B42E
	movs r3, #0x00
	str r3, [r0, #0x00]
	ldr r0, _0808B554 @ =0x0808B561
	str r0, [r7, #0x4C]
	mov r1, r8
	ldr r0, [r1, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0808B48E
	ldr r0, _0808B558 @ =0xFFFFFED0
	adds r2, r2, r0
_0808B48E:
	movs r1, #0x98
	lsls r1, r1, #0x01
	adds r4, r2, r1
	movs r0, #0x20
	negs r0, r0
	mov r5, r9
	mov r6, r10
	str r0, [sp, #0x000]
	str r3, [sp, #0x004]
	movs r0, #0x80
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	add r0, sp, #0x00C
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	movs r3, #0x0E
	bl sub_8087968
	mov r2, r8
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	cmp r0, r4
	bne _0808B4D2
	add r1, sp, #0x00C
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	negs r0, r0
	strh r0, [r5, #0x00]
	ldrh r0, [r6, #0x00]
	negs r0, r0
	strh r0, [r6, #0x00]
_0808B4D2:
	mov r3, r8
	ldr r0, [r3, #0x2C]
	ldr r3, [r0, #0x28]
	adds r2, r3, #0x0
	adds r2, #0xD8
	add r0, sp, #0x00C
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xDC
	mov r2, r9
	movs r4, #0x00
	ldsh r1, [r2, r4]
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xE0
	mov r2, r10
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r4, [sp, #0x01C]
	str r0, [r4, #0x00]
	mov r0, r8
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x01
	ldr r1, [sp, #0x020]
	strh r0, [r1, #0x00]
	ldr r0, _0808B55C @ =0x0808BFBD
	mov r2, r8
	str r0, [r2, #0x4C]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x5C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x5E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_0808B53A:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808B54C: .4byte 0x00004066
_0808B550: .4byte 0x03000FD8
_0808B554: .4byte sub_808B560
_0808B558: .4byte 0xFFFFFED0
_0808B55C: .4byte sub_808BFBC
	thumb_func_start sub_808B560
sub_808B560:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	movs r1, #0x00
	mov r9, r1
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_808AC10
	movs r2, #0x00
	ldsh r1, [r4, r2]
	lsls r1, r1, #0x01
	cmp r1, r0
	blt _0808B668
	ldr r6, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r6
	mov r8, r0
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B5A4
	adds r0, #0xFF
_0808B5A4:
	asrs r2, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B5B2
	adds r0, #0xFF
_0808B5B2:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B5C0
	adds r0, #0xFF
_0808B5C0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r6, #0x0
	ldr r1, _0808B678 @ =0x00004066
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x2C]
	str r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x6C]
	str r0, [r4, #0x6C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	adds r3, r6, #0x0
	adds r3, #0x7F
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r2, #0x77
	adds r2, r2, r4
	mov r12, r2
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r5, r0
	lsls r5, r5, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r5
	strb r1, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	ldr r0, _0808B67C @ =0x0808B749
	str r0, [r4, #0x4C]
	str r4, [r7, #0x30]
	adds r0, r7, #0x0
	adds r0, #0xAC
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _0808B680 @ =0x0808B685
	str r0, [r7, #0x4C]
_0808B668:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808B678: .4byte 0x00004066
_0808B67C: .4byte sub_808B748
_0808B680: .4byte sub_808B684
	thumb_func_start sub_808B684
sub_808B684:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	bl sub_808AC10
	adds r6, r7, #0x0
	adds r6, #0xAC
	ldrh r1, [r6, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _0808B72A
	subs r0, r1, #0x1
	strh r0, [r6, #0x00]
	ldr r5, _0808B734 @ =0x03001038
	ldr r4, _0808B738 @ =0x0819832C
	ldr r0, _0808B73C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x04
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB8
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	ldr r3, _0808B740 @ =0x0300034C
	ldr r2, _0808B744 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x01
	bgt _0808B72A
	movs r0, #0x5E
	bl stop_sfx_80195A8
	ldr r0, [r7, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0808B72A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808B734: .4byte 0x03001038
_0808B738: .4byte 0x0819832C
_0808B73C: .4byte 0x08198220
_0808B740: .4byte 0x0300034C
_0808B744: .4byte 0x00000888
	thumb_func_start sub_808B748
sub_808B748:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _0808B7C6
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0808B778
	ldr r0, _0808B774 @ =0xFFFFFED0
	adds r2, r2, r0
	b _0808B77E
_0808B774: .4byte 0xFFFFFED0
_0808B778:
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r2, r2, r3
_0808B77E:
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0808B7CC @ =0x0808BF8D
	str r0, [r4, #0x4C]
_0808B7C6:
	pop {r4}
	pop {r0}
	bx r0
_0808B7CC: .4byte 0x0808BF8D
	thumb_func_start sub_808B7D0
sub_808B7D0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0808B7FC
	cmp r0, #0x01
	bgt _0808B7F2
	cmp r0, #0x00
	beq _0808B802
	b _0808B81C
_0808B7F2:
	cmp r0, #0x02
	beq _0808B802
	cmp r0, #0x03
	beq _0808B810
	b _0808B81C
_0808B7FC:
	adds r0, r4, #0x0
	movs r1, #0x07
	b _0808B806
_0808B802:
	adds r0, r4, #0x0
	movs r1, #0x03
_0808B806:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808B81C
_0808B810:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808B81C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0808B844
	cmp r0, #0x01
	bgt _0808B83C
	cmp r0, #0x00
	beq _0808B844
	b _0808B846
_0808B83C:
	cmp r0, #0x02
	beq _0808B844
	cmp r0, #0x03
	bne _0808B846
_0808B844:
	movs r5, #0x18
_0808B846:
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _0808B858 @ =0x0808BED1
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808B858: .4byte sub_808BED0
	thumb_func_start sub_808B85C
sub_808B85C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0808B874
	b _0808B99E
_0808B874:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x01
	beq _0808B894
	cmp r1, #0x01
	bgt _0808B88A
	cmp r1, #0x00
	beq _0808B89A
	b _0808B8B4
_0808B88A:
	cmp r1, #0x02
	beq _0808B89A
	cmp r1, #0x03
	beq _0808B8A8
	b _0808B8B4
_0808B894:
	adds r0, r4, #0x0
	movs r1, #0x09
	b _0808B89E
_0808B89A:
	adds r0, r4, #0x0
	movs r1, #0x05
_0808B89E:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808B8B4
_0808B8A8:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808B8B4:
	ldr r0, _0808B8D8 @ =0x0808BEB5
	str r0, [r4, #0x4C]
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	mov r8, r0
	ldr r0, [r6, #0x00]
	cmp r0, #0x01
	beq _0808B8EA
	cmp r0, #0x01
	bgt _0808B8DC
	cmp r0, #0x00
	beq _0808B8E6
	b _0808B8EC
_0808B8D8: .4byte sub_808BEB4
_0808B8DC:
	cmp r0, #0x02
	beq _0808B8E6
	cmp r0, #0x03
	beq _0808B8EA
	b _0808B8EC
_0808B8E6:
	movs r5, #0x35
	b _0808B8EC
_0808B8EA:
	movs r5, #0x1B
_0808B8EC:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0808B8F4
	adds r0, #0xFF
_0808B8F4:
	asrs r0, r0, #0x08
	subs r2, r0, r5
	ldr r0, [r6, #0x00]
	cmp r0, #0x01
	beq _0808B918
	cmp r0, #0x01
	bgt _0808B908
	cmp r0, #0x00
	beq _0808B912
	b _0808B91C
_0808B908:
	cmp r0, #0x02
	beq _0808B912
	cmp r0, #0x03
	beq _0808B918
	b _0808B91C
_0808B912:
	movs r7, #0x09
	negs r7, r7
	b _0808B91C
_0808B918:
	movs r7, #0x05
	negs r7, r7
_0808B91C:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0808B924
	adds r0, #0xFF
_0808B924:
	asrs r0, r0, #0x08
	adds r3, r0, r7
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0808B932
	adds r0, #0xFF
_0808B932:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808B9AC @ =0x0000405D
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r4, #0x30]
	adds r1, r3, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x9C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x6C]
	str r0, [r3, #0x6C]
	subs r1, #0x10
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	mov r0, r8
	str r0, [r3, #0x2C]
	adds r0, r3, #0x0
	bl sub_808B9B0
_0808B99E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808B9AC: .4byte 0x0000405D
	thumb_func_start sub_808B9B0
sub_808B9B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	ldr r0, [r7, #0x2C]
	mov r9, r0
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0808B9D4
	adds r0, #0x03
_0808B9D4:
	asrs r5, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0808B9E6
	adds r0, #0x03
_0808B9E6:
	asrs r0, r0, #0x02
	mov r8, r0
	ldr r4, _0808BA24 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	mov r2, r8
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	str r3, [sp, #0x024]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r0, _0808BA28 @ =0x0819832C
	ldr r1, _0808BA2C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r4, #0x00]
	adds r2, r1, r0
	adds r0, r7, #0x0
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	ldr r3, [sp, #0x024]
	cmp r1, #0x01
	beq _0808BA3A
	cmp r1, #0x01
	bgt _0808BA30
	cmp r1, #0x00
	beq _0808BA3A
	b _0808BA44
_0808BA24: .4byte 0x03001038
_0808BA28: .4byte 0x0819832C
_0808BA2C: .4byte 0x08198220
_0808BA30:
	cmp r1, #0x02
	beq _0808BA3E
	cmp r1, #0x03
	beq _0808BA42
	b _0808BA44
_0808BA3A:
	movs r3, #0x00
	b _0808BA44
_0808BA3E:
	movs r3, #0x1A
	b _0808BA44
_0808BA42:
	movs r3, #0x1E
_0808BA44:
	lsls r0, r3, #0x06
	adds r0, r6, r0
	muls r0, r5
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r3, r7, #0x0
	adds r3, #0x84
	lsls r0, r0, #0x01
	ldr r1, [r7, #0x38]
	adds r1, r1, r0
	str r1, [r3, #0x00]
	ldr r2, _0808BA7C @ =0x03001038
	ldr r0, _0808BA80 @ =0x0819832C
	ldr r1, _0808BA84 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x020]
	cmp r0, #0x01
	beq _0808BA98
	cmp r0, #0x01
	bgt _0808BA88
	cmp r0, #0x00
	beq _0808BA92
	b _0808BAA8
	.byte 0x00, 0x00
_0808BA7C: .4byte 0x03001038
_0808BA80: .4byte 0x0819832C
_0808BA84: .4byte 0x08198220
_0808BA88:
	cmp r0, #0x02
	beq _0808BA9E
	cmp r0, #0x03
	beq _0808BAA4
	b _0808BAA8
_0808BA92:
	movs r3, #0x00
	mov r10, r3
	b _0808BAA8
_0808BA98:
	movs r5, #0x00
	mov r10, r5
	b _0808BAA8
_0808BA9E:
	movs r0, #0x1A
	mov r10, r0
	b _0808BAA8
_0808BAA4:
	movs r1, #0x1E
	mov r10, r1
_0808BAA8:
	mov r3, r10
	lsls r0, r3, #0x06
	adds r0, r6, r0
	mov r5, r8
	muls r5, r0
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x88
	lsls r0, r0, #0x01
	ldr r1, [r7, #0x3C]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	mov r3, r9
	ldr r0, [r3, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r5, r2, #0x0
	mov r9, r1
	cmp r0, #0x01
	beq _0808BAF8
	cmp r0, #0x01
	bgt _0808BAE8
	cmp r0, #0x00
	beq _0808BAF2
	b _0808BB08
_0808BAE8:
	cmp r0, #0x02
	beq _0808BAFE
	cmp r0, #0x03
	beq _0808BB04
	b _0808BB08
_0808BAF2:
	movs r0, #0x14
	str r0, [sp, #0x018]
	b _0808BB08
_0808BAF8:
	movs r1, #0x14
	str r1, [sp, #0x018]
	b _0808BB08
_0808BAFE:
	movs r2, #0x37
	str r2, [sp, #0x018]
	b _0808BB08
_0808BB04:
	movs r3, #0x37
	str r3, [sp, #0x018]
_0808BB08:
	ldr r0, [sp, #0x018]
	lsls r1, r0, #0x08
	ldr r0, [r7, #0x40]
	subs r1, r1, r0
	mov r12, r1
	mov r8, r0
	cmp r1, #0x00
	bgt _0808BB1C
	movs r1, #0x01
	mov r12, r1
_0808BB1C:
	ldr r0, [r4, #0x00]
	cmp r0, #0x01
	beq _0808BB3E
	cmp r0, #0x01
	bgt _0808BB2C
	cmp r0, #0x00
	beq _0808BB36
	b _0808BB54
_0808BB2C:
	cmp r0, #0x02
	beq _0808BB46
	cmp r0, #0x03
	beq _0808BB4E
	b _0808BB54
_0808BB36:
	movs r2, #0x80
	lsls r2, r2, #0x03
	str r2, [sp, #0x01C]
	b _0808BB54
_0808BB3E:
	movs r3, #0x80
	lsls r3, r3, #0x03
	str r3, [sp, #0x01C]
	b _0808BB54
_0808BB46:
	movs r0, #0xC0
	lsls r0, r0, #0x03
	str r0, [sp, #0x01C]
	b _0808BB54
_0808BB4E:
	movs r1, #0xC0
	lsls r1, r1, #0x03
	str r1, [sp, #0x01C]
_0808BB54:
	ldr r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r6, r2, #0x0
	muls r6, r3
	cmp r6, #0x00
	bge _0808BB66
	adds r6, #0xFF
_0808BB66:
	asrs r6, r6, #0x08
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, r7, #0x0
	adds r1, #0xB0
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r4, [sp, #0x020]
	ldr r3, [r4, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	mov r5, r9
	ldr r4, [r5, #0x00]
	mov r5, r8
	subs r4, r4, r5
	str r4, [sp, #0x004]
	mov r4, r12
	str r4, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	ldr r0, _0808BBC4 @ =0x0808BBC9
	str r0, [r7, #0x4C]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808BBC4: .4byte sub_808BBC8
	thumb_func_start sub_808BBC8
sub_808BBC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r7, r0, #0x0
	adds r2, r7, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r5, #0x00
	ldsh r1, [r2, r5]
	ldr r0, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	adds r5, r7, #0x0
	adds r5, #0x8C
	ldr r1, [r5, #0x00]
	cmp r1, r0
	bge _0808BC16
	b _0808BE0E
_0808BC16:
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r3, #0x00]
	str r0, [r7, #0x10]
	subs r2, #0x2A
	ldr r0, [r2, #0x00]
	str r0, [r7, #0x14]
	ldr r0, [r5, #0x00]
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x2C]
	mov r9, r0
	ldr r5, [r0, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x38]
	subs r0, r1, r0
	str r3, [sp, #0x024]
	str r2, [sp, #0x028]
	cmp r0, #0x00
	bge _0808BC42
	adds r0, #0x03
_0808BC42:
	asrs r6, r0, #0x02
	adds r0, r5, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0808BC54
	adds r0, #0x03
_0808BC54:
	asrs r0, r0, #0x02
	mov r8, r0
	ldr r4, _0808BC90 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	mov r2, r8
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	ldr r0, _0808BC94 @ =0x0819832C
	ldr r1, _0808BC98 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r4, #0x00]
	adds r2, r1, r0
	adds r0, r7, #0x0
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x01
	beq _0808BCAA
	cmp r1, #0x01
	bgt _0808BC9C
	cmp r1, #0x00
	beq _0808BCA6
	b _0808BCBA
	.byte 0x00, 0x00
_0808BC90: .4byte 0x03001038
_0808BC94: .4byte 0x0819832C
_0808BC98: .4byte 0x08198220
_0808BC9C:
	cmp r1, #0x02
	beq _0808BCB0
	cmp r1, #0x03
	beq _0808BCB6
	b _0808BCBA
_0808BCA6:
	movs r3, #0x00
	b _0808BCB8
_0808BCAA:
	movs r0, #0x00
	mov r10, r0
	b _0808BCBA
_0808BCB0:
	movs r1, #0x1A
	mov r10, r1
	b _0808BCBA
_0808BCB6:
	movs r3, #0x1E
_0808BCB8:
	mov r10, r3
_0808BCBA:
	mov r1, r10
	lsls r0, r1, #0x06
	adds r0, r5, r0
	muls r0, r6
	adds r1, r5, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x38]
	adds r1, r1, r0
	ldr r2, [sp, #0x024]
	str r1, [r2, #0x00]
	ldr r2, _0808BCF0 @ =0x03001038
	ldr r0, _0808BCF4 @ =0x0819832C
	ldr r1, _0808BCF8 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x01
	beq _0808BD0A
	cmp r0, #0x01
	bgt _0808BCFC
	cmp r0, #0x00
	beq _0808BD06
	b _0808BD1A
	.byte 0x00, 0x00
_0808BCF0: .4byte 0x03001038
_0808BCF4: .4byte 0x0819832C
_0808BCF8: .4byte 0x08198220
_0808BCFC:
	cmp r0, #0x02
	beq _0808BD10
	cmp r0, #0x03
	beq _0808BD16
	b _0808BD1A
_0808BD06:
	movs r3, #0x00
	b _0808BD18
_0808BD0A:
	movs r0, #0x00
	str r0, [sp, #0x018]
	b _0808BD1A
_0808BD10:
	movs r1, #0x1A
	str r1, [sp, #0x018]
	b _0808BD1A
_0808BD16:
	movs r3, #0x1E
_0808BD18:
	str r3, [sp, #0x018]
_0808BD1A:
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x06
	adds r0, r5, r0
	mov r3, r8
	muls r3, r0
	adds r0, r3, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x3C]
	adds r1, r1, r0
	ldr r5, [sp, #0x028]
	str r1, [r5, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	mov r2, r9
	ldr r0, [r2, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	mov r9, r1
	cmp r0, #0x01
	beq _0808BD66
	cmp r0, #0x01
	bgt _0808BD56
	cmp r0, #0x00
	beq _0808BD60
	b _0808BD76
_0808BD56:
	cmp r0, #0x02
	beq _0808BD6C
	cmp r0, #0x03
	beq _0808BD72
	b _0808BD76
_0808BD60:
	movs r3, #0x14
	str r3, [sp, #0x01C]
	b _0808BD76
_0808BD66:
	movs r5, #0x14
	str r5, [sp, #0x01C]
	b _0808BD76
_0808BD6C:
	movs r0, #0x37
	str r0, [sp, #0x01C]
	b _0808BD76
_0808BD72:
	movs r1, #0x37
	str r1, [sp, #0x01C]
_0808BD76:
	ldr r2, [sp, #0x01C]
	lsls r2, r2, #0x08
	mov r8, r2
	ldr r0, [r4, #0x00]
	cmp r0, #0x01
	beq _0808BD9E
	cmp r0, #0x01
	bgt _0808BD8C
	cmp r0, #0x00
	beq _0808BD96
	b _0808BDB4
_0808BD8C:
	cmp r0, #0x02
	beq _0808BDA6
	cmp r0, #0x03
	beq _0808BDAE
	b _0808BDB4
_0808BD96:
	movs r3, #0x80
	lsls r3, r3, #0x03
	str r3, [sp, #0x020]
	b _0808BDB4
_0808BD9E:
	movs r5, #0x80
	lsls r5, r5, #0x03
	str r5, [sp, #0x020]
	b _0808BDB4
_0808BDA6:
	movs r0, #0xC0
	lsls r0, r0, #0x03
	str r0, [sp, #0x020]
	b _0808BDB4
_0808BDAE:
	movs r1, #0xC0
	lsls r1, r1, #0x03
	str r1, [sp, #0x020]
_0808BDB4:
	ldr r0, [r4, #0x00]
	ldr r2, [sp, #0x020]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r6, r2, #0x0
	muls r6, r3
	cmp r6, #0x00
	bge _0808BDC6
	adds r6, #0xFF
_0808BDC6:
	asrs r6, r6, #0x08
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, r7, #0x0
	adds r1, #0xB0
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r4, [sp, #0x024]
	ldr r3, [r4, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	ldr r5, [sp, #0x028]
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	mov r5, r9
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x40]
	subs r4, r4, r5
	str r4, [sp, #0x004]
	mov r4, r8
	str r4, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _0808BE20 @ =0x0808BE25
	str r0, [r7, #0x4C]
_0808BE0E:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808BE20: .4byte sub_808BE24
	thumb_func_start sub_808BE24
sub_808BE24:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r5, r0, r1
	str r5, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x14]
	adds r6, r0, r1
	str r6, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r3, r0, r1
	str r3, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, r3
	blt _0808BEA6
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _0808BE70
	adds r0, #0xFF
_0808BE70:
	asrs r1, r0, #0x08
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0808BE7A
	adds r0, #0xFF
_0808BE7A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0808BE84
	adds r0, #0xFF
_0808BE84:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0808BEB0 @ =0x00000C67
	bl sub_80DF024
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_0808BEA6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808BEB0: .4byte 0x00000C67
	thumb_func_start sub_808BEB4
sub_808BEB4:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808BECA
	adds r0, r2, #0x0
	bl sub_8087540
_0808BECA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_808BED0
sub_808BED0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _0808BF30
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0808BF0C
	cmp r0, #0x01
	bgt _0808BF02
	cmp r0, #0x00
	beq _0808BF12
	b _0808BF2C
_0808BF02:
	cmp r0, #0x02
	beq _0808BF12
	cmp r0, #0x03
	beq _0808BF20
	b _0808BF2C
_0808BF0C:
	adds r0, r4, #0x0
	movs r1, #0x08
	b _0808BF16
_0808BF12:
	adds r0, r4, #0x0
	movs r1, #0x04
_0808BF16:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808BF2C
_0808BF20:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808BF2C:
	ldr r0, _0808BF38 @ =0x0808B85D
	str r0, [r4, #0x4C]
_0808BF30:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808BF38: .4byte sub_808B85C
	.byte 0x03, 0x49, 0xC1, 0x64, 0x98, 0x30, 0x03, 0x21, 0x01, 0x60, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00
	.byte 0x75, 0xC2, 0x08, 0x08, 0x03, 0x49, 0xC1, 0x64, 0x98, 0x30, 0x02, 0x21, 0x01, 0x60, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x00, 0x75, 0xC2, 0x08, 0x08, 0x03, 0x49, 0xC1, 0x64, 0x01, 0x21, 0x98, 0x30
	.byte 0x01, 0x60, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x75, 0xC2, 0x08, 0x08, 0x03, 0x49, 0xC1, 0x64
	.byte 0x98, 0x30, 0x00, 0x21, 0x01, 0x60, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x75, 0xC2, 0x08, 0x08
	.byte 0x02, 0x1C, 0x10, 0x69, 0x91, 0x6B, 0x40, 0x1A, 0x11, 0x1C, 0xAE, 0x31, 0x08, 0x80, 0x50, 0x69
	.byte 0xD1, 0x6B, 0x40, 0x1A, 0x11, 0x1C, 0xB0, 0x31, 0x08, 0x80, 0x90, 0x69, 0x11, 0x6C, 0x40, 0x1A
	.byte 0x11, 0x1C, 0xB2, 0x31, 0x08, 0x80, 0x01, 0x48, 0xD0, 0x64, 0x70, 0x47, 0xE1, 0xC2, 0x08, 0x08
	thumb_func_start sub_808BFBC
sub_808BFBC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0808BFE2
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _0808BFE8 @ =0x0808C309
	str r0, [r4, #0x4C]
_0808BFE2:
	pop {r4}
	pop {r0}
	bx r0
_0808BFE8: .4byte sub_808C308
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x25, 0xC3, 0x08, 0x08
	thumb_func_start sub_808BFF8
sub_808BFF8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0808C01C
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _0808C01C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0808C01C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _0808C044
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bne _0808C038
	adds r0, #0xB4
	strh r1, [r0, #0x00]
_0808C038:
	movs r0, #0x5E
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_0808C044:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_808C04C
sub_808C04C:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0808C060
	adds r0, r1, #0x0
	bl sub_8087540
_0808C060:
	pop {r0}
	bx r0
