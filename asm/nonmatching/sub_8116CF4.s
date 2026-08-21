	.syntax unified
	.text

	thumb_func_start sub_8116CF4
sub_8116CF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08116D24 @ =0x03000FF4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x0E]
	cmp r0, #0x00
	beq _08116D0C
	ldrh r2, [r1, #0x12]
	cmp r0, r2
	bne _08116D2C
_08116D0C:
	adds r0, r1, #0x0
	adds r0, #0x4A
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08116D1E
	adds r0, #0x04
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bne _08116D28
_08116D1E:
	movs r0, #0xFF
	b _08116D82
	.byte 0x00, 0x00
_08116D24: .4byte 0x03000FF4
_08116D28:
	movs r0, #0x01
	b _08116D82
_08116D2C:
	adds r0, r1, #0x0
	adds r0, #0x4A
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08116D3E
	adds r0, #0x04
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bne _08116D42
_08116D3E:
	movs r0, #0x00
	b _08116D82
_08116D42:
	ldrh r0, [r1, #0x0E]
	movs r6, #0x64
	adds r7, r0, #0x0
	muls r7, r6
	ldr r5, _08116D8C @ =0x03001038
	ldr r4, _08116D90 @ =0x0819832C
	ldr r0, _08116D94 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldrh r1, [r1, #0x12]
	adds r0, r7, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r0, r8
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x4A
	ldrh r0, [r0, #0x00]
	muls r0, r6
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	adds r1, #0x4E
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r1, #0x00
	cmp r7, r0
	ble _08116D80
	movs r1, #0x01
_08116D80:
	adds r0, r1, #0x0
_08116D82:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08116D8C: .4byte 0x03001038
_08116D90: .4byte 0x0819832C
_08116D94: .4byte 0x08198220
