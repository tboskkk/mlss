	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EA478
sub_80EA478:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r8, r1
	adds r5, r2, #0x0
	mov r7, r8
	adds r7, #0xA6
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	adds r4, r0, #0x0
	adds r4, #0x54
	ldr r0, [r5, #0x00]
	movs r1, #0x19
	negs r1, r1
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x03
	bne _080EA4A8
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	b _080EA4B0
_080EA4A8:
	cmp r6, #0x04
	bne _080EA4B2
	ldr r0, [r4, #0x00]
	subs r0, #0x01
_080EA4B0:
	str r0, [r4, #0x00]
_080EA4B2:
	ldrb r1, [r5, #0x04]
	ldr r2, [r5, #0x08]
	ldr r3, [r4, #0x00]
	mov r0, r12
	bl script_test_condition
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _080EA4E0
	ldr r0, [r5, #0x0C]
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _080EA4F4
	ldrb r0, [r7, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	movs r0, #0x00
	b _080EA506
_080EA4E0:
	ldr r0, [r5, #0x00]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x18
	bne _080EA4F4
	ldrb r0, [r7, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	str r2, [r4, #0x00]
	b _080EA508
_080EA4F4:
	cmp r6, #0x01
	bne _080EA4FE
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	b _080EA506
_080EA4FE:
	cmp r6, #0x02
	bne _080EA508
	ldr r0, [r4, #0x00]
	subs r0, #0x01
_080EA506:
	str r0, [r4, #0x00]
_080EA508:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
