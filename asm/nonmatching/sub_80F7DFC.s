	.syntax unified
	.text

	thumb_func_start sub_80F7DFC
sub_80F7DFC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x00C
	adds r6, r2, #0x0
	ldr r4, _080F7E78 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r8, r1
	mov r0, r8
	bl sub_80F746C
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x1C]
	ldrb r0, [r2, #0x01]
	lsls r5, r0, #0x01
	adds r5, r5, r0
	lsls r5, r5, #0x03
	ldr r0, [r6, #0x00]
	lsls r3, r0, #0x02
	ldr r1, _080F7E7C @ =0x08502B14
	adds r1, r3, r1
	adds r5, r5, r1
	adds r2, r2, r3
	ldrh r1, [r2, #0x08]
	ldrh r2, [r5, #0x00]
	lsls r2, r2, #0x16
	asrs r2, r2, #0x16
	ldr r3, [r5, #0x00]
	lsls r3, r3, #0x0C
	asrs r3, r3, #0x16
	ldrh r4, [r5, #0x02]
	lsls r4, r4, #0x12
	asrs r4, r4, #0x16
	str r4, [sp, #0x000]
	ldr r4, [r5, #0x00]
	lsls r4, r4, #0x01
	lsrs r4, r4, #0x1F
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	bl sub_807AFD4
	ldr r0, [r6, #0x00]
	bl sub_8081F34
	mov r1, r8
	ldr r0, [r1, #0x10]
	bl sub_807BC90
	movs r0, #0x01
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F7E78: .4byte 0x03000FD8
_080F7E7C: .4byte 0x08502B14
