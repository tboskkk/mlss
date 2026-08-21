	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8138C20
sub_8138C20:
	push {r4, r5, r6, lr}
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r2
	mov r12, r0
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r0, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r5, r0, r1
	adds r4, r5, #0x0
	adds r4, #0x08
	movs r0, #0x00
	movs r1, #0xA3
	lsls r1, r1, #0x01
	adds r6, r2, r1
_08138C46:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #0x01
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r3
	ldrh r1, [r5, #0x00]
	strh r1, [r0, #0x00]
	adds r5, #0x02
	mov r0, r12
	adds r0, #0x3E
	adds r0, r0, r3
	movs r1, #0x00
	ldsb r1, [r4, r1]
	strh r1, [r0, #0x00]
	adds r3, r6, r3
	movs r0, #0x04
	ldsb r0, [r4, r0]
	strh r0, [r3, #0x00]
	adds r0, r2, #0x4
	lsls r0, r0, #0x01
	adds r0, r6, r0
	movs r1, #0x08
	ldsb r1, [r4, r1]
	strh r1, [r0, #0x00]
	adds r2, #0x01
	lsls r2, r2, #0x10
	adds r4, #0x01
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x03
	ble _08138C46
	pop {r4, r5, r6}
	pop {r0}
	bx r0
