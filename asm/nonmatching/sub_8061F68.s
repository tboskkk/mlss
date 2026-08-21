	.syntax unified
	.text

	thumb_func_start sub_8061F68
sub_8061F68:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0xB0
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x10]
	ldr r0, _08061FC4 @ =0xFFFFFD80
	adds r4, r4, r0
	str r4, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x20
	negs r0, r0
	cmp r4, r0
	bge _08061FBC
	adds r0, r5, #0x0
	bl sub_807C298
_08061FBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061FC4: .4byte 0xFFFFFD80
