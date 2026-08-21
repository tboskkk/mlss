	.syntax unified
	.text

	thumb_func_start sub_8029170
sub_8029170:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r5, #0xFC
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	cmp r0, #0x01
	beq _0802918A
	cmp r0, #0x02
	beq _0802919C
	b _080291C0
_0802918A:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	bl sub_81165CC
	adds r1, r4, #0x1
	b _080291AE
_0802919C:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	bl sub_81165CC
	movs r1, #0x02
	subs r1, r1, r4
_080291AE:
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x03
	ldrb r2, [r5, #0x00]
	movs r0, #0x79
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
_080291C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
