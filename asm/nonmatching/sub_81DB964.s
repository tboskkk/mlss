	push {r4, r5, lr}
	add sp, #-0x014
	adds r2, r0, #0x0
	movs r0, #0x03
	str r0, [sp, #0x000]
	lsrs r1, r2, #0x1F
	str r1, [sp, #0x004]
	cmp r2, #0x00
	bne _081DB97C
	movs r0, #0x02
	str r0, [sp, #0x000]
	b _081DB9D2
_081DB97C:
	movs r0, #0x3C
	str r0, [sp, #0x008]
	cmp r1, #0x00
	beq _081DB9A2
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _081DB99C
	ldr r1, _081DB998 @ =0x00000000
	ldr r0, _081DB994 @ =0xC1E00000
	b _081DB9D8
	.byte 0x00, 0x00
_081DB994: .4byte 0xC1E00000
_081DB998: .4byte 0x00000000
_081DB99C:
	negs r0, r2
	asrs r1, r0, #0x1F
	b _081DB9A6
_081DB9A2:
	adds r0, r2, #0x0
	asrs r1, r2, #0x1F
_081DB9A6:
	str r0, [sp, #0x00C]
	str r1, [sp, #0x010]
	ldr r0, [sp, #0x010]
	ldr r1, _081DB9DC @ =0x0FFFFFFF
	cmp r0, r1
	bhi _081DB9D2
	adds r5, r1, #0x0
	ldr r4, [sp, #0x008]
_081DB9B6:
	ldr r0, [sp, #0x00C]
	ldr r1, [sp, #0x010]
	lsrs r3, r0, #0x1F
	lsls r2, r1, #0x01
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r0, #0x01
	str r0, [sp, #0x00C]
	str r1, [sp, #0x010]
	subs r4, #0x01
	ldr r0, [sp, #0x010]
	cmp r0, r5
	bls _081DB9B6
	str r4, [sp, #0x008]
_081DB9D2:
	mov r0, sp
	bl sub_81DAD4C
_081DB9D8:
	add sp, #0x014
	pop {r4, r5, pc}
_081DB9DC: .4byte 0x0FFFFFFF
