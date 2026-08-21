	.syntax unified
	.text

	thumb_func_start sub_810958C
sub_810958C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810971C
	ldr r0, _081095DC @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r0, #0xC5
	lsls r0, r0, #0x02
	adds r2, r3, r0
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r1, #0x0
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	ldr r1, _081095E0 @ =0x1FFF0000
	cmp r0, r1
	ble _081095F4
	movs r0, #0x80
	lsls r0, r0, #0x06
	strh r0, [r2, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x10
	ldsh r1, [r0, r2]
	lsls r1, r1, #0x02
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	beq _081095E8
	ldr r0, _081095E4 @ =0x0810D4E1
	b _081095F2
	.byte 0x00, 0x00
_081095DC: .4byte 0x03000FD8
_081095E0: .4byte 0x1FFF0000
_081095E4: .4byte sub_810D4E0
_081095E8:
	ldrb r0, [r3, #0x07]
	movs r1, #0x1F
	ands r1, r0
	strb r1, [r3, #0x07]
	ldr r0, _081095FC @ =0x0810971D
_081095F2:
	str r0, [r4, #0x04]
_081095F4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081095FC: .4byte sub_810971C
