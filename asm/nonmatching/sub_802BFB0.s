	.syntax unified
	.text

	thumb_func_start sub_802BFB0
sub_802BFB0:
	push {r4, r5, lr}
	mov r12, r0
	lsls r2, r1, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r3, #0x00]
	strb r1, [r0, #0x02]
	lsrs r2, r2, #0x1D
	lsls r2, r2, #0x02
	ldr r0, _0802C00C @ =0x0839F584
	adds r4, r2, r0
	ldr r1, [r3, #0x00]
	ldr r2, _0802C010 @ =0x0000023E
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r2, [r0, r3]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	muls r0, r2
	cmp r0, #0x00
	bge _0802BFDE
	adds r0, #0xFF
_0802BFDE:
	asrs r3, r0, #0x08
	ldr r5, _0802C014 @ =0x00000353
	adds r0, r1, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r1, r0, #0x1E
	asrs r3, r1
	movs r5, #0x02
	ldsh r0, [r4, r5]
	muls r2, r0
	cmp r2, #0x00
	bge _0802BFF8
	adds r2, #0xFF
_0802BFF8:
	asrs r2, r2, #0x08
	asrs r2, r1
	cmp r3, #0x00
	ble _0802C018
	adds r3, #0x3F
	movs r0, #0x40
	negs r0, r0
	ands r3, r0
	b _0802C028
	.byte 0x00, 0x00
_0802C00C: .4byte dword_839F584 @ =0x0839F584
_0802C010: .4byte 0x0000023E
_0802C014: .4byte 0x00000353
_0802C018:
	cmp r3, #0x00
	bge _0802C028
	negs r3, r3
	adds r3, #0x3F
	movs r0, #0x40
	negs r0, r0
	ands r3, r0
	negs r3, r3
_0802C028:
	cmp r2, #0x00
	ble _0802C036
	adds r2, #0x3F
	movs r0, #0x40
	negs r0, r0
	ands r2, r0
	b _0802C046
_0802C036:
	cmp r2, #0x00
	bge _0802C046
	negs r2, r2
	adds r2, #0x3F
	movs r0, #0x40
	negs r0, r0
	ands r2, r0
	negs r2, r2
_0802C046:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	ldr r4, _0802C064 @ =0x00000242
	adds r1, r1, r4
	strh r3, [r1, #0x00]
	ldr r0, [r0, #0x00]
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r0, r0, r5
	strh r2, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0802C064: .4byte 0x00000242
