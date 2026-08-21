	.syntax unified
	.text

	thumb_func_start sub_8163528
sub_8163528:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08163544
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163544:
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _0816355A
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0816355A:
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _08163570
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163570:
	ldr r2, [r4, #0x0C]
	cmp r2, #0x00
	beq _08163586
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163586:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08163594
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08163594:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
