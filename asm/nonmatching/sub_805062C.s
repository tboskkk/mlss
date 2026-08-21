	.syntax unified
	.text

	thumb_func_start sub_805062C
sub_805062C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80459C0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _08050656
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x88
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
_08050656:
	pop {r4}
	pop {r0}
	bx r0
