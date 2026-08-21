	.syntax unified
	.text

	thumb_func_start sub_80969FC
sub_80969FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	bl sub_80884AC
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08096A1A
	b _08096C36
_08096A1A:
	ldr r1, [r7, #0x30]
	b _08096A20
_08096A1E:
	ldr r1, [r1, #0x30]
_08096A20:
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	bne _08096A1E
	adds r0, r1, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r6, [r7, #0x30]
	cmp r6, #0x00
	bne _08096A3E
	b _08096C32
_08096A3E:
	ldr r1, _08096B04 @ =0x0819832C
	ldr r0, _08096B08 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
_08096A46:
	ldr r5, [r6, #0x2C]
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _08096A5C
	cmp r2, #0x04
	bne _08096A8A
_08096A5C:
	ldr r0, _08096B0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x02]
	ldr r3, _08096B10 @ =0x00004188
	adds r2, r2, r3
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r3, #0x07
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x02
	orrs r1, r0
	strb r1, [r2, #0x12]
_08096A8A:
	cmp r7, r5
	bne _08096B68
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _08096A9E
	cmp r2, #0x04
	beq _08096A9E
	b _08096C26
_08096A9E:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _08096AA6
	adds r1, #0xFF
_08096AA6:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x04
	mov r12, r1
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08096AC0
	adds r0, #0xFF
_08096AC0:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _08096AD6
	adds r3, #0xFF
_08096AD6:
	asrs r3, r3, #0x08
	adds r4, r7, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r7, #0x28]
	adds r0, #0x08
	cmp r7, r0
	bne _08096B14
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _08096B24
	.byte 0x00, 0x00
_08096B04: .4byte 0x0819832C
_08096B08: .4byte 0x08198220
_08096B0C: .4byte 0x03000FD8
_08096B10: .4byte 0x00004188
_08096B14:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r7, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_08096B24:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08096B2C
	adds r0, #0xFF
_08096B2C:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r0, _08096B64 @ =0x03001038
	ldr r0, [r0, #0x00]
	mov r1, r8
	adds r2, r0, r1
	movs r0, #0xC8
	lsls r0, r0, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _08096B46
	adds r1, #0x3F
_08096B46:
	asrs r1, r1, #0x06
	adds r1, #0x28
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x03
	bl sub_8088164
	b _08096C26
	.byte 0x00, 0x00
_08096B64: .4byte 0x03001038
_08096B68:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _08096B76
	cmp r2, #0x04
	bne _08096C26
_08096B76:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08096B7E
	adds r1, #0xFF
_08096B7E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x04
	mov r12, r1
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08096B98
	adds r0, #0xFF
_08096B98:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08096BAE
	adds r3, #0xFF
_08096BAE:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _08096BDA
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _08096BEA
_08096BDA:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_08096BEA:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08096BF2
	adds r0, #0xFF
_08096BF2:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r0, _08096C44 @ =0x03001038
	ldr r0, [r0, #0x00]
	mov r3, r8
	adds r2, r0, r3
	movs r0, #0xC8
	lsls r0, r0, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _08096C0C
	adds r1, #0x3F
_08096C0C:
	asrs r1, r1, #0x06
	adds r1, #0x28
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x03
	bl sub_8088164
_08096C26:
	ldr r0, _08096C48 @ =0x08096C4D
	str r0, [r6, #0x4C]
	ldr r6, [r6, #0x30]
	cmp r6, #0x00
	beq _08096C32
	b _08096A46
_08096C32:
	movs r0, #0x00
	str r0, [r7, #0x4C]
_08096C36:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096C44: .4byte 0x03001038
_08096C48: .4byte sub_8096C4C
