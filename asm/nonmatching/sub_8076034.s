	.syntax unified
	.text

	thumb_func_start sub_8076034
sub_8076034:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076080 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076056
	adds r1, #0xFF
_08076056:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076060
	adds r2, #0xFF
_08076060:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807606A
	adds r3, #0xFF
_0807606A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076084 @ =0x0000243D
	bl sub_80DF024
	ldr r0, _08076088 @ =0x080754D9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08076080: .4byte 0x0000012B
_08076084: .4byte 0x0000243D
_08076088: .4byte sub_80754D8
