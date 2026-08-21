	.syntax unified
	.text

	thumb_func_start sub_8050850
sub_8050850:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, _080508A0 @ =0x08CDBF28
	str r1, [r0, #0x00]
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08050882
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08050882:
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _080508A4 @ =0x08CDBDE8
	str r0, [r1, #0x00]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0805089A
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0805089A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080508A0: .4byte 0x08CDBF28
_080508A4: .4byte 0x08CDBDE8
