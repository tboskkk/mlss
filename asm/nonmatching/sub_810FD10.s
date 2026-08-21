	.syntax unified
	.text

	thumb_func_start sub_810FD10
sub_810FD10:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810FD44
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x0C
	bl sub_80883A0
	ldr r0, _0810FD4C @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0810FD50 @ =0x0810F825
	str r0, [r4, #0x4C]
_0810FD44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FD4C: .4byte 0x0000010F
_0810FD50: .4byte sub_810F824
