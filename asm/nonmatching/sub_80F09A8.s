	.syntax unified
	.text

	thumb_func_start sub_80F09A8
sub_80F09A8:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r1, r2, #0x0
	ldr r4, [r0, #0x14]
	ldr r0, [r1, #0x00]
	movs r5, #0x01
	cmp r0, #0x00
	beq _080F09BA
	movs r5, #0x02
_080F09BA:
	ldr r2, [r1, #0x04]
	ldr r3, [r1, #0x08]
	ldr r0, [r1, #0x0C]
	lsls r0, r0, #0x05
	orrs r3, r0
	ldr r0, [r1, #0x10]
	lsls r0, r0, #0x0A
	orrs r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r0, [r1, #0x14]
	str r0, [sp, #0x000]
	ldrh r0, [r1, #0x18]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8027030
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
