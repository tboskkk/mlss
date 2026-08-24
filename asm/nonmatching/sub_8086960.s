	.syntax unified
	.text

	thumb_func_start sub_8086960
sub_8086960:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	ldr r0, [r3, #0x30]
	ldr r4, [r0, #0x08]
	cmp r4, #0x00
	beq _080869E0
	adds r0, r4, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	ldsh r1, [r1, r2]
	cmp r0, r1
	bne _080869E0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080869E0
	ldr r0, _08086990 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x78]
	b _08086996
_08086990: .4byte 0x03000FD8
_08086994:
	ldr r1, [r1, #0x00]
_08086996:
	cmp r1, #0x00
	beq _080869E0
	cmp r1, r3
	beq _08086994
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	beq _08086994
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x01
	ldr r0, _080869DC @ =0x0838F8B4
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x23
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x0C
	adds r2, r2, r0
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r5, [r0, #0x00]
	ldrb r1, [r4, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080869E8
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x08
	subs r0, r5, r0
	b _080869F0
_080869DC: .4byte 0x0838F8B4
_080869E0:
	adds r0, r3, #0x0
	bl sub_807C298
	b _08086A12
_080869E8:
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	adds r0, r5, r0
_080869F0:
	str r0, [r3, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x88
	movs r4, #0x02
	ldsh r1, [r2, r4]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	adds r0, r3, #0x0
	adds r0, #0x8C
	movs r4, #0x04
	ldsh r1, [r2, r4]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x18]
_08086A12:
	pop {r4, r5}
	pop {r0}
	bx r0
