	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8081B3C
sub_8081B3C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r6, [r5, #0x08]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r7, [r0, r2]
	cmp r7, #0x00
	bne _08081BB0
	ldr r0, _08081BA0 @ =0x00000111
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r4, #0x01
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, _08081BA4 @ =0x0807DD39
	adds r1, r6, #0x0
	bl sub_807FF48
	ldr r0, _08081BA8 @ =0x08081C55
	str r0, [r5, #0x04]
	strh r7, [r5, #0x10]
	ldr r3, _08081BAC @ =0x03000FD8
	ldr r1, [r3, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	ldrb r1, [r0, #0x00]
	mvns r1, r1
	adds r3, r3, r5
	ands r1, r4
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08081BDE
	.byte 0x00, 0x00
_08081BA0: .4byte 0x00000111
_08081BA4: .4byte sub_807DD38
_08081BA8: .4byte sub_8081C54
_08081BAC: .4byte 0x03000FD8
_08081BB0:
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	ble _08081BC0
	subs r0, r1, #0x1
	strh r0, [r5, #0x10]
	b _08081BDE
_08081BC0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08081BE4 @ =0x08081F85
	str r0, [r5, #0x04]
_08081BDE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081BE4: .4byte sub_8081F84
	thumb_func_start sub_8081BE8
sub_8081BE8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldr r0, [r4, #0x28]
	movs r1, #0xC8
	bl sub_810835C
	ldr r0, _08081C48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08081C4C @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r6, #0xB3
	lsls r6, r6, #0x01
	cmp r0, #0x00
	bne _08081C10
	subs r6, #0x0C
_08081C10:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08081C18
	adds r1, #0xFF
_08081C18:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08081C22
	adds r2, #0xFF
_08081C22:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08081C2C
	adds r3, #0xFF
_08081C2C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	movs r0, #0x3C
	strh r0, [r5, #0x10]
	ldr r0, _08081C50 @ =0x08082181
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081C48: .4byte 0x03000FD8
_08081C4C: .4byte 0x000002BE
_08081C50: .4byte sub_8082180
