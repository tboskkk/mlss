	.syntax unified
	.text

	thumb_func_start sub_808227C
sub_808227C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	ble _080822A2
	subs r0, r1, #0x1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _080822A2
	adds r0, r4, #0x0
	bl sub_8081568
_080822A2:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _080822CA
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080822D0 @ =0x080822D5
	str r0, [r5, #0x04]
_080822CA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080822D0: .4byte sub_80822D4
