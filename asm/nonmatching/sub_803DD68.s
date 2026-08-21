	.syntax unified
	.text

	thumb_func_start sub_803DD68
sub_803DD68:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r6, #0x00
	movs r0, #0x48
	mov r12, r0
	mov r1, r12
	strh r1, [r4, #0x04]
	ldr r2, _0803DE20 @ =0x00000351
	adds r1, r4, r2
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, _0803DE24 @ =0x0000023B
	adds r7, r4, r0
	strb r6, [r7, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0803DDC2
	movs r0, #0xE2
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	mov r1, r12
	strh r1, [r0, #0x04]
	ldr r1, [r2, #0x00]
	ldr r0, _0803DE20 @ =0x00000351
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	ldr r1, _0803DE24 @ =0x0000023B
	adds r0, r0, r1
	strb r6, [r0, #0x00]
_0803DDC2:
	ldr r1, _0803DE28 @ =0x00001002
	adds r0, r4, #0x0
	bl sub_8049000
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r5, r2
	movs r1, #0x00
	ldsh r3, [r0, r1]
	adds r0, r4, #0x0
	movs r1, #0x18
	movs r2, #0x75
	bl sub_80400B0
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x3C]
	movs r1, #0x01
	bl _call_via_r2
	strb r6, [r7, #0x00]
	adds r0, r4, #0x0
	bl sub_80496B4
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xFB
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0803DE20: .4byte 0x00000351
_0803DE24: .4byte 0x0000023B
_0803DE28: .4byte 0x00001002
