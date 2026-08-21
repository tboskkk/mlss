	.syntax unified
	.text

	thumb_func_start sub_8112F40
sub_8112F40:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	adds r6, r5, #0x0
	adds r6, #0xB2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r2, #0x1C
	ldsh r1, [r5, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r2, #0x1E
	ldsh r1, [r5, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	subs r6, #0x20
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	subs r0, #0xCC
	strh r0, [r6, #0x00]
	ldr r1, [r5, #0x08]
	ldr r2, _08112FF8 @ =0x00000B4C
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x04
	cmp r0, r1
	bgt _08112FDA
	str r1, [r5, #0x18]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x08
	negs r0, r0
	movs r1, #0xC0
	lsls r1, r1, #0x01
	bl __divsi3
	strh r0, [r6, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2F
	bl play_sfx_80195B4
_08112FDA:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08112FE2
	adds r1, #0xFF
_08112FE2:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08112FF2
	adds r0, r5, #0x0
	bl sub_807C298
_08112FF2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08112FF8: .4byte 0x00000B4C
