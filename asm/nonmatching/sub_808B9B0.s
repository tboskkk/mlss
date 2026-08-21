	.syntax unified
	.text

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
