	.syntax unified
	.text

	thumb_func_start sub_8169440
sub_8169440:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r4, r0, #0x0
	ldr r2, _081694DC @ =0x08215770
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x00
	bl sub_8161C28
	str r0, [r4, #0x0C]
	ldr r1, _081694E0 @ =0x00005006
	mov r8, r1
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r5, #0x02
	str r5, [sp, #0x004]
	movs r1, #0x04
	mov r2, r8
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r4, #0x0C]
	movs r6, #0xA0
	lsls r6, r6, #0x08
	str r6, [r0, #0x1C]
	ldr r2, _081694E4 @ =0x08215780
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x00
	bl sub_8161C28
	str r0, [r4, #0x10]
	ldr r2, _081694E8 @ =0x08216A9A
	ldr r1, _081694EC @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r1, #0x04
	mov r2, r8
	movs r3, #0x00
	bl sub_8163ADC
	ldr r1, [r4, #0x10]
	movs r0, #0xE0
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
	str r6, [r1, #0x1C]
	movs r0, #0x00
	str r0, [r4, #0x08]
	str r0, [r4, #0x04]
	movs r0, #0xE1
	lsls r0, r0, #0x05
	str r0, [r4, #0x00]
	adds r0, r4, #0x0
	bl sub_81694F0
	adds r0, r4, #0x0
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081694DC: .4byte 0x08215770
_081694E0: .4byte 0x00005006
_081694E4: .4byte 0x08215780
_081694E8: .4byte 0x08216A9A
_081694EC: .4byte 0x0300034C
