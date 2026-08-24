	.syntax unified
	.text

	thumb_func_start sub_8148CA4
sub_8148CA4:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r3, r0
	movs r5, #0x00
	ldsh r1, [r2, r5]
	ldr r0, [r3, #0x18]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	movs r5, #0xDD
	lsls r5, r5, #0x01
	adds r1, r1, r5
	strh r0, [r1, #0x00]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	ldrh r5, [r2, #0x00]
	adds r0, r0, r5
	strh r0, [r2, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08148CEC
	movs r0, #0x00
	str r0, [r3, #0x18]
	ldr r0, _08148CF4 @ =0x08148C61
	str r0, [r4, #0x00]
_08148CEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148CF4: .4byte dword_8148C61 @ =0x08148C61
