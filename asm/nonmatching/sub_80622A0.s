	.syntax unified
	.text

	thumb_func_start sub_80622A0
sub_80622A0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _080622E2
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080622C0
	adds r1, #0xFF
_080622C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080622CA
	adds r2, #0xFF
_080622CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080622D4
	adds r3, #0xFF
_080622D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062308 @ =0x00000ED2
	bl sub_80DF024
	movs r0, #0x00
	strh r0, [r5, #0x00]
_080622E2:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080622FE
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806230C @ =0x08062395
	str r0, [r4, #0x4C]
_080622FE:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062308: .4byte 0x00000ED2
_0806230C: .4byte sub_8062394
