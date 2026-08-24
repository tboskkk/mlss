	.syntax unified
	.text

	thumb_func_start sub_80DC0E0
sub_80DC0E0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DC196
	subs r1, #0x28
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080DC11A
	adds r0, #0x03
_080DC11A:
	asrs r6, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x3C]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080DC12C
	adds r1, #0x03
_080DC12C:
	asrs r3, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080DC13E
	adds r0, #0x03
_080DC13E:
	asrs r2, r0, #0x02
	ldr r4, _080DC19C @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xAE
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r2, #0x00]
	lsls r1, r1, #0x03
	adds r1, r1, r0
	ldr r0, _080DC1A0 @ =0x0819832C
	ldr r2, _080DC1A4 @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r4, #0x00]
	adds r2, r2, r0
	asrs r0, r1, #0x01
	ldr r3, _080DC1A8 @ =0xFFFC0000
	adds r0, r0, r3
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, _080DC1AC @ =0x080DC449
	str r0, [r5, #0x54]
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DC1B0 @ =0x080DC1B5
	str r0, [r5, #0x4C]
_080DC196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080DC19C: .4byte 0x03001038
_080DC1A0: .4byte 0x0819832C
_080DC1A4: .4byte 0x08198220
_080DC1A8: .4byte 0xFFFC0000
_080DC1AC: .4byte 0x080DC449
_080DC1B0: .4byte sub_80DC1B4
