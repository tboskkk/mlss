	.syntax unified
	.text

	thumb_func_start sub_8089964
sub_8089964:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r1, [r5, #0x00]
	cmp r1, r0
	blt _080899AE
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x98
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x14
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080899B4 @ =0x0808965D
	str r0, [r4, #0x4C]
_080899AE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080899B4: .4byte sub_808965C
