	.syntax unified
	.text

	thumb_func_start sub_808759C
sub_808759C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080875B2
	ldr r0, [r4, #0x6C]
	ldr r1, [r0, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_080875B2:
	pop {r4}
	pop {r0}
	bx r0
