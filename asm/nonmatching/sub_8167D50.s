	.syntax unified
	.text

	thumb_func_start sub_8167D50
sub_8167D50:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, [r4, #0x18]
	subs r0, r0, r2
	lsls r0, r0, #0x08
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x20]
	subs r1, r1, r3
	lsls r1, r1, #0x08
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	lsrs r0, r0, #0x0D
	ldr r1, _08167D88 @ =0x0821422C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, #0x52
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08167D88: .4byte dword_821422C @ =0x0821422C
