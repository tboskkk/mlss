	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813B1A4
sub_813B1A4:
	push {r4, lr}
	adds r4, r0, #0x0
	mov r12, r1
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r12
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813B1E2
	movs r3, #0xEB
	lsls r3, r3, #0x01
	add r3, r12
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
	ldr r3, [r0, #0x00]
	str r3, [r2, #0x00]
	adds r0, r4, #0x0
	mov r1, r12
	bl _call_via_r3
_0813B1E2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_813B1E8
sub_813B1E8:
	push {lr}
	adds r3, r1, #0x0
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813B220
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r1, r1, r3
	mov r12, r1
	ldrb r0, [r1, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_0813B220:
	pop {r0}
	bx r0
