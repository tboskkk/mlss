	.syntax unified
	.text

	thumb_func_start sub_8143128
sub_8143128:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r3
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081431BA
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	add r0, sp, #0x008
	movs r1, #0x1A
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	movs r1, #0x1B
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	movs r1, #0x1C
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	movs r1, #0x1D
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	movs r1, #0x1E
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	movs r1, #0x1F
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r4, #0x08
	ldsh r3, [r0, r4]
	movs r4, #0x0A
	ldsh r1, [r0, r4]
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081431BA
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081431C4 @ =0x08143315
	str r0, [r1, #0x00]
	movs r4, #0xCE
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldr r0, _081431C8 @ =0x081431CD
	str r0, [r1, #0x00]
_081431BA:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081431C4: .4byte sub_8143314
_081431C8: .4byte sub_81431CC
