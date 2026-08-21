	.syntax unified
	.text

	thumb_func_start sub_81429BC
sub_81429BC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r0, #0xD8
	lsls r0, r0, #0x01
	adds r4, r6, r0
	ldr r5, [r4, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r2, r6, r1
	strh r0, [r2, #0x00]
	adds r1, #0xC4
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r5
	ldrb r0, [r0, #0x1A]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x16]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _08142A0C @ =0x081407A1
	str r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142A0C: .4byte sub_81407A0
