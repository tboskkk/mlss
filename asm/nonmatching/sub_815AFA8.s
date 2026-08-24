	.syntax unified
	.text

	thumb_func_start sub_815AFA8
sub_815AFA8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _0815AFF4 @ =0x00001C98
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	ldr r1, _0815AFF8 @ =0x00001C9C
	adds r3, r5, r1
	ldr r1, [r3, #0x00]
	ldr r0, [r0, #0x04]
	ldr r2, [r1, #0x04]
	subs r0, r0, r2
	ldr r1, _0815AFFC @ =0x00001CA4
	adds r6, r5, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r2, r2, r0
	ldr r0, _0815B000 @ =0xFFFF8800
	adds r2, r2, r0
	str r2, [r6, #0x00]
	ldr r1, _0815B004 @ =0x00001CA8
	adds r2, r5, r1
	ldr r0, [r3, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, [r0, #0x08]
	ldr r1, [r1, #0x08]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	ldr r3, _0815B008 @ =0xFFFF7400
	adds r0, r0, r3
	str r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	cmp r2, #0x00
	bge _0815B00C
	movs r0, #0x00
	b _0815B026
_0815AFF4: .4byte 0x00001C98
_0815AFF8: .4byte 0x00001C9C
_0815AFFC: .4byte 0x00001CA4
_0815B000: .4byte 0xFFFF8800
_0815B004: .4byte 0x00001CA8
_0815B008: .4byte 0xFFFF7400
_0815B00C:
	asrs r2, r2, #0x08
	ldr r1, _0815B038 @ =0x083CC1A0
	ldr r3, _0815B03C @ =0x00001EA2
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	adds r0, r0, r1
	ldrh r0, [r0, #0x18]
	subs r1, r0, #0x1
	lsls r0, r1, #0x08
	cmp r2, r0
	blt _0815B028
	lsls r0, r1, #0x10
_0815B026:
	str r0, [r6, #0x00]
_0815B028:
	ldr r0, _0815B040 @ =0x00001CA8
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0815B044
	movs r0, #0x00
	b _0815B04E
	.byte 0x00, 0x00
_0815B038: .4byte 0x083CC1A0
_0815B03C: .4byte 0x00001EA2
_0815B040: .4byte 0x00001CA8
_0815B044:
	asrs r0, r0, #0x08
	cmp r0, #0x5F
	ble _0815B050
	movs r0, #0xC0
	lsls r0, r0, #0x07
_0815B04E:
	str r0, [r2, #0x00]
_0815B050:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
