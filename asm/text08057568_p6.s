	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8081E74
sub_8081E74:
	push {lr}
	ldr r0, _08081E98 @ =0x00002027
	bl sub_8082AAC
	ldr r0, _08081E9C @ =0x00002046
	bl sub_8082AAC
	ldr r0, _08081EA0 @ =0x00002056
	bl sub_8082AAC
	ldr r0, _08081EA4 @ =0x00002075
	bl sub_8082AAC
	ldr r0, _08081EA8 @ =0x00002089
	bl sub_8082AAC
	pop {r0}
	bx r0
_08081E98: .4byte 0x00002027
_08081E9C: .4byte 0x00002046
_08081EA0: .4byte 0x00002056
_08081EA4: .4byte 0x00002075
_08081EA8: .4byte 0x00002089
	thumb_func_start sub_8081EAC
sub_8081EAC:
	push {r4, r5, lr}
	ldr r4, _08081F14 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x02]
	ldr r2, _08081F18 @ =0x00004188
	adds r0, r1, r2
	bl sub_8082AAC
	ldr r0, [r4, #0x00]
	ldr r1, _08081F1C @ =0x00000349
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	ldr r0, _08081F20 @ =0x084FCE8C
	lsls r4, r1, #0x01
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	bl sub_8082898
	ldr r4, _08081F24 @ =0x084FCEB0
	cmp r4, #0x00
	beq _08081F2C
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	ldr r1, _08081F28 @ =0x0000FFFF
	cmp r0, r1
	beq _08081F04
	adds r5, r1, #0x0
_08081EF4:
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	cmp r0, r5
	bne _08081EF4
_08081F04:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	bl sub_8082AAC
	b _08081F04
	.byte 0x00, 0x00
_08081F14: .4byte 0x03000FD8
_08081F18: .4byte 0x00004188
_08081F1C: .4byte 0x00000349
_08081F20: .4byte 0x084FCE8C
_08081F24: .4byte 0x084FCEB0
_08081F28: .4byte 0x0000FFFF
_08081F2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8081F34
sub_8081F34:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08081F80 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xFA
	lsls r3, r3, #0x01
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081F7A
	cmp r2, #0x00
	blt _08081F7A
	cmp r2, #0x05
	bgt _08081F7A
	lsls r0, r2, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x04
	beq _08081F6A
	cmp r2, #0x02
	bne _08081F7A
_08081F6A:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081F7A
	ldrh r0, [r0, #0x02]
	bl sub_8082898
_08081F7A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081F80: .4byte 0x03000FD8
	thumb_func_start sub_8081F84
sub_8081F84:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08081FA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl process_enable
	ldr r1, _08081FAC @ =0x080FC9A5
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_08081FA8: .4byte 0x03000FD8
_08081FAC: .4byte sub_80FC9A4
	thumb_func_start sub_8081FB0
sub_8081FB0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08081FCA
	bl sub_8082A28
	bl sub_80813A0
	ldr r0, _08081FD0 @ =0x08081289
	str r0, [r4, #0x04]
_08081FCA:
	pop {r4}
	pop {r0}
	bx r0
_08081FD0: .4byte sub_8081288
