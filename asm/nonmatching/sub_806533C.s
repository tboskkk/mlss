	.syntax unified
	.text

	thumb_func_start sub_806533C
sub_806533C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806536C
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065374 @ =0x0000151D
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08065378 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806537C @ =0x0806541D
	str r0, [r4, #0x5C]
	ldr r0, _08065380 @ =0x080651B1
	str r0, [r4, #0x4C]
_0806536C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065374: .4byte 0x0000151D
_08065378: .4byte 0x03000E3C
_0806537C: .4byte sub_806541C
_08065380: .4byte sub_80651B0
