	.syntax unified
	.text

	thumb_func_start sub_80F0D38
sub_80F0D38:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r4, r2, #0x0
	ldr r2, [r4, #0x04]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _080F0D50
	movs r0, #0x3F
	ands r2, r0
	lsrs r2, r2, #0x02
	b _080F0D5A
_080F0D50:
	movs r0, #0x00
	cmp r2, #0x01
	ble _080F0D58
	movs r0, #0x03
_080F0D58:
	adds r2, r0, #0x0
_080F0D5A:
	ldr r1, [r4, #0x08]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F0D6C
	movs r0, #0x3F
	ands r1, r0
	lsrs r1, r1, #0x02
	b _080F0D76
_080F0D6C:
	movs r0, #0x00
	cmp r1, #0x01
	ble _080F0D74
	movs r0, #0x03
_080F0D74:
	adds r1, r0, #0x0
_080F0D76:
	ldr r0, [r3, #0x14]
	adds r0, #0xD4
	ldr r3, [r0, #0x00]
	lsls r2, r2, #0x08
	lsls r0, r1, #0x06
	ldr r5, _080F0D9C @ =0xFFFFE000
	adds r1, r5, #0x0
	orrs r0, r1
	orrs r2, r0
	ldr r0, [r4, #0x00]
	lsls r1, r0, #0x03
	orrs r2, r1
	orrs r0, r2
	strh r0, [r3, #0x0C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F0D9C: .4byte 0xFFFFE000
