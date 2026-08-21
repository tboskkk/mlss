	.syntax unified
	.text

	thumb_func_start sub_8088D50
sub_8088D50:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x28]
	adds r3, r4, #0x0
	adds r3, #0xB2
	ldrh r0, [r3, #0x00]
	subs r0, #0x5E
	strh r0, [r3, #0x00]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r2, #0xE0
	ldr r2, [r2, #0x00]
	cmp r0, r2
	bge _08088D74
	str r2, [r4, #0x18]
_08088D74:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08088DE6
	ldr r1, [r4, #0x2C]
	strh r5, [r3, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r1, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	ldr r0, _08088DEC @ =0x08088DF1
	str r0, [r4, #0x4C]
_08088DE6:
	pop {r4, r5}
	pop {r0}
	bx r0
_08088DEC: .4byte sub_8088DF0
