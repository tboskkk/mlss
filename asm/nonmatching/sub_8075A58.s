	.syntax unified
	.text

	thumb_func_start sub_8075A58
sub_8075A58:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08075AD4 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075AAA
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075A86
	adds r1, #0xFF
_08075A86:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075A90
	adds r2, #0xFF
_08075A90:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075A9A
	adds r3, #0xFF
_08075A9A:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08075AD8 @ =0x00002499
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075AAA:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08075ACA
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075ADC @ =0x08075BE9
	str r0, [r4, #0x4C]
_08075ACA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075AD4: .4byte 0xFFFFF000
_08075AD8: .4byte 0x00002499
_08075ADC: .4byte sub_8075BE8
