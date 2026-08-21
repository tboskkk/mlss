	.syntax unified
	.text

	thumb_func_start sub_8145968
sub_8145968:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r4, [r0, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _0814598A
	str r1, [r5, #0x00]
	b _081459F6
_0814598A:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _081459AC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_081459AC:
	ldr r1, _081459E8 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r0, r4, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	orrs r1, r0
	cmp r1, #0x00
	beq _081459F0
	ldr r0, _081459EC @ =0x0000020D
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r0, #0x00
	str r0, [r5, #0x00]
	b _081459F6
_081459E8: .4byte 0x00000216
_081459EC: .4byte 0x0000020D
_081459F0:
	adds r0, r4, #0x0
	bl sub_8138494
_081459F6:
	pop {r4, r5}
	pop {r0}
	bx r0
