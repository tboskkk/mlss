	.syntax unified
	.text

	thumb_func_start sub_8074DE0
sub_8074DE0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074DFE
	ldr r1, [r4, #0x08]
	movs r3, #0xC0
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
_08074DFE:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074E6E
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074E44
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074E1E
	adds r1, #0xFF
_08074E1E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074E28
	adds r2, #0xFF
_08074E28:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074E32
	adds r3, #0xFF
_08074E32:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074E40 @ =0x000023C3
	bl sub_80DF024
	b _08074E6A
_08074E40: .4byte 0x000023C3
_08074E44:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074E4C
	adds r1, #0xFF
_08074E4C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074E56
	adds r2, #0xFF
_08074E56:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074E60
	adds r3, #0xFF
_08074E60:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074E84 @ =0x000023CC
	bl sub_80DF024
_08074E6A:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074E6E:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074EDA
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074E8C
	ldr r0, _08074E88 @ =0x08074EED
	b _08074ED8
_08074E84: .4byte 0x000023CC
_08074E88: .4byte sub_8074EEC
_08074E8C:
	ldr r0, _08074EE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	adds r0, r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x30]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	subs r0, #0x24
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08074EE8 @ =0x08075E3D
_08074ED8:
	str r0, [r4, #0x4C]
_08074EDA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074EE4: .4byte 0x03000FD8
_08074EE8: .4byte sub_8075E3C
