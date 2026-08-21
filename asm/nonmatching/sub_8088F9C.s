	.syntax unified
	.text

	thumb_func_start sub_8088F9C
sub_8088F9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08088FB4
	b _0808916E
_08088FB4:
	ldr r0, [r7, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r5, r0, #0x0
	cmp r1, #0x10
	bne _08088FDC
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _08088FD8 @ =0x00004060
	b _08088FEC
	.byte 0x00, 0x00
_08088FD8: .4byte 0x00004060
_08088FDC:
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _0808917C @ =0x00004063
_08088FEC:
	cmp r1, r0
	bne _08088FF2
	subs r2, #0x01
_08088FF2:
	adds r1, r2, #0x0
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _08088FFC
	adds r0, #0xFF
_08088FFC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0A
	ldr r3, [r7, #0x3C]
	cmp r3, #0x00
	bge _0808900A
	adds r3, #0xFF
_0808900A:
	asrs r3, r3, #0x08
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _08089014
	adds r0, #0xFF
_08089014:
	asrs r0, r0, #0x08
	adds r0, #0x0D
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_807BF34
	adds r6, r0, #0x0
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r6, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08089180 @ =0x080891A1
	str r0, [r6, #0x4C]
	ldr r0, _08089184 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, _08089188 @ =0x08089AB1
	str r0, [r6, #0x54]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	adds r0, r6, #0x0
	bl sub_807F4FC
	ldr r0, _0808918C @ =0x08089265
	str r0, [r6, #0x5C]
	ldr r0, _08089190 @ =0x08089349
	str r0, [r6, #0x60]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x9C
	adds r0, r0, r7
	mov r8, r0
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
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080890D6
	adds r0, #0x03
_080890D6:
	asrs r5, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x3C]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080890E8
	adds r1, #0x03
_080890E8:
	asrs r3, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x40]
	subs r0, r1, r0
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r2, r0, r1
	cmp r2, #0x00
	bge _08089102
	adds r1, #0x03
	adds r2, r0, r1
_08089102:
	asrs r2, r2, #0x02
	ldr r4, _08089194 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xAE
	movs r5, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r3, [r2, r0]
	lsls r1, r1, #0x03
	adds r1, r3, r1
	ldr r0, _08089198 @ =0x0819832C
	ldr r2, _0808919C @ =0x08198220
	subs r0, r0, r2
	ldr r4, [r4, #0x00]
	adds r4, r4, r0
	negs r0, r3
	muls r0, r3
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r4
	adds r1, r6, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x89
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r7, #0x6C]
	str r5, [r7, #0x4C]
	str r5, [r7, #0x68]
_0808916E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808917C: .4byte 0x00004063
_08089180: .4byte sub_80891A0
_08089184: .4byte sub_8087540
_08089188: .4byte sub_8089AB0
_0808918C: .4byte sub_8089264
_08089190: .4byte sub_8089348
_08089194: .4byte 0x03001038
_08089198: .4byte 0x0819832C
_0808919C: .4byte 0x08198220
