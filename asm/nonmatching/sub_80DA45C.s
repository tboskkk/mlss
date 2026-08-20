	.syntax unified
	.text

	thumb_func_start sub_80DA45C
sub_80DA45C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DA478
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, _080DA47C @ =0x080DA481
	str r0, [r2, #0x4C]
_080DA478:
	pop {r0}
	bx r0
_080DA47C: .4byte sub_80DA480
