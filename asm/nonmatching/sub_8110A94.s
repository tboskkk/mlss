	.syntax unified
	.text

	thumb_func_start sub_8110A94
sub_8110A94:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08110AEE
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	bl sub_807BC90
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08110AF8 @ =0x0000219E
	str r5, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08110AFC @ =0x08110B05
	str r0, [r4, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r0, _08110B00 @ =0x08110B3D
	str r0, [r4, #0x4C]
_08110AEE:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08110AF8: .4byte 0x0000219E
_08110AFC: .4byte sub_8110B04
_08110B00: .4byte sub_8110B3C
