	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F0E18
sub_80F0E18:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x01C
	adds r3, r0, #0x0
	adds r7, r2, #0x0
	ldr r0, [r7, #0x0C]
	lsls r0, r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #0x08
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #0x08
	str r0, [r7, #0x14]
	ldr r1, [r7, #0x1C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080F0E40
	movs r0, #0x00
	str r0, [r7, #0x1C]
_080F0E40:
	ldr r0, [r3, #0x14]
	ldrh r1, [r7, #0x00]
	ldr r5, [r7, #0x04]
	movs r6, #0x01
	adds r2, r5, #0x0
	ands r2, r6
	ldrb r3, [r7, #0x08]
	ldr r4, [r7, #0x0C]
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x10]
	str r4, [sp, #0x004]
	ldr r4, [r7, #0x14]
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	ldr r4, [r7, #0x1C]
	str r4, [sp, #0x010]
	movs r4, #0x18
	ldsb r4, [r7, r4]
	str r4, [sp, #0x014]
	asrs r5, r5, #0x01
	ands r5, r6
	add r4, sp, #0x018
	strb r5, [r4, #0x00]
	bl sub_8027E90
	movs r0, #0x00
	add sp, #0x01C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0E80
sub_80F0E80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r7, r2, #0x0
	ldr r0, [r7, #0x0C]
	lsls r0, r0, #0x0C
	str r0, [r7, #0x0C]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #0x0C
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #0x0B
	movs r1, #0x05
	bl __divsi3
	str r0, [r7, #0x14]
	ldr r1, [r7, #0x1C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080F0EAE
	movs r0, #0x00
	str r0, [r7, #0x1C]
_080F0EAE:
	ldr r0, [r4, #0x14]
	ldrh r1, [r7, #0x00]
	ldr r5, [r7, #0x04]
	movs r6, #0x01
	adds r2, r5, #0x0
	ands r2, r6
	ldrb r3, [r7, #0x08]
	ldr r4, [r7, #0x0C]
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x10]
	str r4, [sp, #0x004]
	ldr r4, [r7, #0x14]
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	ldr r4, [r7, #0x1C]
	str r4, [sp, #0x010]
	movs r4, #0x18
	ldsb r4, [r7, r4]
	str r4, [sp, #0x014]
	asrs r5, r5, #0x01
	ands r5, r6
	add r4, sp, #0x018
	strb r5, [r4, #0x00]
	bl sub_8027E90
	movs r0, #0x00
	add sp, #0x01C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
