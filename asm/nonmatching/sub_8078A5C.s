	.syntax unified
	.text

	thumb_func_start sub_8078A5C
sub_8078A5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	mov r8, r0
	mov r1, r8
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078B6C
	mov r0, r8
	bl sub_807F4FC
	ldr r0, _08078B78 @ =0x08079485
	mov r1, r8
	str r0, [r1, #0x58]
	ldr r0, _08078B7C @ =0x08078B95
	str r0, [r1, #0x60]
	ldr r1, [r1, #0x28]
	mov r3, r8
	ldr r2, [r3, #0x38]
	cmp r2, #0x00
	bge _08078A92
	adds r2, #0xFF
_08078A92:
	asrs r2, r2, #0x08
	mov r4, r8
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08078A9E
	adds r0, #0xFF
_08078A9E:
	asrs r0, r0, #0x08
	subs r3, r0, #0x2
	mov r4, r8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08078AAC
	adds r0, #0xFF
_08078AAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078B80 @ =0x00004030
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	str r0, [r7, #0x30]
	str r7, [r4, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078B84 @ =0x080794FD
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldr r0, _08078B88 @ =0x00002222
	strh r0, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	ldr r1, _08078B8C @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r5, r0, #0x0
	movs r4, #0x00
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	str r4, [r0, #0x00]
	ldr r0, _08078B90 @ =0x0807953D
	mov r1, r8
	str r0, [r1, #0x4C]
_08078B6C:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078B78: .4byte sub_8079484
_08078B7C: .4byte sub_8078B94
_08078B80: .4byte 0x00004030
_08078B84: .4byte sub_80794FC
_08078B88: .4byte 0x00002222
_08078B8C: .4byte 0x03000FD8
_08078B90: .4byte sub_807953C
