	.syntax unified
	.text

	thumb_func_start sub_8169D10
sub_8169D10:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _08169DF4 @ =0x08CDD198
	str r0, [r4, #0x18]
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	ldr r1, _08169DF8 @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08169D34
	movs r1, #0x03
	bl sub_8163280
_08169D34:
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _08169D3E
	bl free_heap_8018DA8
_08169D3E:
	ldr r0, [r4, #0x6C]
	cmp r0, #0x00
	beq _08169D4A
	movs r1, #0x03
	bl sub_8163528
_08169D4A:
	ldr r5, [r4, #0x3C]
	cmp r5, #0x00
	beq _08169D82
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	beq _08169D66
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08169D66:
	ldr r2, [r5, #0x0C]
	cmp r2, #0x00
	beq _08169D7C
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08169D7C:
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_08169D82:
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _08169D8C
	bl free_heap_8018DA8
_08169D8C:
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08169D98
	movs r1, #0x03
	bl sub_8163804
_08169D98:
	ldr r2, [r4, #0x2C]
	cmp r2, #0x00
	beq _08169DAE
	ldr r1, [r2, #0x18]
	movs r3, #0x10
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x14]
	movs r1, #0x03
	bl _call_via_r2
_08169DAE:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	beq _08169DBA
	movs r1, #0x03
	bl sub_8165144
_08169DBA:
	ldr r2, [r4, #0x1C]
	cmp r2, #0x00
	beq _08169DD0
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08169DD0:
	bl sub_8150A38
	ldr r0, [r4, #0x14]
	bl process_enable
	adds r0, r4, #0x0
	adds r0, #0x70
	movs r1, #0x02
	bl sub_8163308
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08169DF4: .4byte 0x08CDD198
_08169DF8: .4byte 0x040000BA
