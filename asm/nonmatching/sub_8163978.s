	.syntax unified
	.text

	thumb_func_start sub_8163978
sub_8163978:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [sp, #0x014]
	add r0, sp, #0x018
	ldrb r0, [r0, #0x00]
	mov r12, sp
	mov r6, r12
	strb r0, [r6, #0x00]
	adds r0, r4, #0x0
	bl sub_81638C4
	adds r0, r4, #0x0
	movs r1, #0x03
	adds r2, r5, #0x0
	bl sub_816391C
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
