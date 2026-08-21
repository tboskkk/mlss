	.syntax unified
	.text

	thumb_func_start sub_8075DF4
sub_8075DF4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08075E10
	adds r0, r2, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	ldr r3, _08075E38 @ =0xFFFFFA00
	adds r1, r1, r3
	str r1, [r0, #0x00]
	ldr r0, [r2, #0x08]
	strh r1, [r0, #0x0C]
_08075E10:
	adds r1, r2, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08075E24
	subs r0, #0x08
	str r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
_08075E24:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075E34
	adds r0, r2, #0x0
	bl sub_807C298
_08075E34:
	pop {r0}
	bx r0
_08075E38: .4byte 0xFFFFFA00
