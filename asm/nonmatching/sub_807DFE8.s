	.syntax unified
	.text

	thumb_func_start sub_807DFE8
sub_807DFE8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r2, [r0, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x00
	beq _0807E07C
	ldr r1, [r4, #0x4C]
	ldr r0, _0807E058 @ =0x08086961
	adds r5, r4, #0x0
	cmp r1, r0
	bne _0807E008
	ldr r5, [r4, #0x30]
_0807E008:
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1B
	adds r0, r5, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	cmp r7, #0x00
	beq _0807E07C
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_80875E0
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _0807E07C
	cmp r5, r4
	beq _0807E02E
	movs r0, #0x00
	str r0, [r5, #0x54]
_0807E02E:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r7
	cmp r0, #0x00
	bne _0807E07C
	movs r5, #0x00
	ldr r2, _0807E05C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x54]
	cmp r1, #0x00
	beq _0807E078
	adds r0, r2, #0x0
	movs r3, #0x00
_0807E04A:
	ldr r2, [r1, #0x34]
	cmp r1, r4
	bne _0807E070
	cmp r5, #0x00
	beq _0807E060
	str r2, [r5, #0x34]
	b _0807E064
_0807E058: .4byte sub_8086960
_0807E05C: .4byte 0x03000FD8
_0807E060:
	ldr r0, [r0, #0x00]
	str r2, [r0, #0x54]
_0807E064:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807E078
_0807E070:
	adds r5, r1, #0x0
	adds r1, r2, #0x0
	cmp r1, #0x00
	bne _0807E04A
_0807E078:
	movs r0, #0x01
	b _0807E07E
_0807E07C:
	movs r0, #0x00
_0807E07E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
