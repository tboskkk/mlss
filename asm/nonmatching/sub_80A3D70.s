	.syntax unified
	.text

	thumb_func_start sub_80A3D70
sub_80A3D70:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A3DDC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r5, r4, #0x0
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A3DD4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A3DA2
	cmp r1, #0x04
	bne _080A3DD0
_080A3DA2:
	ldr r2, _080A3DE0 @ =0x03001038
	ldr r0, _080A3DE4 @ =0x0819832C
	ldr r1, _080A3DE8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0B
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080A3DD0:
	ldr r0, _080A3DEC @ =0x080A4A11
	str r0, [r6, #0x4C]
_080A3DD4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A3DDC: .4byte 0x03000FD8
_080A3DE0: .4byte 0x03001038
_080A3DE4: .4byte 0x0819832C
_080A3DE8: .4byte 0x08198220
_080A3DEC: .4byte sub_80A4A10
