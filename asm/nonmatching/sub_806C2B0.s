	.syntax unified
	.text

	thumb_func_start sub_806C2B0
sub_806C2B0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C304
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C2E2
	adds r1, #0xFF
_0806C2E2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C2EC
	adds r2, #0xFF
_0806C2EC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C2F6
	adds r3, #0xFF
_0806C2F6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C30C @ =0x00001BFE
	bl sub_80DF024
	ldr r0, _0806C310 @ =0x0806B645
	str r0, [r4, #0x4C]
_0806C304:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806C30C: .4byte 0x00001BFE
_0806C310: .4byte sub_806B644
