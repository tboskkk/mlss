	.syntax unified
	.text

	thumb_func_start sub_80FB080
sub_80FB080:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _080FB0F4 @ =0x08CDC328
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x28]
	str r0, [r4, #0x20]
	ldr r5, _080FB0F8 @ =0x000009A8
	ldr r2, _080FB0FC @ =0x082001E0
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r4, #0x24]
	ldr r0, _080FB100 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r0, _080FB104 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	ldr r0, _080FB108 @ =0x0000055C
	adds r2, r1, r0
	ldr r0, _080FB10C @ =0x083B9704
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080FB110 @ =0x083B98C4
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	ldr r0, _080FB114 @ =0x00000564
	adds r2, r1, r0
	ldr r0, _080FB118 @ =0x083B9D00
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080FB11C @ =0x083BA13C
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	ldr r0, _080FB120 @ =0x0000056C
	adds r1, r1, r0
	ldr r0, _080FB124 @ =0x083BA4A8
	ldr r0, [r0, #0x08]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_080FB0F4: .4byte 0x08CDC328
_080FB0F8: .4byte 0x000009A8
_080FB0FC: .4byte 0x082001E0
_080FB100: .4byte 0x03001034
_080FB104: .4byte 0x03000FC0
_080FB108: .4byte 0x0000055C
_080FB10C: .4byte 0x083B9704
_080FB110: .4byte 0x083B98C4
_080FB114: .4byte 0x00000564
_080FB118: .4byte 0x083B9D00
_080FB11C: .4byte 0x083BA13C
_080FB120: .4byte 0x0000056C
_080FB124: .4byte 0x083BA4A8
