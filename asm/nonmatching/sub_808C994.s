	.syntax unified
	.text

	thumb_func_start sub_808C994
sub_808C994:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0808C9CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0808CA20
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0808C9EA
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0808C9D0
	adds r0, r4, #0x0
	bl sub_8094990
	b _0808CAB8
	.byte 0x00, 0x00
_0808C9CC: .4byte 0x03000FD8
_0808C9D0:
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0808C9E2
	adds r0, r4, #0x0
	bl sub_8094DE8
	b _0808CAB8
_0808C9E2:
	adds r0, r4, #0x0
	bl sub_8094538
	b _0808CAB8
_0808C9EA:
	ldr r0, [r4, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0808CA06
	adds r0, r4, #0x0
	bl sub_8092F2C
	b _0808CAB8
_0808CA06:
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0808CA18
	adds r0, r4, #0x0
	bl sub_8093EA4
	b _0808CAB8
_0808CA18:
	adds r0, r4, #0x0
	bl sub_8091D9C
	b _0808CAB8
_0808CA20:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0808CA5E
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0808CA44
	adds r0, r4, #0x0
	bl sub_809070C
	b _0808CAB8
_0808CA44:
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0808CA56
	adds r0, r4, #0x0
	bl sub_8090A78
	b _0808CAB8
_0808CA56:
	adds r0, r4, #0x0
	bl sub_80903A0
	b _0808CAB8
_0808CA5E:
	ldr r2, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0808CA7A
	adds r0, r4, #0x0
	bl sub_808ECDC
	b _0808CAB8
_0808CA7A:
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0808CA8C
	adds r0, r4, #0x0
	bl sub_808FCD8
	b _0808CAB8
_0808CA8C:
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808CAA4
	adds r0, r4, #0x0
	bl sub_808DDE0
	b _0808CAB2
_0808CAA4:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0808CAB2
	adds r0, r4, #0x0
	bl sub_808DD9C
_0808CAB2:
	ldr r0, _0808CAC0 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
_0808CAB8:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808CAC0: .4byte sub_8087540
