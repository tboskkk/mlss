	.syntax unified
	.text

	thumb_func_start sub_8163474
sub_8163474:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	ldr r5, _081634D8 @ =0x08212ABA
	ldr r0, [r4, #0x00]
	movs r6, #0x00
	movs r1, #0x06
	movs r2, #0x00
	bl sub_816391C
	ldr r0, [r4, #0x00]
	str r5, [r0, #0x44]
	adds r0, #0x48
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x04]
	movs r1, #0x06
	movs r2, #0x08
	bl sub_816391C
	ldr r0, [r4, #0x04]
	str r5, [r0, #0x44]
	adds r0, #0x48
	strh r6, [r0, #0x00]
	ldr r0, [r4, #0x08]
	movs r1, #0x06
	movs r2, #0x10
	bl sub_816391C
	ldr r0, [r4, #0x08]
	str r5, [r0, #0x44]
	adds r0, #0x48
	strh r6, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	movs r1, #0x06
	movs r2, #0x18
	bl sub_816391C
	ldr r0, [r4, #0x0C]
	str r5, [r0, #0x44]
	adds r0, #0x48
	strh r6, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081634D8: .4byte 0x08212ABA
