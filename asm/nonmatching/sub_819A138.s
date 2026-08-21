	.syntax unified
	.text

	thumb_func_start sub_819A138
sub_819A138:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0819A1F8 @ =0x03001078
	str r0, [r2, #0x00]
	str r1, [r0, #0x00]
	ldr r7, _0819A1FC @ =0x0000026F
	mov r8, r2
	mov r6, r8
	ldr r5, _0819A200 @ =0x6C078965
	lsrs r2, r1, #0x1E
	eors r2, r1
	adds r1, r2, #0x0
	muls r1, r5
	adds r1, #0x01
	str r1, [r0, #0x04]
	lsrs r2, r1, #0x1E
	eors r1, r2
	muls r1, r5
	adds r1, #0x02
	str r1, [r0, #0x08]
	lsrs r2, r1, #0x1E
	eors r1, r2
	muls r1, r5
	adds r1, #0x03
	str r1, [r0, #0x0C]
	movs r0, #0x0C
	mov r12, r0
	movs r4, #0x04
_0819A172:
	ldr r0, [r6, #0x00]
	lsls r2, r4, #0x02
	adds r2, r0, r2
	add r0, r12
	ldr r0, [r0, #0x00]
	lsrs r1, r0, #0x1E
	eors r0, r1
	muls r0, r5
	adds r0, r0, r4
	str r0, [r2, #0x00]
	mov r1, r12
	adds r1, #0x04
	adds r3, r4, #0x1
	ldr r0, [r6, #0x00]
	lsls r2, r3, #0x02
	adds r2, r0, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r1, r0, #0x1E
	eors r0, r1
	muls r0, r5
	adds r0, r0, r3
	str r0, [r2, #0x00]
	mov r1, r12
	adds r1, #0x08
	adds r3, r4, #0x2
	ldr r0, [r6, #0x00]
	lsls r2, r3, #0x02
	adds r2, r0, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r1, r0, #0x1E
	eors r0, r1
	muls r0, r5
	adds r0, r0, r3
	str r0, [r2, #0x00]
	mov r1, r12
	adds r1, #0x0C
	adds r3, r4, #0x3
	ldr r0, [r6, #0x00]
	lsls r2, r3, #0x02
	adds r2, r0, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r1, r0, #0x1E
	eors r0, r1
	muls r0, r5
	adds r0, r0, r3
	str r0, [r2, #0x00]
	movs r1, #0x10
	add r12, r1
	adds r4, #0x04
	cmp r4, r7
	ble _0819A172
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r1, #0x9C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	movs r1, #0x01
	str r1, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819A1F8: .4byte 0x03001078
_0819A1FC: .4byte 0x0000026F
_0819A200: .4byte 0x6C078965
