	.syntax unified
	.text

	thumb_func_start sub_80AC950
sub_80AC950:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080AC9B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	ldr r0, [r0, #0x74]
	ldr r5, [r0, #0x54]
	cmp r5, #0x00
	bne _080AC9A8
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC974
	cmp r1, #0x04
	bne _080AC9A4
_080AC974:
	ldr r2, _080AC9B4 @ =0x03001038
	ldr r0, _080AC9B8 @ =0x0819832C
	ldr r1, _080AC9BC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AC9A4:
	ldr r0, _080AC9C0 @ =0x080AC9C5
	str r0, [r6, #0x4C]
_080AC9A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC9B0: .4byte 0x03000FD8
_080AC9B4: .4byte 0x03001038
_080AC9B8: .4byte 0x0819832C
_080AC9BC: .4byte 0x08198220
_080AC9C0: .4byte sub_80AC9C4
