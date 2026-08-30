	.syntax unified
	.text

	thumb_func_start sub_80DD600
sub_80DD600:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080DD646
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r1, #0x00
	ldsh r0, [r2, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r1, [r4, #0x30]
	cmp r1, #0x00
	beq _080DD636
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_080DD636:
	ldr r0, _080DD650 @ =0x080DD589
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080DD646:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080DD650: .4byte sub_80DD588
