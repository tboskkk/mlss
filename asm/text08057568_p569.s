	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8113674
sub_8113674:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r3, r12
	adds r3, #0x0C
	ldr r1, [r0, #0x30]
	adds r2, r1, #0x0
	adds r2, #0x0C
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x0C
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r6, [r3, #0x04]
	ldr r5, [r3, #0x08]
	ldr r4, [r3, #0x0C]
	movs r0, #0x10
	ldsh r1, [r3, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x04]
	adds r0, r0, r1
	subs r0, r0, r6
	mov r8, r0
	movs r0, #0x12
	ldsh r1, [r3, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x08]
	adds r0, r0, r1
	subs r7, r0, r5
	movs r0, #0x14
	ldsh r1, [r3, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	subs r2, r0, r4
	mov r0, r12
	ldr r3, [r0, #0x0C]
	movs r1, #0x01
	cmp r3, #0x00
	beq _081136FE
_081136C6:
	mov r0, r8
	muls r0, r1
	cmp r0, #0x00
	bge _081136D0
	adds r0, #0x03
_081136D0:
	asrs r0, r0, #0x02
	adds r0, r0, r6
	str r0, [r3, #0x04]
	adds r0, r7, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _081136E0
	adds r0, #0x03
_081136E0:
	asrs r0, r0, #0x02
	adds r0, r0, r5
	str r0, [r3, #0x08]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _081136F0
	adds r0, #0x03
_081136F0:
	asrs r0, r0, #0x02
	adds r0, r0, r4
	str r0, [r3, #0x0C]
	ldr r3, [r3, #0x00]
	adds r1, #0x01
	cmp r3, #0x00
	bne _081136C6
_081136FE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
