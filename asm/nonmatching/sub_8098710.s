	.syntax unified
	.text

	thumb_func_start sub_8098710
sub_8098710:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098724
	cmp r1, #0x04
	bne _08098782
_08098724:
	ldr r0, [r4, #0x28]
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r5, r0, #0x0
	adds r5, #0x64
	movs r0, #0x1E
	ldsh r3, [r4, r0]
	cmp r5, r3
	beq _08098764
	ldr r2, _08098758 @ =0x03001038
	ldr r0, _0809875C @ =0x0819832C
	ldr r1, _08098760 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r1, r5, r3
	bl _call_via_r2
	adds r2, r0, #0x0
	b _0809876A
	.byte 0x00, 0x00
_08098758: .4byte 0x03001038
_0809875C: .4byte 0x0819832C
_08098760: .4byte 0x08198220
_08098764:
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r2, r1, #0x0
_0809876A:
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_08098782:
	ldr r0, _0809878C @ =0x08098791
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0809878C: .4byte sub_8098790
