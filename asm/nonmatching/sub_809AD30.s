	.syntax unified
	.text

	thumb_func_start sub_809AD30
sub_809AD30:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, _0809ADB8 @ =0x03000FD8
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r6, [r5, #0x2C]
	adds r2, r5, #0x0
	adds r2, #0xB2
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r2, #0x00]
	subs r0, #0x33
	strh r0, [r2, #0x00]
	ldr r2, [r5, #0x08]
	movs r0, #0x02
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x08]
	movs r3, #0x02
	ldsh r0, [r0, r3]
	adds r0, #0x20
	cmp r1, r0
	blt _0809ADAE
	adds r0, r2, #0x0
	bl sub_807FB64
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0809AD94
	adds r0, r7, #0x0
	cmp r5, r4
	beq _0809AD8E
	adds r0, r4, #0x0
_0809AD8E:
	ldr r0, [r0, #0x08]
	bl sub_807FB64
_0809AD94:
	adds r4, r6, #0x0
	adds r4, #0xA8
	ldr r0, [r4, #0x00]
	bl sub_807FB34
	movs r1, #0x00
	str r1, [r4, #0x00]
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	str r0, [r5, #0x2C]
	str r1, [r6, #0x2C]
	ldr r0, _0809ADBC @ =0x0809ADC1
	str r0, [r5, #0x4C]
_0809ADAE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809ADB8: .4byte 0x03000FD8
_0809ADBC: .4byte sub_809ADC0
