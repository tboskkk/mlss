	.syntax unified
	.text

	thumb_func_start sub_8070DCC
sub_8070DCC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070E36
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070DFC
	adds r1, #0xFF
_08070DFC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070E06
	adds r2, #0xFF
_08070E06:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070E10
	adds r3, #0xFF
_08070E10:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070E40 @ =0x00002061
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x2C]
	ldr r0, _08070E44 @ =0x0808750D
	str r0, [r1, #0x4C]
	ldr r0, _08070E48 @ =0x080710E1
	str r0, [r4, #0x4C]
_08070E36:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070E40: .4byte 0x00002061
_08070E44: .4byte sub_808750C
_08070E48: .4byte sub_80710E0
