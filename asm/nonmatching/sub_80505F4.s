	.syntax unified
	.text

	thumb_func_start sub_80505F4
sub_80505F4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	bl sub_8041368
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _08050626
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x50
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #0x04]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
_08050626:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
