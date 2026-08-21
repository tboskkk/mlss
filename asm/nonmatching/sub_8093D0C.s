	.syntax unified
	.text

	thumb_func_start sub_8093D0C
sub_8093D0C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093D24
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093D62
_08093D24:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08093D34
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08093D62
_08093D34:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08093D68 @ =0x08093B15
	str r0, [r4, #0x4C]
_08093D62:
	pop {r4}
	pop {r0}
	bx r0
_08093D68: .4byte sub_8093B14
