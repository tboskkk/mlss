	.syntax unified
	.text

	thumb_func_start sub_8065ED4
sub_8065ED4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x00
	ldr r1, [r4, #0x30]
	cmp r1, #0x00
	beq _08065EEC
_08065EE0:
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _08065EE0
_08065EEC:
	cmp r0, #0x00
	bne _08065F00
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065F08 @ =0x0808750D
	str r0, [r4, #0x4C]
_08065F00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065F08: .4byte sub_808750C
