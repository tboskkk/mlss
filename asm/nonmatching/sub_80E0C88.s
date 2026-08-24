	.syntax unified
	.text

	thumb_func_start sub_80E0C88
sub_80E0C88:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	ldr r0, _080E0D6C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r4, #0x00
	strh r5, [r0, #0x00]
	ldr r2, _080E0D70 @ =0x084FB4FC
	mov r9, r2
	lsls r0, r5, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _080E0D74 @ =0x089F2CE0
	mov r8, r1
	add r0, r8
	ldr r1, [r0, #0x00]
	add r1, r8
	ldr r2, _080E0D78 @ =0x06004000
	movs r3, #0x01
	negs r3, r3
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	adds r0, r5, #0x3
	lsls r0, r0, #0x01
	mov r10, r0
	add r0, r9
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x02
	add r1, r8
	adds r5, #0x02
	lsls r5, r5, #0x01
	mov r2, r9
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r1, #0x00]
	ldr r0, [r0, #0x00]
	subs r7, r1, r0
	ldr r6, _080E0D7C @ =0x03001034
	ldr r4, _080E0D80 @ =0x08198154
	ldr r0, _080E0D84 @ =0x081980D8
	subs r4, r4, r0
	ldr r3, [r6, #0x00]
	adds r3, r3, r4
	ldr r0, _080E0D88 @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r0, _080E0D8C @ =0x00003DF0
	adds r1, r1, r0
	ldr r0, _080E0D90 @ =0x02000180
	adds r2, r7, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	adds r3, r0, r4
	ldr r4, _080E0D94 @ =0x0300034C
	ldr r1, _080E0D98 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _080E0D1E
	mov r5, r10
_080E0D1E:
	mov r2, r9
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	add r0, r8
	ldr r1, _080E0D90 @ =0x02000180
	adds r2, r7, #0x0
	bl _call_via_r3
	adds r2, r7, #0x0
	cmp r2, #0x00
	bge _080E0D3C
	adds r2, #0x1F
_080E0D3C:
	asrs r0, r2, #0x05
	movs r1, #0x08
	subs r1, r1, r0
	movs r0, #0xFF
	lsls r0, r0, #0x08
	asrs r0, r1
	ldr r2, _080E0D9C @ =0xFFFFFF00
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r4, #0x02]
	ldr r0, _080E0DA0 @ =0x080E1349
	movs r1, #0x00
	bl sub_807FF20
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E0D6C: .4byte 0x03000FD8
_080E0D70: .4byte 0x084FB4FC
_080E0D74: .4byte 0x089F2CE0
_080E0D78: .4byte 0x06004000
_080E0D7C: .4byte 0x03001034
_080E0D80: .4byte 0x08198154
_080E0D84: .4byte 0x081980D8
_080E0D88: .4byte 0x03000FDC
_080E0D8C: .4byte 0x00003DF0
_080E0D90: .4byte 0x02000180
_080E0D94: .4byte 0x0300034C
_080E0D98: .4byte 0x00000888
_080E0D9C: .4byte 0xFFFFFF00
_080E0DA0: .4byte sub_80E1348
