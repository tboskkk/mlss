	.syntax unified
	.text

	thumb_func_start sub_806BD00
sub_806BD00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BD8C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BD8C
	subs r1, #0x28
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _0806BD58 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BD60
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BD5C @ =0x00001569
	b _0806BD7A
	.byte 0x00, 0x00
_0806BD58: .4byte 0x00000119
_0806BD5C: .4byte 0x00001569
_0806BD60:
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BD94 @ =0x000015D3
_0806BD7A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806BD98 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806BD9C @ =0x0806BEA9
	str r0, [r4, #0x58]
	ldr r0, _0806BDA0 @ =0x0806BDA5
	str r0, [r4, #0x4C]
_0806BD8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BD94: .4byte 0x000015D3
_0806BD98: .4byte 0x03000E3C
_0806BD9C: .4byte sub_806BEA8
_0806BDA0: .4byte sub_806BDA4
