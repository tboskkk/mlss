	.syntax unified
	.text

	thumb_func_start sub_8133D18
sub_8133D18:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	adds r3, r0, #0x0
	cmp r3, #0x00
	bne _08133D74
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD4
	lsls r0, r0, #0x07
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
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133D7C @ =0x08133CF1
	str r0, [r4, #0x4C]
_08133D74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133D7C: .4byte sub_8133CF0
