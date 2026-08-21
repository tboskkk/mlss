	.syntax unified
	.text

	thumb_func_start sub_80711A4
sub_80711A4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080711F2
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080711BE
	adds r1, #0xFF
_080711BE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080711C8
	adds r2, #0xFF
_080711C8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080711D2
	adds r3, #0xFF
_080711D2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080711FC @ =0x0000207A
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x05
	strh r0, [r1, #0x00]
	ldr r0, _08071200 @ =0x080712B1
	str r0, [r4, #0x4C]
_080711F2:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080711FC: .4byte 0x0000207A
_08071200: .4byte sub_80712B0
