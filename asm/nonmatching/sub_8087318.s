	.syntax unified
	.text

	thumb_func_start sub_8087318
sub_8087318:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0808732A
	adds r1, #0xFF
_0808732A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08087334
	adds r2, #0xFF
_08087334:
	asrs r2, r2, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_808842C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_8088560
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
