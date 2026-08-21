	.syntax unified
	.text

	thumb_func_start sub_80507A4
sub_80507A4:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r3, #0x0
	bl sub_80403C4
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _080507D8
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x10
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r4, [r1, #0x14]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	adds r3, r7, #0x0
	bl _call_via_r4
_080507D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
