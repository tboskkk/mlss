	.syntax unified
	.text

	thumb_func_start sub_8075CF4
sub_8075CF4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075D3C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r0, #0x45
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08075D44 @ =0x08087541
	str r0, [r4, #0x68]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08075D48 @ =0x08075C11
	str r0, [r4, #0x60]
	ldr r0, _08075D4C @ =0x0807560D
	str r0, [r4, #0x4C]
_08075D3C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075D44: .4byte sub_8087540
_08075D48: .4byte sub_8075C10
_08075D4C: .4byte sub_807560C
