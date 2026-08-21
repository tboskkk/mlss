	.syntax unified
	.text

	thumb_func_start sub_80745A8
sub_80745A8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r6, [r0, #0x30]
	ldr r5, [r6, #0x30]
	ldr r4, [r5, #0x30]
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	adds r0, r5, #0x0
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
	movs r0, #0x5E
	bl stop_sfx_80195A8
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
