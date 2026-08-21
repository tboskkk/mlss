	.syntax unified
	.text

	thumb_func_start sub_80E1AB0
sub_80E1AB0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080E1ADC
	movs r2, #0x12
	ldsh r1, [r4, r2]
	movs r3, #0x14
	ldsh r2, [r4, r3]
	movs r6, #0x16
	ldsh r3, [r4, r6]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807FC54
	b _080E1AE6
_080E1ADC:
	adds r0, r5, #0x0
	bl sub_807FB34
	movs r0, #0x00
	str r0, [r4, #0x04]
_080E1AE6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
