	.syntax unified
	.text

	thumb_func_start sub_8159BD8
sub_8159BD8:
	push {r4, r5, r6, r7, lr}
	ldr r0, _08159C5C @ =0x04000006
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x9F
	bhi _08159C9E
	ldr r0, _08159C60 @ =0x03001020
	ldr r4, [r0, #0x00]
	ldr r2, _08159C64 @ =0x00001CC2
	adds r1, r4, r2
	movs r7, #0x00
	ldsh r1, [r1, r7]
	adds r6, r0, #0x0
	cmp r1, #0x00
	beq _08159C30
	ldr r0, _08159C68 @ =0x0300101C
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r5, r0
	blt _08159C30
	ldr r1, _08159C6C @ =0x040000B0
	adds r2, #0x02
	adds r0, r4, r2
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x13
	str r0, [r1, #0x04]
	ldr r0, _08159C70 @ =0x84000020
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r3, _08159C74 @ =0x04000014
	ldr r7, _08159C78 @ =0x00001CA4
	adds r0, r4, r7
	ldr r1, [r0, #0x00]
	lsls r2, r5, #0x01
	adds r7, #0xA0
	adds r0, r4, r7
	adds r0, r0, r2
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	strh r1, [r3, #0x00]
_08159C30:
	ldr r0, [r6, #0x00]
	ldr r1, _08159C7C @ =0x00001CBC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x03
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _08159C84
	ldr r1, _08159C80 @ =0x04000018
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x80
	subs r0, r0, r5
	strh r0, [r1, #0x00]
	b _08159C9E
	.byte 0x00, 0x00
_08159C5C: .4byte 0x04000006
_08159C60: .4byte 0x03001020
_08159C64: .4byte 0x00001CC2
_08159C68: .4byte 0x0300101C
_08159C6C: .4byte 0x040000B0
_08159C70: .4byte 0x84000020
_08159C74: .4byte 0x04000014
_08159C78: .4byte 0x00001CA4
_08159C7C: .4byte 0x00001CBC
_08159C80: .4byte 0x04000018
_08159C84:
	ldr r2, _08159CA4 @ =0x04000018
	ldr r0, _08159CA8 @ =0x0300101C
	ldr r1, [r0, #0x00]
	lsls r0, r5, #0x03
	adds r1, r1, r0
	ldrh r0, [r1, #0x04]
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r1, #0x06]
	strh r0, [r2, #0x00]
	adds r2, #0x38
	ldrh r0, [r1, #0x08]
	strh r0, [r2, #0x00]
_08159C9E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08159CA4: .4byte 0x04000018
_08159CA8: .4byte 0x0300101C
