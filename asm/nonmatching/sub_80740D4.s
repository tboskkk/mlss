	.syntax unified
	.text

	thumb_func_start sub_80740D4
sub_80740D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08074110
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080740EA
	adds r1, #0xFF
_080740EA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080740F4
	adds r2, #0xFF
_080740F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080740FE
	adds r3, #0xFF
_080740FE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074118 @ =0x000022F0
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_08074110:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08074118: .4byte 0x000022F0
