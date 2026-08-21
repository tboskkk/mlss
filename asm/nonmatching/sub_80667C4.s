	.syntax unified
	.text

	thumb_func_start sub_80667C4
sub_80667C4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08066816
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080667E4
	adds r0, #0xFF
_080667E4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _080667F4
	adds r1, #0xFF
_080667F4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	subs r0, #0x10
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08066812
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	movs r2, #0x01
	ands r1, r2
	str r1, [r0, #0x00]
_08066812:
	ldr r0, _0806681C @ =0x08065F0D
	str r0, [r4, #0x4C]
_08066816:
	pop {r4}
	pop {r0}
	bx r0
_0806681C: .4byte sub_8065F0C
