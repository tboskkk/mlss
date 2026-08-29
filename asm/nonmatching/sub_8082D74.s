	.syntax unified
	.text

	thumb_func_start sub_8082D74
sub_8082D74:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [sp, #0x01C]
	ldr r4, [sp, #0x020]
	ldr r6, [sp, #0x024]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_805A230
	ldr r0, _08082DC8 @ =0x08CDC2A8
	str r0, [r5, #0x18]
	movs r1, #0xEF
	lsls r1, r1, #0x03
	adds r0, r5, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r2, _08082DCC @ =0x00000774
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x04
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08082DC8: .4byte 0x08CDC2A8
_08082DCC: .4byte 0x00000774
