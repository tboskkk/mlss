	.syntax unified
	.text

	thumb_func_start sub_80683C4
sub_80683C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x30]
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806849E
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x00
	bne _080683EC
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _080683F2
_080683EC:
	movs r0, #0x81
	bl stop_sfx_80195A8
_080683F2:
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _0806840E
	adds r0, #0xFF
_0806840E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x3C]
	cmp r1, #0x00
	bge _0806841E
	adds r1, #0xFF
_0806841E:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	bl sub_8199F30
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r1, [r7, #0x2C]
	ldr r4, [r1, #0x28]
	adds r5, r4, #0x0
	adds r5, #0xD8
	movs r1, #0x30
	bl __umodsi3
	adds r0, #0x30
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	adds r1, r1, r0
	str r1, [r6, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x88
	adds r4, #0xDC
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r0, #0xB3
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08068490
	ldr r0, _0806848C @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0806849A
_0806848C: .4byte 0x0000011B
_08068490:
	ldr r0, _080684A8 @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806849A:
	ldr r0, _080684AC @ =0x0806890D
	str r0, [r7, #0x4C]
_0806849E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080684A8: .4byte 0x0000011B
_080684AC: .4byte sub_806890C
