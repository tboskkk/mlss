	.syntax unified
	.text

	thumb_func_start sub_814CB90
sub_814CB90:
	push {r4, r5, r6, lr}
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	ldr r2, _0814CC64 @ =0x03001038
	ldr r0, _0814CC68 @ =0x0819832C
	ldr r1, _0814CC6C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _0814CC70 @ =0x00000282
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814CBD8
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814CBD8:
	ldr r1, _0814CC74 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0814CC78 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0814CC3C
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814CC3C
	ldr r0, [r4, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _0814CC3C
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, _0814CC7C @ =0x02000001
	ands r0, r1
	cmp r0, r1
	beq _0814CC5C
_0814CC3C:
	ldr r0, _0814CC80 @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, [r6, #0x04]
	str r0, [r6, #0x00]
_0814CC5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814CC64: .4byte 0x03001038
_0814CC68: .4byte 0x0819832C
_0814CC6C: .4byte 0x08198220
_0814CC70: .4byte 0x00000282
_0814CC74: .4byte 0x00000242
_0814CC78: .4byte 0x00000216
_0814CC7C: .4byte 0x02000001
_0814CC80: .4byte 0x0000020D
