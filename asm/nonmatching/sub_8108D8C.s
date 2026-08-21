	.syntax unified
	.text

	thumb_func_start sub_8108D8C
sub_8108D8C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r4, r6, r0
	ldrh r1, [r4, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x07
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08108DDC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r5, r0
	blt _08108DDC
	ldrh r1, [r4, #0x00]
	ldr r0, _08108DD8 @ =0x00000FFF
	ands r0, r1
	orrs r0, r7
	strh r0, [r4, #0x00]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	b _08108DDE
_08108DD8: .4byte 0x00000FFF
_08108DDC:
	movs r0, #0x00
_08108DDE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
