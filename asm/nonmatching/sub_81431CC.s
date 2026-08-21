	.syntax unified
	.text

	thumb_func_start sub_81431CC
sub_81431CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldr r3, [r6, #0x00]
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081432BE
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081432B4
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	movs r5, #0xD8
	lsls r5, r5, #0x01
	adds r0, r4, r5
	ldr r3, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x36
	add r0, sp, #0x008
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x37
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r1, r3, #0x0
	adds r1, #0x38
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r1, r3, #0x0
	adds r1, #0x39
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r1, r3, #0x0
	adds r1, #0x3A
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r1, r3, #0x0
	adds r1, #0x3B
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r5, #0x0A
	ldsh r1, [r0, r5]
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081432B4
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _081432A8 @ =0x081432CD
	str r0, [r1, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, _081432AC @ =0x08143375
	str r0, [r1, #0x00]
	ldr r1, _081432B0 @ =0x081392F5
	str r1, [r6, #0x00]
	movs r5, #0xD2
	lsls r5, r5, #0x01
	adds r0, r4, r5
	str r1, [r0, #0x00]
	b _081432BE
	.byte 0x00, 0x00
_081432A8: .4byte sub_81432CC
_081432AC: .4byte sub_8143374
_081432B0: .4byte sub_81392F4
_081432B4:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _081432C8 @ =0x08143375
	str r0, [r1, #0x00]
_081432BE:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081432C8: .4byte sub_8143374
