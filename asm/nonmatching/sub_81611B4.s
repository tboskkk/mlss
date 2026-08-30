	.syntax unified
	.text

	thumb_func_start sub_81611B4
sub_81611B4:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r2, #0x0
	ldr r0, _08161230 @ =0x08CDD018
	str r0, [r4, #0x2C]
	str r3, [r4, #0x10]
	adds r0, r4, #0x0
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	movs r5, #0x00
	str r5, [r4, #0x0C]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x1C]
	str r0, [r4, #0x14]
	movs r2, #0x02
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x20]
	str r0, [r4, #0x18]
	str r5, [r4, #0x24]
	str r5, [r4, #0x28]
	movs r3, #0x06
	ldsh r1, [r4, r3]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x06
	ldsh r2, [r4, r0]
	asrs r1, r2, #0x0C
	movs r0, #0x0F
	ands r1, r0
	ldr r3, _08161234 @ =0x00000FFF
	adds r0, r3, #0x0
	ands r2, r0
	lsls r1, r1, #0x0C
	orrs r1, r2
	str r5, [sp, #0x000]
	add r5, sp, #0x00C
	str r5, [sp, #0x004]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r0, _08161238 @ =0x08CDCFD0
	str r0, [r4, #0x2C]
	str r6, [r4, #0x30]
	adds r0, r4, #0x0
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08161230: .4byte 0x08CDD018
_08161234: .4byte 0x00000FFF
_08161238: .4byte 0x08CDCFD0
