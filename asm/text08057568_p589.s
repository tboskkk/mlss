	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813ADF0
sub_813ADF0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r6, _0813AE7C @ =0x03001038
	ldr r1, _0813AE80 @ =0x0819832C
	ldr r0, _0813AE84 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0813AE44
	adds r0, r4, #0x0
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	bl _call_via_r2
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	str r1, [r5, #0x18]
_0813AE44:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r3, r5, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	bge _0813AE58
	negs r1, r1
_0813AE58:
	ldrh r0, [r3, #0x00]
	subs r1, r0, r1
	strh r1, [r3, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	ble _0813AE88
	lsls r0, r1, #0x10
	cmp r0, #0x00
	bgt _0813AEA2
	movs r3, #0xB2
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0813AEA2
	b _0813AE9C
	.byte 0x00, 0x00
_0813AE7C: .4byte 0x03001038
_0813AE80: .4byte 0x0819832C
_0813AE84: .4byte 0x08198220
_0813AE88:
	lsls r0, r1, #0x10
	cmp r0, #0x00
	bgt _0813AEA2
	movs r1, #0xB2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _0813AEA2
_0813AE9C:
	str r0, [r5, #0x18]
	movs r0, #0x00
	b _0813AEA4
_0813AEA2:
	movs r0, #0x01
_0813AEA4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
