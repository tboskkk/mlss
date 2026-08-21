	.syntax unified
	.text

	thumb_func_start init_ybai_process_80F2070
init_ybai_process_80F2070: @ 080F2070
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _080F20FC @ =0x08CDC318
	str r0, [r5, #0x18]
	movs r4, #0xBD
	lsls r4, r4, #0x05
	ldr r2, _080F2100 @ =0x082001C8
	movs r0, #0x01
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r5, #0x2C]
	ldr r0, _080F2104 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, _080F2108 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	ldr r0, _080F210C @ =0x0000055C
	adds r2, r1, r0
	ldr r0, _080F2110 @ =0x083B9704
	ldr r0, [r0, #0x04]
	str r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080F2114 @ =0x083B98C4
	ldr r0, [r0, #0x04]
	str r0, [r2, #0x00]
	ldr r0, _080F2118 @ =0x00000564
	adds r2, r1, r0
	ldr r0, _080F211C @ =0x083B9D00
	ldr r0, [r0, #0x04]
	str r0, [r2, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080F2120 @ =0x083BA13C
	ldr r0, [r0, #0x04]
	str r0, [r2, #0x00]
	ldr r0, _080F2124 @ =0x0000056C
	adds r1, r1, r0
	ldr r0, _080F2128 @ =0x083BA4A8
	ldr r0, [r0, #0x04]
	str r0, [r1, #0x00]
	movs r1, #0x02
	adds r2, r5, #0x0
	adds r2, #0x20
	movs r3, #0x00
_080F20E0:
	stm r2!, {r3}
	lsls r0, r1, #0x10
	ldr r1, _080F212C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	cmp r0, #0x00
	bgt _080F20E0
	movs r0, #0x00
	str r0, [r5, #0x30]
	str r0, [r5, #0x28]
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_080F20FC: .4byte 0x08CDC318
_080F2100: .4byte 0x082001C8
_080F2104: .4byte 0x03001034
_080F2108: .4byte 0x03000FC0
_080F210C: .4byte 0x0000055C
_080F2110: .4byte 0x083B9704
_080F2114: .4byte 0x083B98C4
_080F2118: .4byte 0x00000564
_080F211C: .4byte 0x083B9D00
_080F2120: .4byte 0x083BA13C
_080F2124: .4byte 0x0000056C
_080F2128: .4byte 0x083BA4A8
_080F212C: .4byte 0xFFFF0000
