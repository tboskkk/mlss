	.syntax unified
	.text

	thumb_func_start sub_8074C10
sub_8074C10:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074C2E
	ldr r1, [r4, #0x08]
	movs r3, #0xC0
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
_08074C2E:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074C9E
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074C74
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074C4E
	adds r1, #0xFF
_08074C4E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074C58
	adds r2, #0xFF
_08074C58:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074C62
	adds r3, #0xFF
_08074C62:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074C70 @ =0x000023C3
	bl sub_80DF024
	b _08074C9A
_08074C70: .4byte 0x000023C3
_08074C74:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074C7C
	adds r1, #0xFF
_08074C7C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074C86
	adds r2, #0xFF
_08074C86:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074C90
	adds r3, #0xFF
_08074C90:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074CB4 @ =0x000023CC
	bl sub_80DF024
_08074C9A:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074C9E:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074D0A
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074CBC
	ldr r0, _08074CB8 @ =0x08074D1D
	b _08074D08
_08074CB4: .4byte 0x000023CC
_08074CB8: .4byte sub_8074D1C
_08074CBC:
	ldr r0, _08074D14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
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
	ldr r0, _08074D18 @ =0x08075E9D
_08074D08:
	str r0, [r4, #0x4C]
_08074D0A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074D14: .4byte 0x03000FD8
_08074D18: .4byte sub_8075E9C
