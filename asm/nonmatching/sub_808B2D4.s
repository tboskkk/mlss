	.syntax unified
	.text

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
