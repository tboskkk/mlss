	.syntax unified
	.text

	thumb_func_start sub_803C834
sub_803C834:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, _0803C890 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0803C888
	adds r1, r2, #0x0
	adds r1, #0x30
	ldr r3, _0803C894 @ =0x0000010B
	adds r0, r2, r3
	ldrb r2, [r0, #0x00]
	subs r2, #0x02
	adds r0, r4, #0x0
	bl sub_804DDF4
	adds r0, r4, #0x0
	bl sub_80458B0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0803C888
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x07
	beq _0803C888
	ldrb r2, [r3, #0x16]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x19
	movs r1, #0x01
	orrs r1, r0
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x16]
_0803C888:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803C890: .4byte 0x0000035B
_0803C894: .4byte 0x0000010B
