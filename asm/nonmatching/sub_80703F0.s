	.syntax unified
	.text

	thumb_func_start sub_80703F0
sub_80703F0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070418
	adds r0, r4, #0x0
	movs r1, #0x27
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08070420 @ =0x080700C9
	str r0, [r4, #0x4C]
_08070418:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070420: .4byte sub_80700C8
