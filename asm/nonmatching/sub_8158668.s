	.syntax unified
	.text

	thumb_func_start sub_8158668
sub_8158668:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x04
	beq _081586A2
	cmp r0, #0x04
	bgt _08158684
	cmp r0, #0x03
	beq _0815868A
	b _081586B4
_08158684:
	cmp r1, #0x0C
	beq _081586AA
	b _081586B4
_0815868A:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _081586F4
_081586A2:
	adds r0, r4, #0x0
	bl sub_815FAFC
	b _081586F4
_081586AA:
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _081586F4
_081586B4:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _081586C8
	cmp r0, #0x01
	ble _081586F4
	cmp r0, #0x02
	beq _081586D8
	b _081586F4
_081586C8:
	ldr r1, [r4, #0x04]
	adds r0, r2, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x08]
	b _081586F4
_081586D8:
	adds r0, r4, #0x0
	movs r1, #0x3C
	bl sub_815FA70
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x12]
	movs r1, #0x07
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x12]
_081586F4:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
