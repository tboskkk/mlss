	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_819BA2C
sub_819BA2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0x00
	movs r3, #0x00
	ldr r0, _0819BA78 @ =0x03007FF0
	mov r9, r0
	ldr r1, [r0, #0x00]
	mov r12, r1
	ldr r0, _0819BA7C @ =0x00000494
	add r0, r12
	mov r10, r0
	movs r1, #0x01
	mov r8, r1
_0819BA4C:
	mov r1, r10
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	adds r7, r3, #0x1
	cmp r0, #0x00
	beq _0819BAA6
	movs r4, #0x00
	lsls r2, r3, #0x01
	adds r0, r2, r3
	lsls r0, r0, #0x07
	add r0, r12
	ldrh r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	beq _0819BA80
	mov r0, r8
	b _0819BAA2
	.byte 0x00, 0x00
_0819BA78: .4byte 0x03007FF0
_0819BA7C: .4byte 0x00000494
_0819BA80:
	adds r4, #0x01
	cmp r4, #0x0B
	bgt _0819BAA6
	mov r0, r9
	ldr r2, [r0, #0x00]
	lsls r1, r4, #0x05
	adds r0, r5, r3
	lsls r0, r0, #0x07
	adds r1, r1, r0
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0819BA80
	adds r0, r2, #0x0
_0819BAA2:
	lsls r0, r3
	orrs r6, r0
_0819BAA6:
	adds r3, r7, #0x0
	cmp r3, #0x02
	ble _0819BA4C
	adds r0, r6, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
