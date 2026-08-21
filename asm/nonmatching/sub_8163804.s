	.syntax unified
	.text

	thumb_func_start sub_8163804
sub_8163804:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r5, #0x4
	ldr r2, [r5, #0x04]
	cmp r2, #0x00
	beq _08163822
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163822:
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _08163838
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163838:
	ldr r2, [r5, #0x0C]
	cmp r2, #0x00
	beq _0816384E
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0816384E:
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _0816385C
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_0816385C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
