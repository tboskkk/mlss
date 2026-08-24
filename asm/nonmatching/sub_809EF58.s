	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	bl sub_807F4FC
	ldr r0, _0809EFC4 @ =0x0809F101
	str r0, [r4, #0x58]
	ldr r0, _0809EFC8 @ =0x0809F0A9
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809EFB8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809EF86
	adds r1, #0xFF
_0809EF86:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809EF90
	adds r2, #0xFF
_0809EF90:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	adds r0, r4, #0x0
	bl sub_8088164
_0809EFB8:
	ldr r0, _0809EFCC @ =0x0809F085
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809EFC4: .4byte sub_809F100
_0809EFC8: .4byte sub_809F0A8
_0809EFCC: .4byte sub_809F084
