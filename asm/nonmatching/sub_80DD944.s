	.syntax unified
	.text

	thumb_func_start sub_80DD944
sub_80DD944:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DD9B0
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080DD95E
	adds r0, #0xFF
_080DD95E:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x14
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080DD96C
	adds r0, #0xFF
_080DD96C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080DD978
	adds r3, #0xFF
_080DD978:
	asrs r3, r3, #0x08
	adds r3, #0x10
	ldr r0, [r4, #0x2C]
	str r0, [sp, #0x000]
	ldr r0, _080DD9B8 @ =0x00000CAC
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DD9BC @ =0x080DDA3D
	str r0, [r4, #0x4C]
_080DD9B0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080DD9B8: .4byte 0x00000CAC
_080DD9BC: .4byte sub_80DDA3C
