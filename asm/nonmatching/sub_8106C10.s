	.syntax unified
	.text

	thumb_func_start sub_8106C10
sub_8106C10:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _08106C26
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106C54
_08106C26:
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08106C54
	ldr r0, _08106C5C @ =0x00007002
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084338
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	bl sub_807F6D0
	ldr r0, _08106C60 @ =0x08101A6D
	str r0, [r4, #0x04]
_08106C54:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08106C5C: .4byte 0x00007002
_08106C60: .4byte sub_8101A6C
