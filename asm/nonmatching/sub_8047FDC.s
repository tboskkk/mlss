	.syntax unified
	.text

	thumb_func_start sub_8047FDC
sub_8047FDC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r1, _08048034 @ =0x00000222
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0804802E
	ldr r0, _08048038 @ =0x0000020F
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r0, [r5, #0x00]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1D
	lsrs r4, r4, #0x1E
	bl sub_8021ED8
	ldr r2, [r5, #0x00]
	lsls r4, r4, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	ldr r1, _0804803C @ =0x0000020E
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804802E
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8047DC8
_0804802E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08048034: .4byte 0x00000222
_08048038: .4byte 0x0000020F
_0804803C: .4byte 0x0000020E
