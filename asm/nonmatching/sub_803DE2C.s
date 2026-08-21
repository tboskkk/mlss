	.syntax unified
	.text

	thumb_func_start sub_803DE2C
sub_803DE2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r6, r7, r0
	ldr r2, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r5, r7, r1
	ldr r1, [r5, #0x00]
	movs r3, #0x00
	mov r8, r3
	movs r0, #0x58
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldr r4, _0803DEF0 @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldr r2, _0803DEF4 @ =0x0000023B
	adds r0, r0, r2
	mov r3, r8
	strb r3, [r0, #0x00]
	adds r1, r1, r2
	strb r3, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _0803DEF8 @ =0x00001002
	bl sub_8049000
	ldr r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r2, #0x00
	ldsh r3, [r1, r2]
	movs r1, #0x18
	movs r2, #0x75
	bl sub_80400B0
	ldr r0, [r5, #0x00]
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldr r2, [r1, #0x00]
	movs r3, #0x38
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x3C]
	movs r1, #0x01
	bl _call_via_r2
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r0, [r2, #0x00]
	ldr r1, _0803DEFC @ =0xFFFE7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	bl sub_80496B4
	ldr r0, [r5, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xFB
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0803DEF0: .4byte 0x00000351
_0803DEF4: .4byte 0x0000023B
_0803DEF8: .4byte 0x00001002
_0803DEFC: .4byte 0xFFFE7FFF
