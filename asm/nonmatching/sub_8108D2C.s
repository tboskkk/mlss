	.syntax unified
	.text

	thumb_func_start sub_8108D2C
sub_8108D2C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r4, r6, r0
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08108D84
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r5, r0
	blt _08108D84
	ldrh r1, [r4, #0x00]
	ldr r0, _08108D7C @ =0x00000FFF
	ands r0, r1
	ldr r2, _08108D80 @ =0xFFFF8000
	adds r1, r2, #0x0
	orrs r0, r1
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
	b _08108D86
	.byte 0x00, 0x00
_08108D7C: .4byte 0x00000FFF
_08108D80: .4byte 0xFFFF8000
_08108D84:
	movs r0, #0x00
_08108D86:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
