	.syntax unified
	.text

	thumb_func_start sub_8075C8C
sub_8075C8C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075CDE
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075CE8 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075CBC
	adds r1, #0xFF
_08075CBC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075CC6
	adds r2, #0xFF
_08075CC6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075CD0
	adds r3, #0xFF
_08075CD0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075CEC @ =0x00002479
	bl sub_80DF024
	ldr r0, _08075CF0 @ =0x080756A5
	str r0, [r4, #0x4C]
_08075CDE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075CE8: .4byte 0x0000012B
_08075CEC: .4byte 0x00002479
_08075CF0: .4byte sub_80756A4
