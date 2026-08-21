	.syntax unified
	.text

	thumb_func_start sub_80D69D8
sub_80D69D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080D6A8C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r6, [r5, #0x4C]
	cmp r6, #0x00
	bne _080D6A82
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6A12
	cmp r1, #0x04
	bne _080D6A42
_080D6A12:
	ldr r2, _080D6A90 @ =0x03001038
	ldr r0, _080D6A94 @ =0x0819832C
	ldr r1, _080D6A98 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r6, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6A42:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6A54
	cmp r1, #0x04
	bne _080D6A70
_080D6A54:
	ldr r2, _080D6A9C @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D6A70:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D6AA0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D6AA4 @ =0x080D6AA9
	mov r1, r8
	str r0, [r1, #0x4C]
_080D6A82:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D6A8C: .4byte 0x03000FD8
_080D6A90: .4byte 0x03001038
_080D6A94: .4byte 0x0819832C
_080D6A98: .4byte 0x08198220
_080D6A9C: .4byte 0x00002024
_080D6AA0: .4byte 0x00000FFF
_080D6AA4: .4byte sub_80D6AA8
