	.include "asm/macros.inc"

	.syntax unified
	.text

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
