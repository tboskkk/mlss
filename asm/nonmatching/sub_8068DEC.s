	.syntax unified
	.text

	thumb_func_start sub_8068DEC
sub_8068DEC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068E54
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08068E44
	adds r0, #0x04
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068E38 @ =0x08068B69
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08068E3C @ =0x08068E61
	str r0, [r4, #0x58]
	ldr r0, _08068E40 @ =0x08068E7D
	str r0, [r4, #0x5C]
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _08068E54
	.byte 0x00, 0x00
_08068E38: .4byte sub_8068B68
_08068E3C: .4byte sub_8068E60
_08068E40: .4byte sub_8068E7C
_08068E44:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068E5C @ =0x08068E99
	str r0, [r4, #0x4C]
_08068E54:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068E5C: .4byte sub_8068E98
