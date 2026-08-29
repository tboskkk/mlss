	.syntax unified
	.text

	thumb_func_start sub_80E1AF0
sub_80E1AF0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _080E1B24
_080E1AFE:
	ldr r5, [r6, #0x0C]
	ldrh r0, [r5, #0x00]
	movs r2, #0x12
	ldsh r1, [r6, r2]
	movs r3, #0x14
	ldsh r2, [r6, r3]
	movs r4, #0x16
	ldsh r3, [r6, r4]
	ldr r4, [r6, #0x08]
	str r4, [sp, #0x000]
	bl sub_80DF024
	ldrh r0, [r5, #0x02]
	strh r0, [r6, #0x10]
	adds r5, #0x04
	str r5, [r6, #0x0C]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _080E1AFE
_080E1B24:
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _080E1B34
	movs r0, #0x00
	str r0, [r6, #0x04]
	b _080E1B38
_080E1B34:
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
_080E1B38:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
