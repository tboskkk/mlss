	.include "asm/macros.inc"

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
