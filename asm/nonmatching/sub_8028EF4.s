	.syntax unified
	.text

	thumb_func_start sub_8028EF4
sub_8028EF4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_801A6B0
	cmp r4, #0x00
	beq _08028F08
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8022554
_08028F08:
	ldr r0, _08028F24 @ =0x000004AC
	ldr r4, _08028F28 @ =0x081E2694
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_812F5D8
	pop {r4}
	pop {r0}
	bx r0
_08028F24: .4byte 0x000004AC
_08028F28: .4byte 0x081E2694
