	.syntax unified
	.text

	thumb_func_start sub_8020994
sub_8020994:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	ldr r7, _08020A5C @ =0x0203FFB8
	ldr r6, _08020A60 @ =0x0203FFA8
	ldr r0, _08020A64 @ =0x03000D74
	str r7, [r0, #0x00]
	movs r1, #0x00
	str r1, [r6, #0x04]
	str r1, [r6, #0x00]
	ldr r0, _08020A68 @ =0x0003FFB8
	str r0, [r6, #0x08]
	strb r1, [r6, #0x0C]
	ldr r0, _08020A6C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	movs r2, #0x40
	bl _call_via_r3
	mov r2, r8
	strh r2, [r7, #0x0A]
	strh r2, [r7, #0x08]
	strb r4, [r7, #0x04]
	strb r4, [r7, #0x03]
	strb r5, [r7, #0x06]
	strb r5, [r7, #0x05]
	str r6, [r7, #0x2C]
	movs r0, #0x01
	negs r0, r0
	adds r2, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x0C
	movs r3, #0x0F
_080209F4:
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x02]
	orrs r0, r2
	strh r0, [r1, #0x02]
	ldrh r0, [r1, #0x04]
	orrs r0, r2
	strh r0, [r1, #0x04]
	ldrh r0, [r1, #0x06]
	orrs r0, r2
	strh r0, [r1, #0x06]
	ldrh r0, [r1, #0x08]
	orrs r0, r2
	strh r0, [r1, #0x08]
	ldrh r0, [r1, #0x0A]
	orrs r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0C]
	orrs r0, r2
	strh r0, [r1, #0x0C]
	ldrh r0, [r1, #0x0E]
	orrs r0, r2
	strh r0, [r1, #0x0E]
	adds r1, #0x10
	subs r3, #0x08
	cmp r3, #0x00
	bge _080209F4
	ldr r0, _08020A70 @ =0x00000A28
	mov r2, r9
	lsrs r1, r2, #0x07
	movs r2, #0x01
	eors r1, r2
	ldr r2, _08020A74 @ =0x081E25AC
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x3C]
	mov r0, r9
	bl sub_801DFB0
	ldr r0, [r7, #0x3C]
	movs r1, #0x82
	bl sub_802083C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08020A5C: .4byte 0x0203FFB8
_08020A60: .4byte 0x0203FFA8
_08020A64: .4byte 0x03000D74
_08020A68: .4byte 0x0003FFB8
_08020A6C: .4byte 0x03001034
_08020A70: .4byte 0x00000A28
_08020A74: .4byte dword_81E25AC @ =0x081E25AC
