	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08067AA0
	b _08067C68
_08067AA0:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067AB4
	adds r1, #0xFF
_08067AB4:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067ABE
	adds r2, #0xFF
_08067ABE:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067AC8
	adds r3, #0xFF
_08067AC8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08067C78 @ =0x00001092
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08067ADC
	adds r0, #0xFF
_08067ADC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x12
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08067AEA
	adds r3, #0xFF
_08067AEA:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08067AF4
	adds r0, #0xFF
_08067AF4:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067C7C @ =0x00004106
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
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
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08067C80 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08067C84 @ =0x080680D5
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	movs r0, #0xAC
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0xD8
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r7, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	movs r0, #0x8C
	adds r0, r0, r5
	mov r9, r0
	ldr r0, [r5, #0x40]
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08067BBC
	adds r0, #0xFF
_08067BBC:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08067BCC
	adds r0, #0xFF
_08067BCC:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08067BDC
	adds r0, #0xFF
_08067BDC:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r4, r1, r0
	ldr r2, _08067C88 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08067C12
	ldr r2, _08067C8C @ =0x000001FF
	adds r0, r0, r2
_08067C12:
	asrs r1, r0, #0x09
	mov r8, r1
	lsrs r0, r0, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08067C2E
	movs r0, #0x02
_08067C2E:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	movs r1, #0x00
	mov r0, r10
	strh r1, [r0, #0x00]
	ldr r0, _08067C90 @ =0x08067C99
	str r0, [r5, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	mov r2, r9
	str r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x57
	bl play_sfx_80195B4
	ldr r0, _08067C94 @ =0x0806814D
	str r0, [r6, #0x4C]
_08067C68:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08067C78: .4byte 0x00001092
_08067C7C: .4byte 0x00004106
_08067C80: .4byte sub_8087540
_08067C84: .4byte sub_80680D4
_08067C88: .4byte 0x03001038
_08067C8C: .4byte 0x000001FF
_08067C90: .4byte sub_8067C98
_08067C94: .4byte sub_806814C
