	.syntax unified
	.text

	thumb_func_start sub_8139030
sub_8139030:
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r3, r0, r2
	adds r2, #0xB4
	adds r0, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3C]
	adds r2, #0x02
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x38]
	adds r2, #0x02
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3E]
	movs r1, #0x02
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3A]
	bx lr
