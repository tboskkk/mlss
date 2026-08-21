	.syntax unified
	.text

	thumb_func_start sub_8097024
sub_8097024:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097060 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x18
	bl play_sfx_80195B4
	ldr r2, _08097064 @ =0x00002068
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08097068 @ =0x0809706D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08097060: .4byte 0x03000FD8
_08097064: .4byte 0x00002068
_08097068: .4byte sub_809706C
