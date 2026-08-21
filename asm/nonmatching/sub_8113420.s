	.syntax unified
	.text

	thumb_func_start sub_8113420
sub_8113420:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	ldrh r0, [r0, #0x00]
	mvns r0, r0
	lsls r0, r0, #0x10
	movs r1, #0x15
	cmp r0, #0x00
	beq _08113438
	movs r1, #0x16
_08113438:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x02
	strh r1, [r0, #0x00]
	ldr r0, _08113454 @ =0x08113459
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08113454: .4byte sub_8113458
