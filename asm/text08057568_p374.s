	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805905C
sub_805905C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r3, r3, #0x10
	adds r0, #0xA8
	ldr r6, [r0, #0x00]
	ldr r0, _08059108 @ =0x00000579
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r12, r2
	movs r0, #0x0F
	ands r0, r2
	lsrs r1, r3, #0x10
	mov r10, r1
	asrs r3, r3, #0x10
	lsls r7, r5, #0x0B
	lsls r0, r0, #0x01
	adds r0, r7, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	ldr r2, _0805910C @ =room_solidity_index_table
	movs r0, #0x02
	subs r0, r0, r5
	lsls r0, r0, #0x01
	ldrh r1, [r4, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08059110 @ =0x0000FFFF
	cmp r1, r0
	beq _0805917E
	lsls r1, r5, #0x01
	adds r0, r4, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	cmp r3, #0x00
	bge _080590D0
	movs r0, #0x00
	mov r10, r0
_080590D0:
	mov r1, r10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0x0
	adds r0, r7, r0
	add r0, r12
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x00
	mov r8, r0
	adds r5, r4, #0x0
	adds r5, #0x94
	adds r4, #0x98
_080590EE:
	mov r0, r8
	add r0, r10
	movs r1, #0x0F
	ands r0, r1
	lsls r1, r0, #0x06
	movs r0, #0x10
	mov r2, r12
	ands r0, r2
	cmp r0, #0x00
	beq _08059114
	ldr r0, [sp, #0x004]
	b _08059116
	.byte 0x00, 0x00
_08059108: .4byte 0x00000579
_0805910C: .4byte room_solidity_index_table
_08059110: .4byte 0x0000FFFF
_08059114:
	ldr r0, [sp, #0x000]
_08059116:
	adds r2, r0, r1
	ldr r1, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r1, r2, r1
	ldr r0, [r4, #0x00]
	lsls r3, r7, #0x01
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r2, r1
	ldr r0, [r4, #0x00]
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x00]
	adds r1, r2, r1
	adds r1, #0x40
	ldr r0, [r4, #0x00]
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r2, r2, r0
	adds r2, #0x42
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x06]
	strh r0, [r2, #0x00]
	mov r1, r9
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x0C
	bls _080590EE
_0805917E:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
