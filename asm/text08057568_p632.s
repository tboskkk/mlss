	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8138B84
sub_8138B84:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	adds r5, r2, #0x2
	ldrb r0, [r2, #0x00]
	movs r4, #0x98
	lsls r4, r4, #0x01
	add r4, r12
	movs r1, #0x03
	ands r1, r0
	ldrb r3, [r4, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r2, [r2, #0x01]
	movs r1, #0x01
	ands r1, r2
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r6, #0x99
	lsls r6, r6, #0x01
	add r6, r12
	movs r3, #0xA9
	lsls r3, r3, #0x01
	add r3, r12
	ldrh r2, [r5, #0x00]
	ldr r1, _08138C14 @ =0x00000131
	add r1, r12
	movs r0, #0x00
	strb r2, [r1, #0x00]
	adds r5, #0x02
	ldr r1, _08138C18 @ =0x00000193
	add r1, r12
	strb r0, [r1, #0x00]
	movs r1, #0xC9
	lsls r1, r1, #0x01
	add r1, r12
	strb r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	subs r0, #0x09
	ands r0, r1
	strb r0, [r4, #0x00]
_08138BF0:
	ldrh r0, [r5, #0x00]
	strh r0, [r6, #0x00]
	adds r5, #0x02
	adds r6, #0x02
	ldrh r0, [r5, #0x00]
	strh r0, [r3, #0x00]
	adds r5, #0x02
	adds r3, #0x02
	lsls r0, r2, #0x10
	ldr r1, _08138C1C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _08138BF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138C14: .4byte 0x00000131
_08138C18: .4byte 0x00000193
_08138C1C: .4byte 0xFFFF0000
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
