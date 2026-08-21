	.syntax unified
	.text

	thumb_func_start sub_809B228
sub_809B228:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r5, r4, #0x0
	adds r5, #0x79
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B2A4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B248
	adds r1, #0xFF
_0809B248:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B252
	adds r2, #0xFF
_0809B252:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B25C
	adds r3, #0xFF
_0809B25C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B2AC @ =0x000011F0
	bl sub_80DF024
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B2A0
	ldr r2, _0809B2B0 @ =0x03001038
	ldr r0, _0809B2B4 @ =0x0819832C
	ldr r1, _0809B2B8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x28
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0809B2A0:
	ldr r0, _0809B2BC @ =0x0809B411
	str r0, [r4, #0x4C]
_0809B2A4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809B2AC: .4byte 0x000011F0
_0809B2B0: .4byte 0x03001038
_0809B2B4: .4byte 0x0819832C
_0809B2B8: .4byte 0x08198220
_0809B2BC: .4byte sub_809B410
