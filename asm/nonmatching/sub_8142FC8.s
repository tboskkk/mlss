	.syntax unified
	.text

	thumb_func_start sub_8142FC8
sub_8142FC8:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	adds r0, r5, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143044
	mov r0, sp
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x42
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldr r2, _08143024 @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143038
	ldr r0, _08143028 @ =0x0813B1E9
	str r0, [r4, #0x00]
	ldr r0, _0814302C @ =0x08143059
	str r0, [r4, #0x0C]
	ldr r0, _08143030 @ =0x0813B361
	str r0, [r4, #0x08]
	ldr r0, _08143034 @ =0x0813E05D
	str r0, [r4, #0x04]
	b _08143044
_08143024: .4byte 0x00007FFF
_08143028: .4byte sub_813B1E8
_0814302C: .4byte sub_8143058
_08143030: .4byte sub_813B360
_08143034: .4byte sub_813E05C
_08143038:
	ldr r0, _0814304C @ =0x0813B1E9
	str r0, [r4, #0x00]
	ldr r0, _08143050 @ =0x08143059
	str r0, [r4, #0x0C]
	ldr r0, _08143054 @ =0x0813E339
	str r0, [r4, #0x08]
_08143044:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_0814304C: .4byte sub_813B1E8
_08143050: .4byte sub_8143058
_08143054: .4byte sub_813E338
