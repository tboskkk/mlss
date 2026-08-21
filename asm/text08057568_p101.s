	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8064908
sub_8064908:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r7, _08064970 @ =0x03000E18
	ldr r0, [r7, #0x00]
	ldr r5, _08064974 @ =0x03000E60
	ldr r6, _08064978 @ =0x03000E64
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_801B1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0806497C
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x00]
	str r2, [r4, #0x18]
	cmp r0, #0x00
	bge _08064942
	adds r0, #0xFF
_08064942:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806494E
	adds r0, #0xFF
_0806494E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0806495A
	adds r0, #0xFF
_0806495A:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _0806498E
	.byte 0x00, 0x00
_08064970: .4byte 0x03000E18
_08064974: .4byte 0x03000E60
_08064978: .4byte 0x03000E64
_0806497C:
	ldr r0, [r7, #0x00]
	bl free_heap_8018DA8
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08064998 @ =0x0806499D
	str r0, [r4, #0x4C]
_0806498E:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064998: .4byte sub_806499C
	thumb_func_start sub_806499C
sub_806499C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08064A04
	subs r1, #0x28
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x90
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08064A0C @ =0x08064C81
	str r0, [r4, #0x4C]
_08064A04:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064A0C: .4byte sub_8064C80
	thumb_func_start sub_8064A10
sub_8064A10:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	ldr r1, [r4, #0x18]
	ldr r0, _08064A40 @ =0x000007FF
	cmp r1, r0
	bgt _08064A44
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _08064A44
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08064ACE
	.byte 0x00, 0x00
_08064A40: .4byte 0x000007FF
_08064A44:
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x08
	muls r0, r2
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r2, r0
	ble _08064A96
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r1, r2, r1
	str r1, [r4, #0x18]
	ldr r1, [r0, #0x00]
	subs r1, #0x2C
	str r1, [r0, #0x00]
_08064A96:
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	ldr r0, _08064AD4 @ =0x00005DFF
	cmp r1, r0
	bgt _08064AAE
	ldr r0, [r5, #0x00]
	subs r0, #0x19
	str r0, [r5, #0x00]
_08064AAE:
	ldr r0, [r5, #0x00]
	ldr r1, _08064AD8 @ =0xFFFFFD80
	cmp r0, r1
	bge _08064AB8
	str r1, [r5, #0x00]
_08064AB8:
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x00]
	cmp r1, r0
	ble _08064ACE
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807C298
_08064ACE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08064AD4: .4byte 0x00005DFF
_08064AD8: .4byte 0xFFFFFD80
	thumb_func_start sub_8064ADC
sub_8064ADC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r6, r5, #0x0
	adds r6, #0x9C
	ldr r4, [r5, #0x10]
	ldr r0, [r6, #0x00]
	subs r4, r4, r0
	str r4, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	subs r0, #0x2C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	lsls r0, r0, #0x08
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	subs r4, r4, r0
	ldr r0, _08064B68 @ =0x00005DFF
	cmp r4, r0
	bgt _08064B3A
	ldr r0, [r6, #0x00]
	subs r0, #0x11
	str r0, [r6, #0x00]
_08064B3A:
	ldr r1, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _08064B4A
	adds r0, r1, #0x0
	subs r0, #0xE6
	str r0, [r5, #0x18]
_08064B4A:
	ldr r1, [r5, #0x10]
	ldr r0, _08064B6C @ =0x00003FFF
	cmp r1, r0
	bgt _08064B7C
	ldr r1, [r5, #0x14]
	movs r0, #0xD0
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _08064B70
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x60
	negs r0, r0
	b _08064B76
	.byte 0x00, 0x00
_08064B68: .4byte 0x00005DFF
_08064B6C: .4byte 0x00003FFF
_08064B70:
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x60
_08064B76:
	str r0, [r1, #0x00]
	ldr r0, _08064B84 @ =0x08064B89
	str r0, [r5, #0x4C]
_08064B7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064B84: .4byte sub_8064B88
