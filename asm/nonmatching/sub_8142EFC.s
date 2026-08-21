	.syntax unified
	.text

	thumb_func_start sub_8142EFC
sub_8142EFC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r5, r4, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08142F4E
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142F68
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r6, #0x0
	adds r0, #0x27
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	ldrb r0, [r5, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _08142F68
_08142F4E:
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142F68
	ldrh r0, [r6, #0x38]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08142F70 @ =0x08141D55
	str r0, [r7, #0x00]
_08142F68:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08142F70: .4byte sub_8141D54
