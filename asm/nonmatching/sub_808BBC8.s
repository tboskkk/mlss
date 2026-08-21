	.syntax unified
	.text

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
