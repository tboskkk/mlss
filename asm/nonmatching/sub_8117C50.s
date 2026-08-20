	.syntax unified
	.text

	thumb_func_start sub_8117C50
sub_8117C50:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _08117C68 @ =0x0000FFFE
	cmp r2, r0
	beq _08117C7E
	cmp r2, r0
	bgt _08117C6C
	subs r0, #0x01
	cmp r2, r0
	beq _08117C78
	b _08117C8C
	.byte 0x00, 0x00
_08117C68: .4byte 0x0000FFFE
_08117C6C:
	ldr r0, _08117C74 @ =0x0000FFFF
	cmp r2, r0
	beq _08117C92
	b _08117C8C
_08117C74: .4byte 0x0000FFFF
_08117C78:
	asrs r3, r1, #0x02
	movs r0, #0x03
	b _08117C82
_08117C7E:
	asrs r3, r1, #0x01
	movs r0, #0x01
_08117C82:
	ands r0, r1
	cmp r0, #0x00
	beq _08117C94
	adds r3, #0x01
	b _08117C94
_08117C8C:
	adds r3, r3, r2
	cmp r1, r3
	bge _08117C94
_08117C92:
	adds r3, r1, #0x0
_08117C94:
	adds r0, r3, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
