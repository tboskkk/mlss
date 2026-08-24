	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	ldr r5, [r6, #0x28]
	ldr r2, [r6, #0x2C]
	adds r7, r6, #0x0
	adds r7, #0xAE
	adds r0, #0xB0
	ldrh r0, [r0, #0x00]
	ldrh r1, [r7, #0x00]
	adds r0, r0, r1
	strh r0, [r7, #0x00]
	mov r4, sp
	adds r4, #0x0E
	add r0, sp, #0x010
	mov r8, r0
	ldr r1, [r2, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r3, [r0, #0x00]
	ldr r0, [r5, #0x40]
	subs r3, r3, r0
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	ldr r1, [r5, #0x44]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r2, #0x28]
	adds r0, #0xE0
	ldr r1, [r5, #0x48]
	movs r2, #0xA0
	lsls r2, r2, #0x03
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	str r0, [sp, #0x008]
	add r0, sp, #0x00C
	adds r1, r4, #0x0
	mov r2, r8
	bl sub_8087968
	add r0, sp, #0x00C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r6, #0x3C]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	mov r2, r8
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	movs r2, #0x00
	ldsh r1, [r7, r2]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmn r1, r0
	bgt _0809E870
	adds r0, r5, #0x0
	adds r0, #0x08
	ldr r1, _0809E87C @ =0x0809EB71
	str r1, [r0, #0x4C]
	ldr r1, _0809E880 @ =0x08087541
	str r1, [r0, #0x68]
	ldr r1, [r6, #0x6C]
	str r1, [r0, #0x6C]
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r6, #0x6C]
	adds r0, r6, #0x0
	bl sub_807C298
_0809E870:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809E87C: .4byte sub_809EB70
_0809E880: .4byte sub_8087540
