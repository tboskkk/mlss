	.syntax unified
	.text

	thumb_func_start sub_816D580
sub_816D580:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0816D604 @ =0x08CDD208
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	beq _0816D594
	bl free_heap_8018DA8
_0816D594:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	beq _0816D59E
	bl free_heap_8018DA8
_0816D59E:
	ldr r2, [r4, #0x20]
	cmp r2, #0x00
	beq _0816D5B4
	ldr r1, [r2, #0x18]
	movs r3, #0x10
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x14]
	movs r1, #0x03
	bl _call_via_r2
_0816D5B4:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	beq _0816D5C0
	movs r1, #0x03
	bl sub_8163280
_0816D5C0:
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _0816D5CC
	movs r1, #0x03
	bl sub_8165144
_0816D5CC:
	ldr r2, [r4, #0x1C]
	cmp r2, #0x00
	beq _0816D5E2
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0816D5E2:
	bl sub_8150A38
	ldr r0, [r4, #0x14]
	bl process_enable
	adds r0, r4, #0x0
	adds r0, #0x4C
	movs r1, #0x02
	bl sub_8163308
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0816D604: .4byte 0x08CDD208
