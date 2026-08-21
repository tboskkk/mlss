	.syntax unified
	.text

	thumb_func_start sub_807940C
sub_807940C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08079428 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079430
	ldr r2, _0807942C @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	b _0807943C
	.byte 0x00, 0x00
_08079428: .4byte 0x03000F6C
_0807942C: .4byte 0x00004029
_08079430:
	ldr r2, _08079448 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
_0807943C:
	ldr r0, _0807944C @ =0x080798C5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079448: .4byte 0x00004029
_0807944C: .4byte sub_80798C4
