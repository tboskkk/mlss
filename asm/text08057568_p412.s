	.include "asm/macros.inc"

	.syntax unified
	.text

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
