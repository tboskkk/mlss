	.syntax unified
	.text

	thumb_func_start sub_807C1C8
sub_807C1C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0x0
	mov r8, r1
	cmp r2, #0x07
	ble _0807C1FC
	cmp r2, #0x0F
	bgt _0807C1FC
	ldr r1, _0807C200 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	movs r2, #0x98
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldr r1, [r1, #0x00]
	adds r7, r1, r0
	ldr r0, _0807C204 @ =0xFFFFF980
	adds r6, r7, r0
	ldr r1, _0807C208 @ =0xFFFFF9F6
	adds r5, r7, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	bne _0807C20C
_0807C1FC:
	movs r0, #0x00
	b _0807C27A
_0807C200: .4byte 0x03000FDC
_0807C204: .4byte 0xFFFFF980
_0807C208: .4byte 0xFFFFF9F6
_0807C20C:
	ldr r4, [r6, #0x08]
	ldr r0, _0807C284 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0xD0
	bl _call_via_r3
	str r4, [r6, #0x08]
	ldr r0, _0807C288 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r6, #0x00]
	str r6, [r1, #0x78]
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r2, _0807C28C @ =0xFFFFFA10
	adds r1, r7, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1, #0x00]
	ldrb r1, [r4, #0x1F]
	subs r0, #0x14
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r0, _0807C290 @ =0xFFFFFF00
	cmp r8, r0
	beq _0807C278
	ldr r1, _0807C294 @ =0xFFFFFA45
	adds r0, r7, r1
	mov r2, r8
	strb r2, [r0, #0x00]
_0807C278:
	adds r0, r6, #0x0
_0807C27A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807C284: .4byte 0x03001034
_0807C288: .4byte 0x03000FD8
_0807C28C: .4byte 0xFFFFFA10
_0807C290: .4byte 0xFFFFFF00
_0807C294: .4byte 0xFFFFFA45
