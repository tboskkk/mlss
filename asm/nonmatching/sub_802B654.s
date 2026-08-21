	.syntax unified
	.text

	thumb_func_start sub_802B654
sub_802B654:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	ldr r1, _0802B6BC @ =0x0000035B
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802B6C4
	movs r3, #0xE2
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _0802B694
	movs r4, #0xCE
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r1, [r0, #0x00]
	adds r1, #0x60
	movs r3, #0x00
	ldsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r4, [r1, #0x04]
	adds r1, r2, #0x0
	movs r2, #0x01
	movs r3, #0x00
	bl _call_via_r4
_0802B694:
	movs r4, #0xCE
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r1, [r0, #0x00]
	adds r1, #0x60
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r7, r0
	adds r5, r6, #0x0
	adds r5, #0x28
	ldr r3, _0802B6C0 @ =0x0000010B
	adds r2, r6, r3
	ldrb r2, [r2, #0x00]
	ldr r4, [r1, #0x04]
	adds r1, r5, #0x0
	movs r3, #0x01
	bl _call_via_r4
	mov r8, r5
	b _0802B7C8
_0802B6BC: .4byte 0x0000035B
_0802B6C0: .4byte 0x0000010B
_0802B6C4:
	ldr r4, _0802B760 @ =0x00000209
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0802B704
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0802B704
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r3, [r0, #0x00]
	adds r3, #0x60
	movs r4, #0x00
	ldsh r0, [r3, r4]
	adds r0, r7, r0
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, _0802B764 @ =0x0000010F
	adds r2, r6, r4
	ldrb r2, [r2, #0x00]
	ldr r4, [r3, #0x04]
	movs r3, #0x00
	bl _call_via_r4
_0802B704:
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0802B736
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r3, [r0, #0x00]
	adds r3, #0x60
	movs r4, #0x00
	ldsh r0, [r3, r4]
	adds r0, r7, r0
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, _0802B768 @ =0x00000111
	adds r2, r6, r4
	ldrb r2, [r2, #0x00]
	ldr r4, [r3, #0x04]
	movs r3, #0x00
	bl _call_via_r4
_0802B736:
	movs r0, #0x89
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _0802B770
	adds r0, r7, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0802B770
	ldr r1, _0802B76C @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x10
	bne _0802B770
	ldrb r5, [r2, #0x00]
	b _0802B798
	.byte 0x00, 0x00
_0802B760: .4byte 0x00000209
_0802B764: .4byte 0x0000010F
_0802B768: .4byte 0x00000111
_0802B76C: .4byte 0x00000246
_0802B770:
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802B796
	movs r3, #0x8B
	lsls r3, r3, #0x01
	adds r1, r6, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802B796
	movs r4, #0x8D
	lsls r4, r4, #0x01
	adds r1, r6, r4
	ldrb r0, [r1, #0x00]
	movs r5, #0x00
	cmp r0, #0x00
	beq _0802B798
_0802B796:
	adds r5, r0, #0x0
_0802B798:
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r5, #0x00
	ble _0802B7C8
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r3, [r0, #0x00]
	adds r3, #0x60
	movs r2, #0x00
	ldsh r0, [r3, r2]
	adds r0, r7, r0
	lsls r1, r5, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, _0802B800 @ =0x0000010B
	adds r2, r6, r4
	ldrb r2, [r2, #0x00]
	subs r2, r2, r5
	ldr r4, [r3, #0x04]
	movs r3, #0x00
	bl _call_via_r4
_0802B7C8:
	adds r0, r7, #0x0
	bl sub_80465D8
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	adds r0, r7, #0x0
	bl sub_804D2CC
	adds r0, r7, #0x0
	mov r1, r8
	movs r2, #0x00
	movs r3, #0x00
	bl sub_804FB64
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802B800: .4byte 0x0000010B
