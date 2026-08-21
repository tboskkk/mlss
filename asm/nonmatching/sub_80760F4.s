	.syntax unified
	.text

	thumb_func_start sub_80760F4
sub_80760F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807613A
	ldr r0, _08076140 @ =0x00000157
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x10
	strh r0, [r1, #0x00]
	subs r1, #0x28
	movs r0, #0x32
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r2, [r0, #0x00]
	ldr r0, _08076144 @ =0x080761AD
	str r0, [r4, #0x4C]
	adds r1, #0x2A
	movs r0, #0x20
	strh r0, [r1, #0x00]
_0807613A:
	pop {r4}
	pop {r0}
	bx r0
_08076140: .4byte 0x00000157
_08076144: .4byte sub_80761AC
