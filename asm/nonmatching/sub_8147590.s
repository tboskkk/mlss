	.syntax unified
	.text

	thumb_func_start sub_8147590
sub_8147590:
	push {r4, r5, r6, lr}
	adds r5, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldr r3, [r4, #0x00]
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r4, [r4, #0x00]
	ldr r0, _08147630 @ =0x0814796D
	cmp r4, r0
	beq _08147656
	ldr r0, _08147634 @ =0x08148B61
	cmp r4, r0
	beq _08147656
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x14]
	subs r4, r1, r0
	ldr r1, _08147638 @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r6, #0xFF
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081475D8
	adds r0, #0x3F
_081475D8:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	adds r0, r4, r0
	str r0, [r5, #0x18]
	movs r4, #0xBE
	lsls r4, r4, #0x02
	adds r0, r5, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _08147606
	adds r0, #0x0F
_08147606:
	asrs r0, r0, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	ands r0, r6
	str r0, [r2, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x14]
	subs r0, r1, r0
	cmp r0, r2
	ble _0814763C
	adds r0, r1, #0x0
	subs r0, #0x60
	str r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	cmp r0, r2
	bgt _08147656
	b _08147652
	.byte 0x00, 0x00
_08147630: .4byte sub_814796C
_08147634: .4byte sub_8148B60
_08147638: .4byte 0x08198504
_0814763C:
	cmp r0, r2
	bge _08147656
	adds r0, r1, #0x0
	adds r0, #0x60
	str r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	cmp r0, r2
	blt _08147656
	movs r2, #0x80
	lsls r2, r2, #0x06
_08147652:
	adds r0, r1, r2
	str r0, [r3, #0x00]
_08147656:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
