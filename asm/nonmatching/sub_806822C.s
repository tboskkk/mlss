	.syntax unified
	.text

	thumb_func_start sub_806822C
sub_806822C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806825C
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806825C
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068264 @ =0x08067E4D
	str r0, [r4, #0x4C]
_0806825C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068264: .4byte sub_8067E4C
