	.syntax unified
	.text

	thumb_func_start sub_80651CC
sub_80651CC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080651FC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065204 @ =0x00001509
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08065208 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806520C @ =0x08065311
	str r0, [r4, #0x5C]
	ldr r0, _08065210 @ =0x0806533D
	str r0, [r4, #0x4C]
_080651FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065204: .4byte 0x00001509
_08065208: .4byte 0x03000E3C
_0806520C: .4byte sub_8065310
_08065210: .4byte sub_806533C
