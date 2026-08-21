	.syntax unified
	.text

	thumb_func_start sub_80506D0
sub_80506D0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8047FDC
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _08050708
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08050708
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r2, #0x20
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
_08050708:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
