	.syntax unified
	.text

	thumb_func_start sub_8050740
sub_8050740:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8040AE0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0805076C
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x34]
	adds r1, r5, #0x0
	bl _call_via_r2
_0805076C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
