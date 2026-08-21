	.syntax unified
	.text

	thumb_func_start sub_81430CC
sub_81430CC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x2C
	ldsh r1, [r0, r2]
	ldr r0, _08143124 @ =0x0000018F
	cmp r1, r0
	ble _0814311A
	adds r0, #0xE5
	adds r1, r5, r0
	movs r2, #0x00
	movs r0, #0x90
	lsls r0, r0, #0x05
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	str r2, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x07
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x08]
	str r0, [r6, #0x00]
_0814311A:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143124: .4byte 0x0000018F
