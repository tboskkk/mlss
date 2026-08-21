	.syntax unified
	.text

	thumb_func_start sub_8049000
sub_8049000:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x86
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldrh r0, [r5, #0x00]
	cmp r0, r1
	beq _080490AC
	strh r1, [r5, #0x00]
	ldr r1, _080490B4 @ =0x0000026E
	adds r4, r6, r1
	ldrb r0, [r4, #0x00]
	cmp r0, #0xFF
	beq _08049040
	movs r2, #0xCD
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r2, #0x00
	bl sub_8115048
	movs r0, #0x9B
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, _080490B8 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0xFF
	strb r0, [r4, #0x00]
_08049040:
	movs r3, #0x00
	ldrh r1, [r5, #0x00]
	ldr r2, _080490BC @ =0xFFFFEFFF
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08049056
	ldr r0, _080490C0 @ =0x00001028
	cmp r1, r0
	bne _08049058
_08049056:
	movs r3, #0x01
_08049058:
	ldr r0, _080490C4 @ =0x00000216
	adds r2, r6, r0
	lsls r3, r3, #0x07
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r0, [r5, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrh r2, [r1, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80210A8
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x1E]
	lsrs r0, r0, #0x04
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldrh r1, [r1, #0x1C]
	orrs r0, r1
	ldr r2, _080490C8 @ =0x0000021E
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x01
	adds r2, r4, #0x0
	adds r3, r4, #0x0
	bl sub_8040804
_080490AC:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080490B4: .4byte 0x0000026E
_080490B8: .4byte 0x0000FFFF
_080490BC: .4byte 0xFFFFEFFF
_080490C0: .4byte 0x00001028
_080490C4: .4byte 0x00000216
_080490C8: .4byte 0x0000021E
