	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E1780
sub_80E1780:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0x00
	mov r8, r0
	str r0, [r4, #0x08]
	bl sub_8199F30
	adds r2, r0, #0x0
	movs r5, #0xFF
	ands r0, r5
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r7, #0x00
	ldsh r1, [r6, r7]
	muls r0, r1
	lsrs r0, r0, #0x08
	strh r0, [r4, #0x16]
	lsrs r2, r2, #0x08
	adds r0, r2, #0x0
	ands r0, r5
	adds r0, r0, r3
	movs r7, #0x02
	ldsh r1, [r6, r7]
	muls r0, r1
	lsrs r0, r0, #0x08
	strh r0, [r4, #0x12]
	lsrs r2, r2, #0x08
	adds r0, r2, #0x0
	ands r0, r5
	adds r0, r0, r3
	movs r3, #0x04
	ldsh r1, [r6, r3]
	muls r0, r1
	lsrs r0, r0, #0x08
	strh r0, [r4, #0x18]
	mov r7, r8
	strh r7, [r4, #0x10]
	lsrs r2, r2, #0x08
	strh r2, [r4, #0x14]
	movs r0, #0x01
	ands r0, r2
	adds r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80E17E8
sub_80E17E8:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x10
	ldsh r1, [r3, r0]
	ldr r0, [r3, #0x04]
	adds r0, r0, r1
	str r0, [r3, #0x04]
	movs r1, #0x12
	ldsh r0, [r3, r1]
	ldr r2, [r3, #0x08]
	adds r2, r2, r0
	str r2, [r3, #0x08]
	movs r6, #0x14
	ldsh r1, [r3, r6]
	ldr r0, [r3, #0x0C]
	adds r0, r0, r1
	str r0, [r3, #0x0C]
	ldrh r0, [r4, #0x04]
	ldrh r1, [r3, #0x12]
	adds r0, r0, r1
	movs r5, #0x00
	strh r0, [r3, #0x12]
	cmp r2, #0x00
	blt _080E1844
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x06]
	movs r6, #0x06
	ldsh r1, [r4, r6]
	cmp r0, r1
	bge _080E182C
	strh r5, [r3, #0x16]
	b _080E1844
_080E182C:
	movs r1, #0x12
	ldsh r0, [r3, r1]
	negs r0, r0
	lsls r1, r0, #0x01
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080E183C
	adds r0, #0x03
_080E183C:
	asrs r0, r0, #0x02
	adds r0, r2, r0
	strh r0, [r3, #0x12]
	str r5, [r3, #0x08]
_080E1844:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
