	.syntax unified
	.text

	thumb_func_start sub_80A6F78
sub_80A6F78:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A6FD8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	ldr r0, [r0, #0x74]
	ldr r5, [r0, #0x54]
	cmp r5, #0x00
	bne _080A6FD0
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6F9C
	cmp r1, #0x04
	bne _080A6FCC
_080A6F9C:
	ldr r2, _080A6FDC @ =0x03001038
	ldr r0, _080A6FE0 @ =0x0819832C
	ldr r1, _080A6FE4 @ =0x08198220
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
_080A6FCC:
	ldr r0, _080A6FE8 @ =0x080A6FED
	str r0, [r6, #0x4C]
_080A6FD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A6FD8: .4byte 0x03000FD8
_080A6FDC: .4byte 0x03001038
_080A6FE0: .4byte 0x0819832C
_080A6FE4: .4byte 0x08198220
_080A6FE8: .4byte sub_80A6FEC
