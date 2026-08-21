	.syntax unified
	.text

	thumb_func_start sub_8164FF4
sub_8164FF4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x98
	str r3, [r0, #0x00]
	cmp r5, #0x03
	bgt _0816500E
	movs r5, #0x04
_0816500E:
	cmp r2, #0x03
	bgt _08165014
	movs r2, #0x04
_08165014:
	ldr r0, [r4, #0x30]
	lsls r3, r0, #0x03
	adds r0, r5, r3
	cmp r0, #0xEC
	ble _08165022
	movs r0, #0xEC
	subs r5, r0, r3
_08165022:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x03
	adds r0, r2, r1
	cmp r0, #0x9C
	ble _08165030
	movs r0, #0x9C
	subs r2, r0, r1
_08165030:
	adds r0, r4, #0x0
	adds r0, #0x90
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	ldr r0, [r4, #0x00]
	bl sprite_hide_8021F20
	ldr r0, [r4, #0x04]
	bl sprite_hide_8021F20
	pop {r4, r5}
	pop {r0}
	bx r0
