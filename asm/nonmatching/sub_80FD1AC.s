	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080FD200 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x7C]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080FD210
	ldrb r1, [r3, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FD210
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	subs r2, #0x1E
	adds r0, r2, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _080FD210
	ldr r0, _080FD204 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD208 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r4, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD20C @ =0x080FDA35
	str r0, [r4, #0x04]
	b _080FD22C
	.byte 0x00, 0x00
_080FD200: .4byte 0x03000FD8
_080FD204: .4byte 0x03000FDC
_080FD208: .4byte 0x00008E58
_080FD20C: .4byte sub_80FDA34
_080FD210:
	movs r0, #0x02
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	ldr r2, _080FD234 @ =0x081071B9
	str r2, [r4, #0x04]
	ldr r0, _080FD238 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD23C @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _080FD240 @ =0x080FD39D
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r2
_080FD22C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FD234: .4byte sub_81071B8
_080FD238: .4byte 0x03000FDC
_080FD23C: .4byte 0x00008E58
_080FD240: .4byte sub_80FD39C
