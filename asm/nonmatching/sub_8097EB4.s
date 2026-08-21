	.syntax unified
	.text

	thumb_func_start sub_8097EB4
sub_8097EB4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08097F08 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08097F00
	cmp r4, r5
	bne _08097EEC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097EEC:
	cmp r4, r6
	bne _08097EFC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097EFC:
	ldr r0, _08097F0C @ =0x08097649
	str r0, [r4, #0x4C]
_08097F00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097F08: .4byte 0x03000FD8
_08097F0C: .4byte sub_8097648
