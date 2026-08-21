	.syntax unified
	.text

	thumb_func_start sub_8142DB0
sub_8142DB0:
	push {r4, r5, lr}
	add sp, #-0x004
	mov r12, r1
	adds r4, r2, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	subs r1, #0x24
	add r1, r12
	mov r3, r12
	ldr r0, [r3, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, [r3, #0x10]
	str r0, [r1, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	add r1, r12
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x2A]
	ldr r5, _08142E20 @ =0x00000242
	adds r0, r2, r5
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r1, [r2, #0x0C]
	adds r1, r1, r0
	adds r5, #0x02
	adds r0, r2, r5
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x04
	ldr r2, [r2, #0x10]
	adds r2, r2, r0
	mov r5, sp
	movs r0, #0x00
	strb r0, [r5, #0x00]
	mov r0, r12
	bl sub_813A284
	ldr r0, _08142E24 @ =0x08142FC9
	str r0, [r4, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142E20: .4byte 0x00000242
_08142E24: .4byte sub_8142FC8
