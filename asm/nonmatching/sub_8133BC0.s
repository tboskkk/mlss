	.syntax unified
	.text

	thumb_func_start sub_8133BC0
sub_8133BC0:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x08]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	movs r4, #0x00
	strh r0, [r1, #0x0C]
	adds r3, r2, #0x0
	adds r3, #0xA8
	ldr r0, [r3, #0x00]
	adds r0, #0x01
	str r0, [r3, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08133C10
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x08]
	strh r4, [r0, #0x0C]
	str r4, [r3, #0x00]
	ldr r0, [r2, #0x18]
	ldr r1, _08133C18 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldr r0, _08133C1C @ =0x08133B55
	str r0, [r2, #0x4C]
	adds r0, r2, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08133C10:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133C18: .4byte 0xFFFFF000
_08133C1C: .4byte sub_8133B54
