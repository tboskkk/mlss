	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8062F40
sub_8062F40:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062F80
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F68
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062F74
_08062F68:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062F74:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _08062F88 @ =0x08062F8D
	str r0, [r4, #0x4C]
_08062F80:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062F88: .4byte sub_8062F8C
	thumb_func_start sub_8062F8C
sub_8062F8C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062FC8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062FB8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062FC4
_08062FB8:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062FC4:
	ldr r0, _08062FD0 @ =0x08062E0D
	str r0, [r4, #0x4C]
_08062FC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062FD0: .4byte sub_8062E0C
	thumb_func_start sub_8062FD4
sub_8062FD4:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08062FE8
	b _080630F2
_08062FE8:
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08062FFC
	adds r1, #0xFF
_08062FFC:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08063006
	adds r2, #0xFF
_08063006:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063010
	adds r3, #0xFF
_08063010:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080630FC @ =0x000012AB
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063024
	adds r0, #0xFF
_08063024:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0C
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063032
	adds r0, #0xFF
_08063032:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806303E
	adds r0, #0xFF
_0806303E:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063100 @ =0x000040F4
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08063104 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063108 @ =0x080632E5
	str r0, [r5, #0x58]
	ldr r0, _0806310C @ =0x080632C1
	str r0, [r5, #0x5C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08063110 @ =0x08063119
	str r0, [r5, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08063114 @ =0x08063309
	str r0, [r6, #0x4C]
_080630F2:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080630FC: .4byte 0x000012AB
_08063100: .4byte 0x000040F4
_08063104: .4byte sub_8087540
_08063108: .4byte sub_80632E4
_0806310C: .4byte sub_80632C0
_08063110: .4byte sub_8063118
_08063114: .4byte sub_8063308
