	.syntax unified
	.text

	thumb_func_start sub_8160EDC
sub_8160EDC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08160F20 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08160F28
	cmp r4, #0x00
	beq _08160F70
	ldr r0, _08160F24 @ =0x08CDCFB0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _08160F00
	movs r1, #0x03
	bl process_remove
_08160F00:
	ldr r2, [r4, #0x20]
	cmp r2, #0x00
	beq _08160F16
	ldr r1, [r2, #0x04]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08160F16:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
	b _08160F70
_08160F20: .4byte 0x0300034C
_08160F24: .4byte 0x08CDCFB0
_08160F28:
	ldr r0, [r4, #0x20]
	ldr r2, [r0, #0x04]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	adds r1, r4, #0x0
	bl _call_via_r2
	cmp r0, #0x00
	beq _08160F70
	cmp r4, #0x00
	beq _08160F70
	ldr r0, _08160F78 @ =0x08CDCFB0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _08160F52
	movs r1, #0x03
	bl process_remove
_08160F52:
	ldr r2, [r4, #0x20]
	cmp r2, #0x00
	beq _08160F68
	ldr r1, [r2, #0x04]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08160F68:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_08160F70:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08160F78: .4byte 0x08CDCFB0
