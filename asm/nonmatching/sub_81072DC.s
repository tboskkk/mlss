	.syntax unified
	.text

	thumb_func_start sub_81072DC
sub_81072DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r0, _08107358 @ =0x03000FD8
	mov r8, r0
	ldr r2, [r0, #0x00]
	movs r7, #0xDF
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldr r4, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08107310
	adds r0, #0xFF
_08107310:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r5, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r1, [sp, #0x004]
	ldr r0, _0810735C @ =0x00000103
	cmp r1, r0
	ble _0810734A
	bl sub_810D170
	adds r0, r4, #0x0
	bl sub_807C298
	mov r3, r8
	ldr r0, [r3, #0x00]
	adds r0, r0, r7
	str r5, [r0, #0x00]
	str r5, [r6, #0x04]
_0810734A:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107358: .4byte 0x03000FD8
_0810735C: .4byte 0x00000103
