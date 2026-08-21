	.syntax unified
	.text

	thumb_func_start sub_806FA00
sub_806FA00:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	movs r1, #0x19
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x88
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r6, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0806FA3A
	adds r0, #0xFF
_0806FA3A:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806FA4A
	adds r0, #0xFF
_0806FA4A:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806FA5A
	adds r0, #0xFF
_0806FA5A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r6, r1, r0
	ldr r2, _0806FAD4 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806FAAA
	movs r0, #0x02
_0806FAAA:
	negs r0, r0
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806FAD8 @ =0x0806FADD
	str r0, [r4, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806FAD4: .4byte 0x03001038
_0806FAD8: .4byte sub_806FADC
