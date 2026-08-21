	.syntax unified
	.text

	thumb_func_start sub_8049BD8
sub_8049BD8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0xDA
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r3, [r2, #0x00]
	cmp r3, r6
	beq _08049C2C
	movs r1, #0x13
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08049C12
	strb r3, [r2, #0x01]
	ldr r2, [r4, #0x00]
	ldr r1, _08049C34 @ =0x00000352
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r0, r2, #0x0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x13]
_08049C12:
	ldr r0, [r4, #0x00]
	movs r3, #0x00
	strb r6, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldr r1, _08049C34 @ =0x00000352
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x07
	movs r1, #0x01
	eors r0, r1
	adds r2, #0x10
	adds r2, r2, r0
	strb r3, [r2, #0x00]
_08049C2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08049C34: .4byte 0x00000352
