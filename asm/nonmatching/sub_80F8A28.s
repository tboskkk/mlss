	.syntax unified
	.text

	thumb_func_start sub_80F8A28
sub_80F8A28:
	push {r4, lr}
	adds r4, r1, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [r0, #0x2C]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r1, r1, r0
	mov r12, r1
	movs r1, #0x10
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080F8A4A
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x08
	add r12, r0
	movs r1, #0x01
_080F8A4A:
	adds r2, r1, #0x0
	cmp r2, #0x00
	beq _080F8A82
_080F8A50:
	mov r0, r12
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F8A70
	mov r0, r12
	adds r0, #0xA4
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080F8A70
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F8A84
_080F8A70:
	lsls r0, r2, #0x10
	ldr r1, _080F8A8C @ =0xFFFF0000
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r12, r1
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _080F8A50
_080F8A82:
	movs r0, #0x01
_080F8A84:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8A8C: .4byte 0xFFFF0000
