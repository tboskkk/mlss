	.syntax unified
	.text

	thumb_func_start sub_809ADC0
sub_809ADC0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, _0809AE6C @ =0x03000FD8
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	bne _0809AE64
	ldr r1, _0809AE70 @ =0x02000052
	ldr r2, _0809AE74 @ =0x00000808
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r2, _0809AE78 @ =0x084FB814
	ldrb r0, [r3, #0x0C]
	lsrs r0, r0, #0x07
	lsls r1, r0, #0x03
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	mvns r2, r2
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	adds r2, #0xF6
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	beq _0809AE60
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809AE3C
	adds r1, #0xFF
_0809AE3C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809AE46
	adds r2, #0xFF
_0809AE46:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_0809AE60:
	ldr r0, _0809AE7C @ =0x0809AE81
	str r0, [r4, #0x4C]
_0809AE64:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809AE6C: .4byte 0x03000FD8
_0809AE70: .4byte 0x02000052
_0809AE74: .4byte 0x00000808
_0809AE78: .4byte word_84FB814 @ =0x084FB814
_0809AE7C: .4byte sub_809AE80
