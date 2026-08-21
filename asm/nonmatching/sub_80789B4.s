	.syntax unified
	.text

	thumb_func_start sub_80789B4
sub_80789B4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08078A4A
	adds r1, #0x10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _080789E8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080789E4 @ =0x080795D5
	b _08078A3E
_080789E4: .4byte sub_80795D4
_080789E8:
	movs r5, #0x00
	bl sub_8199F30
	adds r2, r0, #0x0
	movs r0, #0x01
	ands r2, r0
	adds r3, r4, #0x0
	adds r3, #0xA8
	b _080789FE
_080789FA:
	cmp r5, #0x02
	bhi _08078A2C
_080789FE:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0x01
	ands r2, r0
	ldr r0, _08078A50 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x30]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080789FA
	cmp r5, #0x02
	bls _08078A2E
_08078A2C:
	movs r2, #0x00
_08078A2E:
	str r2, [r3, #0x00]
	adds r1, r2, #0x3
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08078A54 @ =0x08079569
_08078A3E:
	str r0, [r4, #0x4C]
	ldr r0, _08078A58 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08078A4A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08078A50: .4byte 0x03000FD8
_08078A54: .4byte sub_8079568
_08078A58: .4byte 0x00000119
