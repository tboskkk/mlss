	.syntax unified
	.text

	thumb_func_start sub_803C720
sub_803C720:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0803C74E
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	strb r0, [r1, #0x10]
	ldr r1, [r2, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
_0803C74E:
	movs r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	beq _0803C780
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	strb r0, [r1, #0x11]
	ldr r1, [r2, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1B
	lsrs r2, r2, #0x1F
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_802DDB4
_0803C780:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
