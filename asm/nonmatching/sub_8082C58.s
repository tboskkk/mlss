	.syntax unified
	.text

	thumb_func_start sub_8082C58
sub_8082C58:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, [r1, #0x00]
	ldr r4, [r2, #0x00]
	mov r8, r4
	ldr r5, [r3, #0x00]
	subs r5, r4, r5
	ldr r7, _08082C94 @ =0x00000774
	adds r4, r0, r7
	movs r7, #0x00
	ldsh r4, [r4, r7]
	subs r6, r6, r4
	str r6, [r1, #0x00]
	ldr r1, _08082C98 @ =0x00000776
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	subs r5, r5, r0
	str r5, [r2, #0x00]
	movs r0, #0xF8
	lsls r0, r0, #0x01
	mov r7, r8
	subs r0, r0, r7
	str r0, [r3, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08082C94: .4byte 0x00000774
_08082C98: .4byte 0x00000776
