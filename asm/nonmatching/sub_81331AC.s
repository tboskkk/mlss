	.syntax unified
	.text

	thumb_func_start sub_81331AC
sub_81331AC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08133214
	adds r3, r4, #0x0
	adds r3, #0xAE
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133208 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	adds r0, #0x08
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	ldr r0, _0813320C @ =0x0813326D
	str r0, [r1, #0x54]
	ldr r0, _08133210 @ =0x08133359
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _08133216
	.byte 0x00, 0x00
_08133208: .4byte 0x0000011F
_0813320C: .4byte sub_813326C
_08133210: .4byte sub_8133358
_08133214:
	adds r0, r2, #0x0
_08133216:
	pop {r4}
	pop {r1}
	bx r1
