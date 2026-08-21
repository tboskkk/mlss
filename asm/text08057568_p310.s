	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E1500
sub_80E1500:
	push {r4, r5, r6, lr}
	adds r2, r0, #0x0
	ldr r0, _080E162C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080E1516
	b _080E1624
_080E1516:
	ldr r0, _080E1630 @ =0x03000FDC
	ldr r5, [r0, #0x00]
	ldr r6, _080E1634 @ =0x000052F0
	adds r4, r5, r6
	movs r0, #0x00
	ldsh r1, [r2, r0]
	adds r2, #0x02
	movs r6, #0x9C
	lsls r6, r6, #0x02
	adds r0, r3, r6
	strb r1, [r0, #0x00]
	cmp r1, #0x00
	ble _080E1624
	adds r3, r4, #0x0
	adds r4, r1, #0x0
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _080E15B2
	cmp r1, #0x03
	bge _080E158C
	cmp r1, #0x02
	bge _080E156A
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r1, r1, #0x08
	str r1, [r3, #0x00]
	adds r2, #0x02
	movs r6, #0x00
	ldsh r1, [r2, r6]
	lsls r1, r1, #0x08
	str r1, [r3, #0x04]
	adds r2, #0x02
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r1, r1, #0x08
	str r1, [r3, #0x08]
	adds r2, #0x02
	ldr r1, _080E1638 @ =0x000052FC
	adds r3, r5, r1
	subs r4, #0x01
_080E156A:
	movs r5, #0x00
	ldsh r1, [r2, r5]
	lsls r1, r1, #0x08
	str r1, [r3, #0x00]
	adds r2, #0x02
	movs r6, #0x00
	ldsh r1, [r2, r6]
	lsls r1, r1, #0x08
	str r1, [r3, #0x04]
	adds r2, #0x02
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r1, r1, #0x08
	str r1, [r3, #0x08]
	adds r2, #0x02
	adds r3, #0x0C
	subs r4, #0x01
_080E158C:
	movs r5, #0x00
	ldsh r1, [r2, r5]
	lsls r1, r1, #0x08
	str r1, [r3, #0x00]
	adds r2, #0x02
	movs r6, #0x00
	ldsh r1, [r2, r6]
	lsls r1, r1, #0x08
	str r1, [r3, #0x04]
	adds r2, #0x02
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r1, r1, #0x08
	str r1, [r3, #0x08]
	adds r2, #0x02
	adds r3, #0x0C
	subs r4, #0x01
	cmp r4, #0x00
	beq _080E1624
_080E15B2:
	movs r5, #0x00
	ldsh r1, [r2, r5]
	lsls r1, r1, #0x08
	str r1, [r3, #0x00]
	movs r6, #0x02
	ldsh r1, [r2, r6]
	lsls r1, r1, #0x08
	str r1, [r3, #0x04]
	movs r0, #0x04
	ldsh r1, [r2, r0]
	lsls r1, r1, #0x08
	str r1, [r3, #0x08]
	adds r0, r3, #0x0
	adds r0, #0x0C
	movs r5, #0x06
	ldsh r1, [r2, r5]
	lsls r1, r1, #0x08
	str r1, [r3, #0x0C]
	movs r6, #0x08
	ldsh r1, [r2, r6]
	lsls r1, r1, #0x08
	str r1, [r0, #0x04]
	movs r5, #0x0A
	ldsh r1, [r2, r5]
	lsls r1, r1, #0x08
	str r1, [r0, #0x08]
	adds r0, #0x0C
	movs r6, #0x0C
	ldsh r1, [r2, r6]
	lsls r1, r1, #0x08
	str r1, [r3, #0x18]
	movs r5, #0x0E
	ldsh r1, [r2, r5]
	lsls r1, r1, #0x08
	str r1, [r0, #0x04]
	movs r6, #0x10
	ldsh r1, [r2, r6]
	lsls r1, r1, #0x08
	str r1, [r0, #0x08]
	adds r0, #0x0C
	movs r5, #0x12
	ldsh r1, [r2, r5]
	lsls r1, r1, #0x08
	str r1, [r3, #0x24]
	movs r6, #0x14
	ldsh r1, [r2, r6]
	lsls r1, r1, #0x08
	str r1, [r0, #0x04]
	movs r5, #0x16
	ldsh r1, [r2, r5]
	lsls r1, r1, #0x08
	str r1, [r0, #0x08]
	adds r2, #0x18
	adds r3, #0x30
	subs r4, #0x04
	cmp r4, #0x00
	bne _080E15B2
_080E1624:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E162C: .4byte 0x03000FD8
_080E1630: .4byte 0x03000FDC
_080E1634: .4byte 0x000052F0
_080E1638: .4byte 0x000052FC
