	.syntax unified
	.text

	thumb_func_start sub_8066F60
sub_8066F60:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08066FE8
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x05
	adds r0, r0, r3
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
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08066FF0 @ =0x08067831
	str r0, [r4, #0x58]
	ldr r0, _08066FF4 @ =0x08067839
	str r0, [r4, #0x60]
	bl sub_8199F30
	movs r1, #0x03
	ands r0, r1
	adds r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldr r0, _08066FF8 @ =0x08066FFD
	str r0, [r4, #0x4C]
_08066FE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066FF0: .4byte dword_8067831 @ =0x08067831
_08066FF4: .4byte sub_8067838
_08066FF8: .4byte sub_8066FFC
