	.syntax unified
	.text

	thumb_func_start sub_8050554
sub_8050554:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8041FFC
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0805057E
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
_0805057E:
	pop {r4}
	pop {r1}
	bx r1
