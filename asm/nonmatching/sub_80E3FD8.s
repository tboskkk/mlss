	.syntax unified
	.text

	thumb_func_start sub_80E3FD8
sub_80E3FD8:
	push {r4, r5, lr}
	cmp r0, #0x00
	beq _080E400C
	adds r4, r0, #0x3
	movs r0, #0x04
	negs r0, r0
	ands r4, r0
	ldr r0, _080E4000 @ =0x08000DB4
	ldr r5, _080E4004 @ =0x08000F9C
	subs r5, r5, r0
	lsls r2, r5, #0x0A
	lsrs r2, r2, #0x0B
	adds r1, r4, #0x0
	bl CpuSet
	ldr r0, _080E4008 @ =0x03000F8C
	str r4, [r0, #0x00]
	adds r4, r4, r5
	adds r0, r4, #0x0
	b _080E4014
_080E4000: .4byte 0x08000DB4
_080E4004: .4byte 0x08000F9C
_080E4008: .4byte 0x03000F8C
_080E400C:
	ldr r1, _080E401C @ =0x03000F8C
	ldr r0, _080E4020 @ =0x08000DB4
	str r0, [r1, #0x00]
	movs r0, #0x00
_080E4014:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080E401C: .4byte 0x03000F8C
_080E4020: .4byte 0x08000DB4
