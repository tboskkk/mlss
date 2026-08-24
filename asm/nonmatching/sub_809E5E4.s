	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r4, [r7, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809E5FE
	b _0809E78E
_0809E5FE:
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	ldr r1, _0809E79C @ =0x00004063
	cmp r0, r9
	bne _0809E616
	subs r1, #0x01
_0809E616:
	ldr r5, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _0809E620
	adds r0, #0xFF
_0809E620:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0A
	ldr r3, [r7, #0x3C]
	cmp r3, #0x00
	bge _0809E62E
	adds r3, #0xFF
_0809E62E:
	asrs r3, r3, #0x08
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _0809E638
	adds r0, #0xFF
_0809E638:
	asrs r0, r0, #0x08
	adds r0, #0x0D
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_807BF34
	adds r6, r0, #0x0
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r6, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _0809E7A0 @ =0x0809E7C1
	str r0, [r6, #0x4C]
	ldr r0, _0809E7A4 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, _0809E7A8 @ =0x0809EB59
	str r0, [r6, #0x54]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	adds r0, r6, #0x0
	bl sub_807F4FC
	ldr r0, _0809E7AC @ =0x0809E885
	str r0, [r6, #0x5C]
	ldr r0, _0809E7B0 @ =0x0809E969
	str r0, [r6, #0x60]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x9C
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809E6F8
	adds r0, #0x03
_0809E6F8:
	asrs r5, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x3C]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _0809E70A
	adds r1, #0x03
_0809E70A:
	asrs r3, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x40]
	subs r0, r1, r0
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r2, r0, r1
	cmp r2, #0x00
	bge _0809E724
	adds r1, #0x03
	adds r2, r0, r1
_0809E724:
	asrs r2, r2, #0x02
	ldr r4, _0809E7B4 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xAE
	movs r5, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r3, [r2, r0]
	lsls r1, r1, #0x03
	adds r1, r3, r1
	ldr r0, _0809E7B8 @ =0x0819832C
	ldr r2, _0809E7BC @ =0x08198220
	subs r0, r0, r2
	ldr r4, [r4, #0x00]
	adds r4, r4, r0
	negs r0, r3
	muls r0, r3
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r4
	adds r1, r6, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r0, #0x89
	mov r1, r9
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r7, #0x6C]
	str r5, [r7, #0x4C]
	str r5, [r7, #0x68]
_0809E78E:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809E79C: .4byte 0x00004063
_0809E7A0: .4byte sub_809E7C0
_0809E7A4: .4byte sub_8087540
_0809E7A8: .4byte sub_809EB58
_0809E7AC: .4byte sub_809E884
_0809E7B0: .4byte sub_809E968
_0809E7B4: .4byte 0x03001038
_0809E7B8: .4byte 0x0819832C
_0809E7BC: .4byte 0x08198220
