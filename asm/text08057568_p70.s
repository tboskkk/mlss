	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8199D78
sub_8199D78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	mov r10, r2
	ldr r0, [sp, #0x02C]
	ldr r1, [sp, #0x030]
	ldr r2, [sp, #0x034]
	ldr r5, [sp, #0x038]
	mov r8, r5
	ldr r5, [sp, #0x03C]
	ldr r6, [sp, #0x040]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r12, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x000]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x008]
	movs r0, #0x1F
	ands r0, r4
	cmp r0, #0x00
	bne _08199E34
	str r4, [r7, #0x00]
	mov r0, r10
	lsls r2, r0, #0x02
	ldrb r1, [r7, #0x13]
	movs r0, #0x03
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x13]
	mov r0, r9
	strb r0, [r7, #0x0E]
	strb r3, [r7, #0x0F]
	movs r6, #0x0F
	ldr r0, [sp, #0x000]
	lsls r1, r0, #0x18
	asrs r1, r1, #0x14
	mov r0, r12
	ands r0, r6
	orrs r0, r1
	strb r0, [r7, #0x10]
	movs r0, #0x0F
	mov r1, r8
	ands r1, r0
	lsls r1, r1, #0x06
	ldrh r2, [r7, #0x12]
	ldr r0, _08199E30 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0x0
	ldr r1, [sp, #0x008]
	bl sub_8199D48
	lsls r1, r5, #0x04
	adds r0, r5, #0x0
	ands r0, r6
	orrs r0, r1
	strb r0, [r7, #0x11]
	ldrb r1, [r7, #0x12]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	subs r1, #0x0A
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7, #0x12]
	movs r0, #0x00
	b _08199E38
	.byte 0x00, 0x00
_08199E30: .4byte 0xFFFFFC3F
_08199E34:
	movs r0, #0x01
	negs r0, r0
_08199E38:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8199E48
sub_8199E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	mov r8, r1
	mov r10, r2
	adds r4, r3, #0x0
	ldr r0, [sp, #0x034]
	mov r12, r0
	ldr r3, [sp, #0x038]
	ldr r7, [sp, #0x03C]
	ldr r0, [sp, #0x040]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x00C]
	mov r1, r12
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	mov r9, r0
	movs r1, #0x0F
	ands r1, r0
	lsls r5, r1, #0x02
	str r5, [sp, #0x010]
	lsrs r2, r2, #0x1C
	adds r0, r3, #0x0
	muls r0, r2
	muls r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x84
	add r12, r0
	subs r4, r4, r5
	movs r0, #0x01
	ldr r1, [sp, #0x00C]
	ands r0, r1
	cmp r0, #0x00
	beq _08199E9E
	subs r4, r4, r5
_08199E9E:
	movs r1, #0x08
	negs r1, r1
	mov r0, r10
	ands r0, r1
	lsls r0, r0, #0x02
	adds r6, r6, r0
	movs r2, #0x07
	adds r0, r4, #0x0
	ands r0, r2
	lsls r0, r0, #0x02
	adds r6, r6, r0
	ands r4, r1
	mov r0, r8
	muls r0, r4
	lsls r0, r0, #0x02
	adds r6, r6, r0
	mov r0, r8
	subs r0, #0x01
	lsls r0, r0, #0x05
	mov r8, r0
	adds r3, r2, #0x0
	mov r4, r10
	ands r3, r4
	cmp r7, #0x0D
	bls _08199ED2
	movs r7, #0x0E
_08199ED2:
	lsls r0, r7, #0x04
	adds r0, r0, r7
	lsls r1, r0, #0x08
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r7, r0, r1
	ldr r2, _08199F1C @ =0x03001040
	movs r0, #0xF0
	mov r1, r9
	ands r0, r1
	subs r0, #0x20
	ldr r4, [sp, #0x00C]
	lsls r1, r4, #0x02
	orrs r1, r0
	adds r1, r1, r2
	lsls r3, r3, #0x02
	mov r0, r8
	str r0, [sp, #0x000]
	mov r4, r12
	str r4, [sp, #0x004]
	ldr r0, _08199F20 @ =0x11111111
	str r0, [sp, #0x008]
	ldr r4, [r1, #0x00]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x010]
	adds r2, r7, #0x0
	bl _call_via_r4
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08199F1C: .4byte 0x03001040
_08199F20: .4byte 0x11111111
