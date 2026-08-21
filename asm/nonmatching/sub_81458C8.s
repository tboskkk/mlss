	.syntax unified
	.text

	thumb_func_start sub_81458C8
sub_81458C8:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _08145914 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814590C
	ldr r0, _08145918 @ =0x0000020F
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814591C @ =0x081455DD
	str r0, [r5, #0x00]
_0814590C:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_08145914: .4byte 0x00000242
_08145918: .4byte 0x0000020F
_0814591C: .4byte sub_81455DC
