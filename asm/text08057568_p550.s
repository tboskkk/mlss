	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FA734
sub_80FA734:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x018
	adds r6, r0, #0x0
	mov r8, r1
	adds r5, r2, #0x0
	ldr r0, [r6, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	subs r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0x0
	adds r0, #0x1C
	add r3, sp, #0x010
	add r1, sp, #0x014
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	add r2, sp, #0x00C
	bl sub_80EA6D4
	adds r5, #0x0C
	ldr r0, [r6, #0x14]
	ldr r2, [r5, #0x00]
	movs r1, #0x03
	ands r2, r1
	ldr r1, [sp, #0x00C]
	str r1, [sp, #0x000]
	ldr r1, [sp, #0x010]
	str r1, [sp, #0x004]
	movs r3, #0x04
	ldsh r1, [r5, r3]
	str r1, [sp, #0x008]
	adds r1, r4, #0x0
	movs r3, #0x01
	bl sub_8120C54
	movs r0, #0xA0
	add r8, r0
	mov r3, r8
	ldrh r1, [r3, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r3, #0x00]
	movs r0, #0x00
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
