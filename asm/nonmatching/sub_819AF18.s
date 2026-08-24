	push {r4, lr}
	ldr r0, _0819AF38 @ =0x03007FF0
	ldr r0, [r0, #0x00]
	movs r1, #0x9C
	lsls r1, r1, #0x03
	adds r3, r0, r1
	ldrb r0, [r3, #0x07]
	cmp r0, #0x01
	beq _0819AF3C
	cmp r0, #0x01
	ble _0819AF7E
	cmp r0, #0x02
	beq _0819AF68
	cmp r0, #0x05
	beq _0819AF74
	b _0819AF7E
_0819AF38: .4byte 0x03007FF0
_0819AF3C:
	ldr r2, _0819AF60 @ =0x04000074
	ldrh r0, [r3, #0x08]
	movs r4, #0x80
	lsls r4, r4, #0x08
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	subs r2, #0x02
	ldr r1, _0819AF64 @ =0x0821CB50
	ldrb r0, [r3, #0x04]
	lsrs r0, r0, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldrb r0, [r3, #0x07]
	adds r0, #0x01
	b _0819AF7C
_0819AF60: .4byte 0x04000074
_0819AF64: .4byte dword_821CB50 @ =0x0821CB50
_0819AF68:
	ldr r1, _0819AF70 @ =0x04000074
	ldrh r0, [r3, #0x08]
	strh r0, [r1, #0x00]
	b _0819AF7E
_0819AF70: .4byte 0x04000074
_0819AF74:
	ldr r0, _0819AF84 @ =0x04000073
	movs r1, #0x00
	strb r1, [r0, #0x00]
	movs r0, #0x00
_0819AF7C:
	strb r0, [r3, #0x07]
_0819AF7E:
	pop {r4}
	pop {r0}
	bx r0
_0819AF84: .4byte 0x04000073
