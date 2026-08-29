	.syntax unified
	.text

	thumb_func_start sub_8046B30
sub_8046B30:
	push {r4, r5, r6, lr}
	mov r12, r0
	adds r6, r1, #0x0
	ldr r0, [sp, #0x010]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0x0
	cmp r2, #0x01
	bne _08046B5A
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x06]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08046B5A:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x06]
	movs r1, #0xBF
	lsls r1, r1, #0x02
	add r1, r12
	strh r0, [r1, #0x00]
	movs r0, #0xC1
	lsls r0, r0, #0x02
	add r0, r12
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r2, [r1, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bne _08046B84
	movs r0, #0x00
	b _08046BBE
_08046B84:
	cmp r6, #0x01
	bne _08046B9A
	adds r1, r4, #0x0
	cmp r2, r0
	blt _08046B90
	negs r1, r4
_08046B90:
	movs r0, #0xC3
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	b _08046BA2
_08046B9A:
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r12
	strh r5, [r0, #0x00]
_08046BA2:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, _08046BC4 @ =0x000002B5
	add r2, r12
	lsls r3, r6, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08046BBE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08046BC4: .4byte 0x000002B5
