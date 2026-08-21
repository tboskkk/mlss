	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F1998
sub_80F1998:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	adds r5, r3, #0x0
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	ldr r1, [r5, #0x0C]
	adds r0, r4, #0x0
	bl sub_8047258
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _080F19D4
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x98
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r0, r4, r0
	ldrb r1, [r5, #0x00]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	b _080F19EC
_080F19D4:
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	adds r2, #0x90
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r0, r4, r0
	ldrb r1, [r5, #0x00]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
_080F19EC:
	ldr r1, [r5, #0x04]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	ldrb r3, [r5, #0x0C]
	ldrb r1, [r5, #0x08]
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F1A1C
sub_80F1A1C:
	push {lr}
	adds r0, r1, #0x0
	ldr r3, [r3, #0x00]
	cmp r3, #0x00
	beq _080F1A2C
	cmp r3, #0x01
	beq _080F1A32
	b _080F1A36
_080F1A2C:
	bl sub_805113C
	b _080F1A36
_080F1A32:
	bl sub_8050FD0
_080F1A36:
	movs r0, #0x01
	pop {r1}
	bx r1
