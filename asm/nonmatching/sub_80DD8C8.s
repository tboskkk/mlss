	.syntax unified
	.text

	thumb_func_start sub_80DD8C8
sub_80DD8C8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DD934
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080DD8E2
	adds r0, #0xFF
_080DD8E2:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x14
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080DD8F0
	adds r0, #0xFF
_080DD8F0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080DD8FC
	adds r3, #0xFF
_080DD8FC:
	asrs r3, r3, #0x08
	adds r3, #0x10
	ldr r0, [r4, #0x2C]
	str r0, [sp, #0x000]
	ldr r0, _080DD93C @ =0x00000CAC
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DD940 @ =0x080DD9C1
	str r0, [r4, #0x4C]
_080DD934:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080DD93C: .4byte 0x00000CAC
_080DD940: .4byte sub_80DD9C0
