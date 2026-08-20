	.syntax unified
	.text

	thumb_func_start sub_80A68AC
sub_80A68AC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A6910 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A6908
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A68D4
	cmp r1, #0x04
	bne _080A6904
_080A68D4:
	ldr r2, _080A6914 @ =0x03001038
	ldr r0, _080A6918 @ =0x0819832C
	ldr r1, _080A691C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x12
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A6904:
	ldr r0, _080A6920 @ =0x080A6925
	str r0, [r5, #0x4C]
_080A6908:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A6910: .4byte 0x03000FD8
_080A6914: .4byte 0x03001038
_080A6918: .4byte 0x0819832C
_080A691C: .4byte 0x08198220
_080A6920: .4byte sub_80A6924
