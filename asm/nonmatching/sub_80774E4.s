	.syntax unified
	.text

	thumb_func_start sub_80774E4
sub_80774E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080774FC
	adds r1, #0xFF
_080774FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077506
	adds r2, #0xFF
_08077506:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077510
	adds r3, #0xFF
_08077510:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077530 @ =0x00002563
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4B
	bl play_sfx_80195B4
	ldr r0, _08077534 @ =0x080776B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077530: .4byte 0x00002563
_08077534: .4byte sub_80776B4
