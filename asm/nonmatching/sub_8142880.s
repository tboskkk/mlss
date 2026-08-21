	.syntax unified
	.text

	thumb_func_start sub_8142880
sub_8142880:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	mov r12, r1
	mov r8, r2
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r3, [r0, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	add r2, r12
	ldrh r0, [r2, #0x00]
	adds r0, r0, r3
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	movs r6, #0x00
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r5, [r0, #0x3C]
	movs r0, #0xEE
	lsls r0, r0, #0x01
	add r0, r12
	ldr r1, [r0, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	add r0, r12
	ldr r2, [r0, #0x00]
	movs r0, #0xF2
	lsls r0, r0, #0x01
	add r0, r12
	movs r4, #0xF4
	lsls r4, r4, #0x01
	add r4, r12
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	str r5, [sp, #0x000]
	add r0, sp, #0x004
	strb r6, [r0, #0x00]
	mov r0, r12
	bl sub_813A44C
	ldr r0, _081428F8 @ =0x0814281D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081428F8: .4byte sub_814281C
