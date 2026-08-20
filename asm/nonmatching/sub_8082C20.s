	.syntax unified
	.text

	thumb_func_start sub_8082C20
sub_8082C20:
	push {r4, r5, r6, lr}
	ldr r5, _08082C50 @ =0x00000774
	adds r4, r0, r5
	movs r6, #0x00
	ldsh r5, [r4, r6]
	ldr r4, [r1, #0x00]
	subs r4, r4, r5
	str r4, [r1, #0x00]
	ldr r1, _08082C54 @ =0x00000776
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	movs r5, #0xF8
	lsls r5, r5, #0x01
	adds r0, r0, r5
	str r0, [r3, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082C50: .4byte 0x00000774
_08082C54: .4byte 0x00000776
