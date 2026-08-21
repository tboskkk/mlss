	.syntax unified
	.text

	thumb_func_start sub_809AF60
sub_809AF60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809AF9E
	ldr r2, _0809AFA4 @ =0x000040C0
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r1, _0809AFA8 @ =0x0200004A
	ldr r2, _0809AFAC @ =0x0000C0FF
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0809AFB0 @ =0x0809AECD
	str r0, [r4, #0x4C]
_0809AF9E:
	pop {r4}
	pop {r0}
	bx r0
_0809AFA4: .4byte 0x000040C0
_0809AFA8: .4byte 0x0200004A
_0809AFAC: .4byte 0x0000C0FF
_0809AFB0: .4byte sub_809AECC
