	.syntax unified
	.text

	thumb_func_start sub_8108F14
sub_8108F14:
	push {r4, r5, r6, lr}
	ldr r2, _08108F30 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, r3, #0x0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r5, r2, #0x0
	cmp r4, #0x00
	bne _08108F38
	ldr r1, _08108F34 @ =0x000002C1
	adds r0, r3, r1
	b _08108F4A
_08108F30: .4byte 0x03000FD8
_08108F34: .4byte 0x000002C1
_08108F38:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _08108F68
	ldr r2, _08108F60 @ =0x000002C1
	adds r0, r3, r2
_08108F4A:
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08108FD6
	ldr r0, _08108F64 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _08108FD6
_08108F60: .4byte 0x000002C1
_08108F64: .4byte 0x0000015F
_08108F68:
	ldr r3, [r4, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08108F7C
	cmp r0, #0x0E
	beq _08108F7C
	cmp r0, #0x01
	bne _08108FD6
_08108F7C:
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r2, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _08108FA4
	ldrh r0, [r3, #0x16]
	ldrb r1, [r3, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r1, r6
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bne _08108FD6
_08108FA4:
	movs r0, #0x02
	negs r0, r0
	cmp r2, r0
	bne _08108FC2
	ldrh r0, [r3, #0x16]
	ldrb r1, [r3, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	orrs r0, r1
	ldr r1, _08108FDC @ =0x0000204D
	cmp r0, r1
	bne _08108FD6
_08108FC2:
	ldr r2, [r5, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _08108FE0 @ =0x08108FE5
	adds r1, r4, #0x0
	adds r1, #0x08
	bl sub_807FF48
_08108FD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08108FDC: .4byte 0x0000204D
_08108FE0: .4byte sub_8108FE4
