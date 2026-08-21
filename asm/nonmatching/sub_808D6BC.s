	.syntax unified
	.text

	thumb_func_start sub_808D6BC
sub_808D6BC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_808CCD4
	cmp r0, #0x00
	beq _0808D6CA
	b _0808D7FE
_0808D6CA:
	ldr r0, _0808D718 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _0808D720
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808D71C @ =0x0808D805
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0808D7FE
_0808D718: .4byte 0x0300034C
_0808D71C: .4byte sub_808D804
_0808D720:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x2C
	ble _0808D7E8
	ldr r0, [r4, #0x28]
	ldr r1, _0808D790 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _0808D7AC
	ldr r0, _0808D794 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _0808D7A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, _0808D798 @ =0x03001038
	ldr r0, _0808D79C @ =0x0819832C
	ldr r1, _0808D7A0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808D7A4 @ =0x0808CD51
	str r0, [r4, #0x4C]
	b _0808D7FE
	.byte 0x00, 0x00
_0808D790: .4byte 0x0000012D
_0808D794: .4byte 0x03000FD8
_0808D798: .4byte 0x03001038
_0808D79C: .4byte 0x0819832C
_0808D7A0: .4byte 0x08198220
_0808D7A4: .4byte sub_808CD50
_0808D7A8:
	movs r0, #0x2D
	b _0808D7FC
_0808D7AC:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808D7E4 @ =0x0808CD51
	str r0, [r4, #0x4C]
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	b _0808D7FE
	.byte 0x00, 0x00
_0808D7E4: .4byte sub_808CD50
_0808D7E8:
	cmp r0, #0x1D
	ble _0808D7F8
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0808D7F8:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_0808D7FC:
	strh r0, [r3, #0x00]
_0808D7FE:
	pop {r4, r5}
	pop {r0}
	bx r0
