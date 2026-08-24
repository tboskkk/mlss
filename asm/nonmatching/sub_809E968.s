	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	mov r8, r0
	cmp r0, #0x00
	bne _0809EA3C
	ldr r1, [r5, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r3, #0x81
	lsls r3, r3, #0x01
	adds r0, r1, r3
	movs r4, #0x00
	ldsh r2, [r0, r4]
	movs r7, #0x85
	lsls r7, r7, #0x01
	adds r0, r1, r7
	ldrh r1, [r0, #0x00]
	ldr r3, [r6, #0x28]
	movs r4, #0x82
	lsls r4, r4, #0x01
	adds r0, r3, r4
	movs r7, #0x00
	ldsh r4, [r0, r7]
	movs r7, #0x86
	lsls r7, r7, #0x01
	adds r0, r3, r7
	ldrh r3, [r0, #0x00]
	movs r0, #0x66
	muls r2, r0
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0809E9BE
	adds r0, #0xFF
_0809E9BE:
	asrs r2, r0, #0x08
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r1, r0, #0x04
	adds r0, r0, r1
	muls r0, r3
	cmp r0, #0x00
	bge _0809E9D0
	adds r0, #0xFF
_0809E9D0:
	asrs r0, r0, #0x08
	subs r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r0, r2, r0
	asrs r2, r0, #0x01
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r12, r0
	ble _0809E9F8
	mov r0, r12
	muls r0, r2
	adds r2, r0, #0x0
	cmp r2, #0x00
	bge _0809E9F0
	ldr r1, _0809E9F4 @ =0x0000FFFF
	adds r0, r2, r1
_0809E9F0:
	asrs r2, r0, #0x10
	b _0809EA02
_0809E9F4: .4byte 0x0000FFFF
_0809E9F8:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0809EA00
	adds r0, #0xFF
_0809EA00:
	asrs r2, r0, #0x08
_0809EA02:
	cmp r2, #0x01
	bgt _0809EA08
	movs r2, #0x01
_0809EA08:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0809EA10
	adds r0, #0xFF
_0809EA10:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _0809EA1C
	adds r0, #0xFF
_0809EA1C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_810E03C
	adds r0, r6, #0x0
	bl sub_809EB58
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_0809EA3C:
	mov r0, r8
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
