	.syntax unified
	.text

	thumb_func_start sub_81435E4
sub_81435E4:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r3
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081436D8
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081436DC
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	add r4, sp, #0x008
	movs r2, #0x10
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x12
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x14
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x16
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _081436CC @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081436DC
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x18
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	movs r0, #0x19
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r0, #0x1A
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	movs r0, #0x1B
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x1C
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	movs r0, #0x1D
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081436DC
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _081436D0 @ =0x081442D5
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081436D4 @ =0x081436E5
	str r0, [r1, #0x00]
	b _081436DC
	.byte 0x00, 0x00
_081436CC: .4byte 0x00007FFF
_081436D0: .4byte sub_81442D4
_081436D4: .4byte sub_81436E4
_081436D8:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_081436DC:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
