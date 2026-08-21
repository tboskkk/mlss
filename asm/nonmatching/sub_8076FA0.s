	.syntax unified
	.text

	thumb_func_start sub_8076FA0
sub_8076FA0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08076FAC
	adds r1, #0xFF
_08076FAC:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08076FBE
	adds r0, r5, #0x0
	bl sub_807C298
	b _0807708C
_08076FBE:
	ldr r1, [r5, #0x08]
	movs r2, #0xC0
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r2, #0x00
	ldsh r1, [r7, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r3, r5, #0x0
	adds r3, #0xB0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	ble _0807708C
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08077064
	adds r0, #0xFF
_08077064:
	asrs r0, r0, #0x08
	cmp r0, #0x07
	bgt _0807708C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08077078
	adds r0, #0xFF
_08077078:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077084
	adds r0, #0xFF
_08077084:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	movs r0, #0x00
	strh r0, [r6, #0x00]
_0807708C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
