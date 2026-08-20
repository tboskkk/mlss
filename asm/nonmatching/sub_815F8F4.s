	.syntax unified
	.text

	thumb_func_start sub_815F8F4
sub_815F8F4:
	push {r4, lr}
	mov r12, r0
	ldr r0, _0815F978 @ =0x08CDCF70
	mov r2, r12
	str r0, [r2, #0x30]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r2, r12
	str r0, [r2, #0x0C]
	str r0, [r2, #0x04]
	movs r2, #0x02
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r2, r12
	str r0, [r2, #0x10]
	str r0, [r2, #0x08]
	movs r4, #0x00
	movs r3, #0x00
	strh r3, [r2, #0x14]
	strh r3, [r2, #0x18]
	strh r3, [r2, #0x1C]
	strh r3, [r2, #0x20]
	mov r0, r12
	adds r0, #0x24
	strb r4, [r0, #0x00]
	ldrb r0, [r1, #0x0C]
	adds r2, #0x25
	strb r0, [r2, #0x00]
	ldrb r0, [r1, #0x06]
	adds r2, #0x01
	strb r0, [r2, #0x00]
	ldrb r0, [r1, #0x07]
	adds r2, #0x01
	strb r0, [r2, #0x00]
	ldrb r2, [r1, #0x04]
	mov r0, r12
	adds r0, #0x28
	strb r2, [r0, #0x00]
	ldrb r0, [r1, #0x05]
	mov r2, r12
	adds r2, #0x29
	strb r0, [r2, #0x00]
	ldrb r0, [r1, #0x08]
	adds r2, #0x01
	strb r0, [r2, #0x00]
	ldrb r0, [r1, #0x09]
	adds r2, #0x01
	strb r0, [r2, #0x00]
	ldrb r2, [r1, #0x0A]
	mov r0, r12
	adds r0, #0x2C
	strb r2, [r0, #0x00]
	ldrb r0, [r1, #0x0B]
	mov r1, r12
	adds r1, #0x2D
	strb r0, [r1, #0x00]
	mov r0, r12
	str r3, [r0, #0x00]
	adds r0, #0x2E
	strb r4, [r0, #0x00]
	mov r0, r12
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815F978: .4byte 0x08CDCF70
