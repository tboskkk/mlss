	.syntax unified
	.text

	thumb_func_start sub_8074648
sub_8074648:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08074664
	adds r0, r4, #0x0
	movs r1, #0x0C
	b _08074668
_08074664:
	adds r0, r4, #0x0
	movs r1, #0x0D
_08074668:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08074684 @ =0x08072B69
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074684: .4byte sub_8072B68
