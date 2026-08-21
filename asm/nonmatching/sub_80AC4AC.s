	.syntax unified
	.text

	thumb_func_start sub_80AC4AC
sub_80AC4AC:
	push {r4, r5, r6, r7, lr}
	ldr r0, _080AC4F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC4EA
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC4E2
	cmp r1, #0x04
	bne _080AC4E6
_080AC4E2:
	ldr r0, _080AC4F4 @ =0x080A99A9
	str r0, [r7, #0x4C]
_080AC4E6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
_080AC4EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC4F0: .4byte 0x03000FD8
_080AC4F4: .4byte sub_80A99A8
