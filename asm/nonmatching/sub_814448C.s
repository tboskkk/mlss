	.syntax unified
	.text

	thumb_func_start sub_814448C
sub_814448C:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _081444C0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
_081444C0:
	movs r4, #0xEA
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08144554
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144558
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	add r0, sp, #0x008
	movs r1, #0x18
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	movs r1, #0x19
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	movs r1, #0x1A
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	movs r1, #0x1B
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	movs r1, #0x1C
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	movs r1, #0x1D
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
	beq _08144558
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0814454C @ =0x08145A59
	str r0, [r1, #0x00]
	movs r4, #0xCE
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldr r0, _08144550 @ =0x08144561
	str r0, [r1, #0x00]
	b _08144558
	.byte 0x00, 0x00
_0814454C: .4byte sub_8145A58
_08144550: .4byte sub_8144560
_08144554:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08144558:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
