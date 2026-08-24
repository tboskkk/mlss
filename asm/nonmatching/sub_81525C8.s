	.syntax unified
	.text

	thumb_func_start sub_81525C8
sub_81525C8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, _081525F8 @ =0x00001C98
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldr r5, _081525FC @ =0x00001C9C
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x04]
	ldr r2, [r1, #0x04]
	subs r0, r0, r2
	ldr r1, _08152600 @ =0x00001CB8
	adds r3, r4, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r2, r2, r0
	ldr r5, _08152604 @ =0xFFFF8800
	adds r2, r2, r5
	str r2, [r3, #0x00]
	cmp r2, #0x00
	bge _08152608
	movs r0, #0x00
	b _08152624
_081525F8: .4byte 0x00001C98
_081525FC: .4byte 0x00001C9C
_08152600: .4byte 0x00001CB8
_08152604: .4byte 0xFFFF8800
_08152608:
	asrs r2, r2, #0x08
	ldr r1, _08152634 @ =0x083CB0F0
	movs r5, #0xF9
	lsls r5, r5, #0x05
	adds r0, r4, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	adds r0, r0, r1
	ldrh r0, [r0, #0x18]
	subs r1, r0, #0x1
	lsls r0, r1, #0x08
	cmp r2, r0
	blt _08152626
	lsls r0, r1, #0x10
_08152624:
	str r0, [r3, #0x00]
_08152626:
	ldr r0, _08152638 @ =0x00001CBC
	adds r1, r4, r0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bge _0815263C
	movs r0, #0x00
	b _08152646
_08152634: .4byte 0x083CB0F0
_08152638: .4byte 0x00001CBC
_0815263C:
	asrs r0, r0, #0x08
	cmp r0, #0x5F
	ble _08152648
	movs r0, #0xC0
	lsls r0, r0, #0x07
_08152646:
	str r0, [r1, #0x00]
_08152648:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
