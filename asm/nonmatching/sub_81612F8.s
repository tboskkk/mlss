	.syntax unified
	.text

	thumb_func_start sub_81612F8
sub_81612F8:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	movs r0, #0x06
	ldsh r1, [r4, r0]
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	bl sub_8020DD0
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #0x08
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
