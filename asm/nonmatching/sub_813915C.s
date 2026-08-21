	.syntax unified
	.text

	thumb_func_start sub_813915C
sub_813915C:
	push {lr}
	adds r3, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r12
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813919A
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	add r0, r12
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_0813919A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
