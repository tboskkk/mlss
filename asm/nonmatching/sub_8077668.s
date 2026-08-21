	.syntax unified
	.text

	thumb_func_start sub_8077668
sub_8077668:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077680
	adds r1, #0xFF
_08077680:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807768A
	adds r2, #0xFF
_0807768A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077694
	adds r3, #0xFF
_08077694:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080776AC @ =0x000024BA
	bl sub_80DF024
	ldr r0, _080776B0 @ =0x080761E9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080776AC: .4byte 0x000024BA
_080776B0: .4byte sub_80761E8
