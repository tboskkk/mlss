	.syntax unified
	.text

	thumb_func_start sub_80D3298
sub_80D3298:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080D33D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D32C0
	b _080D33CE
_080D32C0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x87
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D32DC
	cmp r1, #0x04
	bne _080D32F8
_080D32DC:
	ldr r2, _080D33DC @ =0x00002055
	adds r0, r7, #0x0
	movs r1, #0x00
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
_080D32F8:
	ldr r1, _080D33E0 @ =0x0000208B
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r5, #0x04
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	strh r0, [r1, #0x0E]
	ldrb r0, [r2, #0x00]
	movs r4, #0x01
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x10]
	movs r1, #0x90
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x18]
	movs r1, #0xE0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r6, r0, #0x0
	ldr r2, _080D33E4 @ =0x000020B9
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0x02
	strh r0, [r1, #0x0E]
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D338E
	cmp r1, #0x04
	bne _080D33BC
_080D338E:
	ldr r2, _080D33E8 @ =0x03001038
	ldr r0, _080D33EC @ =0x0819832C
	ldr r1, _080D33F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x78
	bl _call_via_r2
	adds r1, r7, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080D33BC:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D33F4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D33F8 @ =0x080D33FD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D33CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D33D8: .4byte 0x03000FD8
_080D33DC: .4byte 0x00002055
_080D33E0: .4byte 0x0000208B
_080D33E4: .4byte 0x000020B9
_080D33E8: .4byte 0x03001038
_080D33EC: .4byte 0x0819832C
_080D33F0: .4byte 0x08198220
_080D33F4: .4byte 0x00000FFF
_080D33F8: .4byte sub_80D33FC
