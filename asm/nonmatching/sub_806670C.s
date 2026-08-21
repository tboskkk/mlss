	.syntax unified
	.text

	thumb_func_start sub_806670C
sub_806670C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066774
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xA6
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806677C @ =0x08066865
	str r0, [r4, #0x4C]
_08066774:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806677C: .4byte sub_8066864
