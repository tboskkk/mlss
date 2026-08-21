	.syntax unified
	.text

	thumb_func_start sub_8082920
sub_8082920:
	push {r4, lr}
	add sp, #-0x004
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_80E19CC
	adds r4, r0, #0x0
	ldr r0, [sp, #0x000]
	subs r0, #0x01
	str r0, [sp, #0x000]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0808298C
_08082940:
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0808297E
	movs r2, #0xF0
	lsls r2, r2, #0x08
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	beq _0808297E
	movs r0, #0xB0
	lsls r0, r0, #0x08
	cmp r2, r0
	beq _0808297E
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _0808297E
	movs r0, #0xE0
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _0808297E
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
_0808297E:
	ldr r1, [sp, #0x000]
	subs r1, #0x01
	str r1, [sp, #0x000]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08082940
_0808298C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
