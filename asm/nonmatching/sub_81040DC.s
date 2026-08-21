	.syntax unified
	.text

	thumb_func_start sub_81040DC
sub_81040DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	mov r8, r0
	ldr r7, _08104174 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r4, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x10]
	ldr r2, _08104178 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0810410C
	adds r0, #0xFF
_0810410C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r6, #0x00
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r6, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r0, [sp, #0x004]
	cmp r0, #0xD0
	bgt _08104166
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xD0
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x00]
	ldr r1, _0810417C @ =0x00000342
	adds r0, r0, r1
	strb r6, [r0, #0x00]
	ldr r0, _08104180 @ =0x08106AC9
	mov r2, r8
	str r0, [r2, #0x04]
_08104166:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104174: .4byte 0x03000FD8
_08104178: .4byte 0xFFFFFF00
_0810417C: .4byte 0x00000342
_08104180: .4byte sub_8106AC8
