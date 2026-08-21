	.syntax unified
	.text

	thumb_func_start sub_8072294
sub_8072294:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x32
	bhi _080722D0
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xF6
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	beq _080722D0
	adds r0, r2, #0x0
	movs r1, #0xC8
	bl sub_810835C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080722D0:
	ldr r1, _080722DC @ =0x0807223D
	str r1, [r5, #0x4C]
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080722DC: .4byte sub_807223C
