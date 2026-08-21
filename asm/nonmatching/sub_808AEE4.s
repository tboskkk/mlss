	.syntax unified
	.text

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
