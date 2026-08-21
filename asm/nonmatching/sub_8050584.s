	.syntax unified
	.text

	thumb_func_start sub_8050584
sub_8050584:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	adds r3, r5, #0x0
	bl sub_8041A2C
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _080505BE
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x60
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r4, [r1, #0x04]
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	adds r3, r5, #0x0
	bl _call_via_r4
_080505BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
