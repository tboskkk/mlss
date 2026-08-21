	.syntax unified
	.text

	thumb_func_start sub_8077350
sub_8077350:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077386
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x14
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	ldr r0, _0807738C @ =0x080764D9
	str r0, [r4, #0x4C]
_08077386:
	pop {r4}
	pop {r0}
	bx r0
_0807738C: .4byte sub_80764D8
