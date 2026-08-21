	.syntax unified
	.text

	thumb_func_start sub_8142B88
sub_8142B88:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x004
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r2, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_801E68C
	str r4, [r6, #0x18]
	ldr r0, _08142BC8 @ =0x08142F75
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142BC8: .4byte sub_8142F74
