	.syntax unified
	.text

	thumb_func_start sub_80EA968
sub_80EA968:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	mov r8, r3
	ldr r4, [r6, #0x04]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r5, #0x18
	movs r2, #0x00
	ldsh r1, [r6, r2]
	str r1, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
