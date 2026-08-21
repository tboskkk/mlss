	.syntax unified
	.text

	thumb_func_start sub_809A630
sub_809A630:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _0809A662
	ldr r0, _0809A66C @ =0x0809A76D
	str r0, [r4, #0x4C]
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
	bl sub_807F47C
_0809A662:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0809A66C: .4byte sub_809A76C
