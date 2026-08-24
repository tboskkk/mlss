	.syntax unified
	.text

	thumb_func_start get_field_object_type
get_field_object_type: @ 080FB738
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #0x01
	bls _080FB770
	lsls r0, r0, #0x02
	ldr r1, _080FB76C @ =0x083D6C58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x08
	ldrb r2, [r1, #0x06]
	orrs r0, r2
	subs r1, r1, r0
	lsls r0, r3, #0x02
	adds r0, r0, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrb r0, [r1, #0x12]
	lsrs r0, r0, #0x03
	movs r1, #0x07
	ands r0, r1
	b _080FB772
	.byte 0x00, 0x00
_080FB76C: .4byte 0x083D6C58
_080FB770:
	movs r0, #0x00
_080FB772:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
