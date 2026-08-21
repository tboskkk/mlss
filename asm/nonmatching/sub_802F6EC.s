	.syntax unified
	.text

	thumb_func_start sub_802F6EC
sub_802F6EC:
	push {r4, lr}
	mov r12, r0
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r12
	ldr r3, [r4, #0x00]
	ldr r0, [r3, #0x0C]
	cmp r0, #0x00
	bge _0802F700
	adds r0, #0xFF
_0802F700:
	asrs r2, r0, #0x08
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x14]
	subs r0, r0, r1
	ldr r1, [r3, #0x18]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0802F712
	adds r0, #0xFF
_0802F712:
	asrs r1, r0, #0x08
	cmp r2, #0x00
	blt _0802F732
	cmp r1, #0x00
	blt _0802F732
	ldr r0, _0802F748 @ =0x00000286
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bge _0802F732
	movs r0, #0xA2
	lsls r0, r0, #0x02
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _0802F750
_0802F732:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	ldr r0, _0802F74C @ =0x00000353
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	b _0802F77C
	.byte 0x00, 0x00
_0802F748: .4byte 0x00000286
_0802F74C: .4byte 0x00000353
_0802F750:
	mov r0, r12
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	ldr r2, _0802F7EC @ =0x0000020D
	adds r3, r3, r2
	eors r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, _0802F7F0 @ =0x00000353
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
_0802F77C:
	strb r0, [r1, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802F826
	movs r4, #0x81
	lsls r4, r4, #0x02
	add r4, r12
	ldr r3, [r4, #0x00]
	ldr r0, [r3, #0x0C]
	cmp r0, #0x00
	bge _0802F79E
	adds r0, #0xFF
_0802F79E:
	asrs r2, r0, #0x08
	ldr r1, [r3, #0x10]
	ldr r0, [r3, #0x14]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0802F7B8
	adds r0, #0xFF
_0802F7B8:
	asrs r1, r0, #0x08
	cmp r2, #0x00
	blt _0802F7D8
	cmp r1, #0x00
	blt _0802F7D8
	ldr r0, _0802F7F4 @ =0x00000286
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bge _0802F7D8
	movs r0, #0xA2
	lsls r0, r0, #0x02
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _0802F7F8
_0802F7D8:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	ldr r2, _0802F7F0 @ =0x00000353
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	b _0802F824
_0802F7EC: .4byte 0x0000020D
_0802F7F0: .4byte 0x00000353
_0802F7F4: .4byte 0x00000286
_0802F7F8:
	mov r0, r12
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	ldr r2, _0802F82C @ =0x0000020D
	adds r3, r3, r2
	eors r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, _0802F830 @ =0x00000353
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
_0802F824:
	strb r0, [r1, #0x00]
_0802F826:
	pop {r4}
	pop {r0}
	bx r0
_0802F82C: .4byte 0x0000020D
_0802F830: .4byte 0x00000353
