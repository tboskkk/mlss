	.syntax unified
	.text

	thumb_func_start sub_80EADC4
sub_80EADC4:
	push {r4, lr}
	ldr r0, _080EADE4 @ =0x03000D44
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r4, #0x04
	ldsb r4, [r2, r4]
	movs r3, #0x08
	ldsb r3, [r2, r3]
	adds r2, r4, #0x0
	bl sub_801BBE4
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080EADE4: .4byte 0x03000D44
	.byte 0x01, 0x20, 0x70, 0x47
