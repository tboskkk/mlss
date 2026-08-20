	.syntax unified
	.text

	thumb_func_start sub_80F8C8C
sub_80F8C8C:
	push {lr}
	adds r2, r1, #0x0
	adds r1, #0xFD
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x04
	ldr r0, [r0, #0x2C]
	lsls r1, r1, #0x08
	adds r1, r1, r0
	movs r0, #0xF4
	lsls r0, r0, #0x03
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080F8CB6
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8CBC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2, #0x00]
_080F8CB6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F8CBC: .4byte 0x0000F7FF
