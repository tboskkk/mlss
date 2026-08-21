	.syntax unified
	.text

	thumb_func_start sub_80761E8
sub_80761E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076202
	b _0807630E
_08076202:
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r6, #0x00
	ldr r0, _0807631C @ =0x00004047
	mov r9, r0
	mov r8, r6
	adds r7, r5, #0x0
	adds r7, #0x9C
_0807621A:
	ldr r0, _08076320 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r4, [r5, #0x28]
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076238
	adds r0, #0xFF
_08076238:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076246
	adds r0, #0xFF
_08076246:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076254
	adds r0, #0xFF
_08076254:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	bl sub_807BF34
	lsls r4, r6, #0x02
	add r4, sp
	adds r4, #0x0C
	str r0, [r4, #0x00]
	ldr r1, [r7, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	ldr r2, [r4, #0x00]
	str r2, [r5, #0x30]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	adds r3, #0x20
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, _08076324 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r1, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r1, #0x2C]
	ldr r0, [r4, #0x00]
	bl sub_807F4FC
	ldr r1, [r4, #0x00]
	ldr r0, _08076328 @ =0x08077201
	str r0, [r1, #0x58]
	ldr r0, [r7, #0x00]
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldr r4, [r4, #0x00]
	mov r0, r8
	str r0, [r4, #0x4C]
	ldr r0, _0807632C @ =0x000024C2
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080762DE
	adds r1, #0xFF
_080762DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080762E8
	adds r2, #0xFF
_080762E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080762F2
	adds r3, #0xFF
_080762F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	bl sub_80DF024
	adds r6, #0x01
	cmp r6, #0x01
	ble _0807621A
	ldr r0, _08076330 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08076334 @ =0x080773ED
	str r0, [r5, #0x4C]
_0807630E:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0807631C: .4byte 0x00004047
_08076320: .4byte 0x03000FD8
_08076324: .4byte sub_8087540
_08076328: .4byte sub_8077200
_0807632C: .4byte 0x000024C2
_08076330: .4byte 0x00000119
_08076334: .4byte sub_80773EC
