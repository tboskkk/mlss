	.syntax unified
	.text

	thumb_func_start sub_8034FE8
sub_8034FE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xFB
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r2, #0xEE
	asrs r2, r1
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r5, r3
	movs r7, #0x00
	ldsh r3, [r1, r7]
	movs r1, #0x04
	bl sub_80400B0
	ldr r4, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r7, #0x00
	ldsh r3, [r0, r7]
	adds r1, #0x02
	adds r0, r5, r1
	movs r7, #0x00
	ldsh r0, [r0, r7]
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	ldrb r1, [r6, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0803503C
	movs r0, #0x10
	b _0803503E
_0803503C:
	movs r0, #0x0A
_0803503E:
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x01
	bl sub_8045A94
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	ldr r1, _080350A4 @ =0x0000023B
	adds r0, r0, r1
	movs r1, #0x00
	strb r1, [r0, #0x00]
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r3, r5, r7
	ldr r1, [r3, #0x00]
	ldr r0, _080350A8 @ =0x0000020F
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r3, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x56
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r0, [r2, #0x00]
	ldr r1, _080350AC @ =0xFFFE7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	ldr r3, _080350B0 @ =0x0000020B
	adds r2, r5, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080350A4: .4byte 0x0000023B
_080350A8: .4byte 0x0000020F
_080350AC: .4byte 0xFFFE7FFF
_080350B0: .4byte 0x0000020B
