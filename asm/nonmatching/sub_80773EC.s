	.syntax unified
	.text

	thumb_func_start sub_80773EC
sub_80773EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077434
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077412
	adds r1, #0xFF
_08077412:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807741C
	adds r2, #0xFF
_0807741C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077426
	adds r3, #0xFF
_08077426:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807743C @ =0x000025F5
	bl sub_80DF024
	ldr r0, _08077440 @ =0x08076339
	str r0, [r4, #0x4C]
_08077434:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0807743C: .4byte 0x000025F5
_08077440: .4byte sub_8076338
