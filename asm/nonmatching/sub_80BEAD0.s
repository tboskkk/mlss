	.syntax unified
	.text

	thumb_func_start sub_80BEAD0
sub_80BEAD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080BEB28 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r3, r0, r1
	cmp r3, #0x00
	blt _080BEB38
	ldr r6, [r5, #0x18]
	cmp r6, #0x00
	beq _080BEB38
	ldr r2, _080BEB2C @ =0x03001038
	ldr r0, _080BEB30 @ =0x0819832C
	ldr r1, _080BEB34 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	muls r0, r3
	adds r1, r4, #0x0
	adds r1, #0x82
	movs r4, #0x00
	ldsh r1, [r1, r4]
	adds r1, r3, r1
	bl _call_via_r2
	b _080BEB3A
	.byte 0x00, 0x00
_080BEB28: .4byte 0x03000FD8
_080BEB2C: .4byte 0x03001038
_080BEB30: .4byte 0x0819832C
_080BEB34: .4byte 0x08198220
_080BEB38:
	movs r0, #0x00
_080BEB3A:
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BEB88
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7D
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BEB66
	cmp r1, #0x04
	bne _080BEB82
_080BEB66:
	ldr r2, _080BEB94 @ =0x00002062
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BEB82:
	ldr r0, _080BEB98 @ =0x080BEB9D
	mov r1, r8
	str r0, [r1, #0x4C]
_080BEB88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BEB94: .4byte 0x00002062
_080BEB98: .4byte sub_80BEB9C
