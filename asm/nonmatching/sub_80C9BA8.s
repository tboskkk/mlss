	.syntax unified
	.text

	thumb_func_start sub_80C9BA8
sub_80C9BA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C9D10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r6, [r0, #0x74]
	adds r7, r6, #0x0
	adds r7, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	ldr r2, [r4, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _080C9BDA
	adds r1, #0x3F
_080C9BDA:
	asrs r1, r1, #0x06
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	subs r0, r0, r1
	strh r0, [r2, #0x06]
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C9BF6
	b _080C9D00
_080C9BF6:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9C16
	cmp r1, #0x04
	bne _080C9C5E
_080C9C16:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080C9C1E
	adds r1, #0xFF
_080C9C1E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080C9C34
	adds r2, #0xFF
_080C9C34:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r3, r8
	str r3, [sp, #0x000]
	adds r0, r7, #0x0
	movs r3, #0x06
	bl sub_808843C
	movs r1, #0x3C
	adds r0, r6, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	ldr r1, _080C9D14 @ =0x00000399
	adds r0, r7, #0x0
	bl sub_8088164
_080C9C5E:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9C70
	cmp r1, #0x04
	bne _080C9C88
_080C9C70:
	ldr r2, _080C9D18 @ =0x00002053
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C9C88:
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9CA2
	cmp r1, #0x04
	bne _080C9CBA
_080C9CA2:
	ldr r2, _080C9D1C @ =0x00002035
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C9CBA:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C9CC2
	adds r1, #0xFF
_080C9CC2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C9CCC
	adds r2, #0xFF
_080C9CCC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C9CD6
	adds r3, #0xFF
_080C9CD6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080C9D20 @ =0x00002FF9
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C9D24 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C9D28 @ =0x080C9D2D
	mov r1, r9
	str r0, [r1, #0x4C]
_080C9D00:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C9D10: .4byte 0x03000FD8
_080C9D14: .4byte 0x00000399
_080C9D18: .4byte 0x00002053
_080C9D1C: .4byte 0x00002035
_080C9D20: .4byte 0x00002FF9
_080C9D24: .4byte 0x00000FFF
_080C9D28: .4byte sub_80C9D2C
