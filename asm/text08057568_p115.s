	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DA340
sub_80DA340:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DA362
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_8087540
_080DA362:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80DA368
sub_80DA368:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DA390
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r4, #0x00]
	ldr r0, _080DA398 @ =0x080DA39D
	str r0, [r5, #0x4C]
_080DA390:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DA398: .4byte sub_80DA39C
	thumb_func_start sub_80DA39C
sub_80DA39C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DA3D4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _080DA3DC @ =0x080DA3E1
	str r0, [r4, #0x4C]
_080DA3D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DA3DC: .4byte sub_80DA3E0
