	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_804FB64
sub_804FB64:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_804B360
	movs r4, #0x00
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r3, r5, r0
	movs r1, #0x00
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804FBBE
	adds r0, r1, #0x0
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r2, r4, r6
	adds r0, r0, r1
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	ldr r1, [r5, #0x14]
	cmp r1, r0
	blt _0804FBBE
	adds r1, r5, #0x0
	adds r1, #0x29
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r5, #0x01]
	strb r0, [r3, #0x00]
	movs r4, #0x00
_0804FBBE:
	ldr r3, [r5, #0x14]
	cmp r4, #0x00
	beq _0804FBD2
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	adds r3, r3, r0
_0804FBD2:
	str r3, [r5, #0x1C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_804FBDC
sub_804FBDC:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r4, #0x00
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrh r2, [r0, #0x00]
	ldr r1, _0804FC28 @ =0x00000801
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, r1
	bne _0804FC20
	ldr r1, _0804FC2C @ =0x0000035A
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0804FC20
	movs r0, #0xD2
	lsls r0, r0, #0x02
	adds r1, r3, r0
	ldr r0, [r3, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xD3
	lsls r0, r0, #0x02
	adds r1, r3, r0
	ldr r0, [r3, #0x10]
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	bl sub_8041FFC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804FC20:
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_0804FC28: .4byte 0x00000801
_0804FC2C: .4byte 0x0000035A
	thumb_func_start sub_804FC30
sub_804FC30:
	push {lr}
	adds r3, r0, #0x0
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0804FC80
	ldr r1, _0804FC84 @ =0x000002B5
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	bne _0804FC80
	ldr r2, _0804FC88 @ =0x083A0A38
	ldrb r1, [r3, #0x02]
	lsrs r1, r1, #0x05
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	ldr r0, _0804FC8C @ =0x00000353
	adds r3, r3, r0
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0804FC80:
	pop {r0}
	bx r0
_0804FC84: .4byte 0x000002B5
_0804FC88: .4byte 0x083A0A38
_0804FC8C: .4byte 0x00000353
