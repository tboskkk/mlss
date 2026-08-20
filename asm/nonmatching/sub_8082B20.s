	.syntax unified
	.text

	thumb_func_start sub_8082B20
sub_8082B20:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	movs r0, #0xEF
	lsls r0, r0, #0x03
	adds r7, r3, r0
	ldr r1, [r7, #0x00]
	subs r0, #0x04
	adds r6, r3, r0
	ldr r0, [r6, #0x00]
	cmp r1, r0
	beq _08082B60
	ldrh r1, [r7, #0x00]
	ldrh r0, [r6, #0x00]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08082B68 @ =0x0000077A
	adds r4, r3, r0
	subs r0, #0x04
	adds r5, r3, r0
	ldrh r2, [r4, #0x00]
	ldrh r0, [r5, #0x00]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0x0
	bl sub_805A954
	ldrh r0, [r7, #0x00]
	strh r0, [r6, #0x00]
	ldrh r0, [r4, #0x00]
	strh r0, [r5, #0x00]
_08082B60:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082B68: .4byte 0x0000077A
