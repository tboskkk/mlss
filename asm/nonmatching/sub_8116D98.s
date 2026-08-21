	.syntax unified
	.text

	thumb_func_start sub_8116D98
sub_8116D98:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08116DF0 @ =0x03000FF4
	mov r8, r0
	ldr r3, [r0, #0x00]
	ldrh r4, [r3, #0x14]
	ldrh r2, [r3, #0x18]
	cmp r4, r2
	bne _08116DBC
	adds r0, r3, #0x0
	adds r0, #0x50
	adds r1, r3, #0x0
	adds r1, #0x54
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	beq _08116DEC
_08116DBC:
	ldrh r5, [r3, #0x0E]
	cmp r5, #0x00
	bne _08116DDC
	adds r0, r3, #0x0
	adds r0, #0x4A
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08116DEC
	adds r0, r3, #0x0
	adds r0, #0x50
	adds r1, r3, #0x0
	adds r1, #0x54
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	beq _08116DEC
_08116DDC:
	adds r1, r3, #0x0
	adds r0, r1, #0x0
	adds r0, #0x4A
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08116DF4
	cmp r4, r2
	bne _08116E02
_08116DEC:
	movs r0, #0xFF
	b _08116E7A
_08116DF0: .4byte 0x03000FF4
_08116DF4:
	adds r0, r1, #0x0
	adds r0, #0x50
	adds r1, #0x54
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bne _08116E06
_08116E02:
	movs r0, #0x00
	b _08116E7A
_08116E06:
	cmp r5, #0x00
	beq _08116E0E
	cmp r4, r2
	bne _08116E12
_08116E0E:
	movs r0, #0x01
	b _08116E7A
_08116E12:
	ldrh r0, [r3, #0x14]
	movs r6, #0x64
	adds r7, r0, #0x0
	muls r7, r6
	ldr r5, _08116E64 @ =0x03001038
	ldr r4, _08116E68 @ =0x0819832C
	ldr r0, _08116E6C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldrh r1, [r3, #0x18]
	adds r0, r7, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r0, r8
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x50
	ldrh r0, [r0, #0x00]
	muls r0, r6
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	adds r1, #0x54
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	cmp r7, #0x00
	bne _08116E70
	cmp r0, #0x00
	bne _08116E70
	movs r2, #0x00
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x54
	ldrh r0, [r0, #0x18]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bls _08116E78
	b _08116E76
_08116E64: .4byte 0x03001038
_08116E68: .4byte 0x0819832C
_08116E6C: .4byte 0x08198220
_08116E70:
	movs r2, #0x00
	cmp r7, r0
	ble _08116E78
_08116E76:
	movs r2, #0x01
_08116E78:
	adds r0, r2, #0x0
_08116E7A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
