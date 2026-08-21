	.syntax unified
	.text

	thumb_func_start sub_808F8F0
sub_808F8F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808F908
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808FA12
_0808F908:
	ldr r0, _0808F958 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _0808F960
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
	ldr r0, _0808F95C @ =0x0808FA19
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0808FA12
	.byte 0x00, 0x00
_0808F958: .4byte 0x0300034C
_0808F95C: .4byte sub_808FA18
_0808F960:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x59
	ble _0808F9FC
	ldr r0, [r4, #0x28]
	ldr r1, _0808F9C0 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _0808F9D8
	ldr r0, _0808F9C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _0808F9D4
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
	ldr r2, _0808F9C8 @ =0x03001038
	ldr r0, _0808F9CC @ =0x0819832C
	ldr r1, _0808F9D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x06
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _0808F9E4
	.byte 0x00, 0x00
_0808F9C0: .4byte 0x0000012D
_0808F9C4: .4byte 0x03000FD8
_0808F9C8: .4byte 0x03001038
_0808F9CC: .4byte 0x0819832C
_0808F9D0: .4byte 0x08198220
_0808F9D4:
	movs r0, #0x5A
	b _0808FA10
_0808F9D8:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808F9E4:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808F9F8 @ =0x0808FC55
	str r0, [r4, #0x4C]
	b _0808FA12
	.byte 0x00, 0x00
_0808F9F8: .4byte sub_808FC54
_0808F9FC:
	cmp r0, #0x3B
	ble _0808FA0C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0808FA0C:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_0808FA10:
	strh r0, [r3, #0x00]
_0808FA12:
	pop {r4, r5}
	pop {r0}
	bx r0
