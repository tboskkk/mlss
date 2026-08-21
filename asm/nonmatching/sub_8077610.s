	.syntax unified
	.text

	thumb_func_start sub_8077610
sub_8077610:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077658
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077636
	adds r1, #0xFF
_08077636:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077640
	adds r2, #0xFF
_08077640:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807764A
	adds r3, #0xFF
_0807764A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077660 @ =0x000024FB
	bl sub_80DF024
	ldr r0, _08077664 @ =0x08076415
	str r0, [r4, #0x4C]
_08077658:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077660: .4byte 0x000024FB
_08077664: .4byte sub_8076414
