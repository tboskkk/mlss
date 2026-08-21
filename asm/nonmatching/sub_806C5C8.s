	.syntax unified
	.text

	thumb_func_start sub_806C5C8
sub_806C5C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	ldr r0, _0806C60C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	movs r2, #0x08
	adds r2, r2, r1
	mov r9, r2
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	movs r0, #0x00
	mov r8, r0
	adds r7, r1, #0x0
	adds r7, #0x7E
	movs r5, #0x06
_0806C5EE:
	bl sub_8199F30
	adds r3, r0, #0x0
	movs r0, #0x01
	ands r3, r0
	cmp r3, #0x00
	bne _0806C610
	ldrb r1, [r7, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	adds r2, r6, #0x0
	adds r2, #0x76
	cmp r0, #0x02
	bne _0806C622
	b _0806C61E
_0806C60C: .4byte 0x03000FD8
_0806C610:
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C62C
_0806C61E:
	movs r0, #0x01
	mov r8, r0
_0806C622:
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C636
_0806C62C:
	ldrb r1, [r7, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C64A
_0806C636:
	mov r2, r8
	cmp r2, #0x00
	beq _0806C5EE
	cmp r3, #0x00
	bne _0806C652
	adds r3, r4, #0x0
	adds r3, #0x84
	mov r0, r9
	ldr r2, [r0, #0x28]
	b _0806C658
_0806C64A:
	adds r0, r4, #0x0
	bl sub_807C298
	b _0806C6A2
_0806C652:
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r2, [r6, #0x28]
_0806C658:
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806C678
	adds r0, #0xFF
_0806C678:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _0806C688
	adds r1, #0xFF
_0806C688:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r1, #0x14
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0806C6B0 @ =0x0806C6B5
	str r0, [r4, #0x4C]
_0806C6A2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C6B0: .4byte sub_806C6B4
