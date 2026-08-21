	.syntax unified
	.text

	thumb_func_start sub_8047DC8
sub_8047DC8:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _08047DF4 @ =0x0000FFFF
	cmp r1, r0
	beq _08047E3A
	movs r3, #0x00
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r2, [r0, #0x14]
	movs r1, #0x01
	adds r0, r2, #0x0
	b _08047DFE
	.byte 0x00, 0x00
_08047DF4: .4byte 0x0000FFFF
_08047DF8:
	adds r3, #0x01
	adds r0, r2, #0x0
	asrs r0, r3
_08047DFE:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08047DF8
	movs r1, #0xCD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x9B
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldrh r2, [r1, #0x00]
	adds r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _08047E44 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r5, #0x0
	bl sub_8114C1C
	ldr r2, _08047E48 @ =0x0000026E
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	ldr r0, _08047E4C @ =0x00000216
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_08047E3A:
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047E44: .4byte 0x0000FFFF
_08047E48: .4byte 0x0000026E
_08047E4C: .4byte 0x00000216
