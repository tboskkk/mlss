	.syntax unified
	.text

	thumb_func_start sub_815EA64
sub_815EA64:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x4
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0815EA74
	bl sprite_show_8020CBC
_0815EA74:
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _0815EA7E
	bl sprite_show_8020CBC
_0815EA7E:
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0815EA88
	bl sprite_show_8020CBC
_0815EA88:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _0815EA92
	bl sprite_show_8020CBC
_0815EA92:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _0815EA9C
	bl sprite_show_8020CBC
_0815EA9C:
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	beq _0815EAA6
	bl sprite_show_8020CBC
_0815EAA6:
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0815EAB0
	bl sprite_show_8020CBC
_0815EAB0:
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _0815EABA
	bl sprite_show_8020CBC
_0815EABA:
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _0815EAC4
	bl sprite_show_8020CBC
_0815EAC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
