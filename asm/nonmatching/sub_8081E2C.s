	.syntax unified
	.text

	thumb_func_start sub_8081E2C
sub_8081E2C:
	push {r4, r5, lr}
	ldr r0, [r0, #0x6C]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08081E68
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081E68
	ldr r1, _08081E64 @ =0x0000FFFF
	cmp r0, r1
	beq _08081E56
	adds r5, r1, #0x0
_08081E46:
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081E68
	cmp r0, r5
	bne _08081E46
_08081E56:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081E68
	bl sub_8082AAC
	b _08081E56
_08081E64: .4byte 0x0000FFFF
_08081E68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
