	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start tld_update_81279D8
tld_update_81279D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08127A80 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r2, r2, r1
	mov r8, r2
	ldr r6, [r2, #0x00]
	ldr r5, [r0, #0x14]
	ldrb r0, [r5, #0x00]
	cmp r0, #0x03
	bls _08127A76
	adds r0, r5, #0x0
	adds r0, #0xEE
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08127A02
	adds r0, r5, #0x0
	bl sub_8127238
_08127A02:
	adds r0, r5, #0x0
	adds r0, #0xF1
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xFA
	movs r4, #0x00
	ldsb r4, [r1, r4]
	asrs r0, r4
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _08127A42
	lsls r0, r4, #0x03
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r7, #0x8A
	lsls r7, r7, #0x01
	adds r0, r2, r7
	ldrb r1, [r0, #0x00]
	adds r7, #0x01
	adds r0, r2, r7
	ldrb r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xF3
	lsls r3, r4
	ldrb r0, [r0, #0x00]
	ands r3, r0
	adds r0, r6, #0x0
	bl sub_8122198
	adds r6, r0, #0x0
_08127A42:
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _08127A84 @ =0x03000D48
	ldr r4, _08127A88 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _08127A8C @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _08127A90 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_81270E4
	adds r6, r0, #0x0
	mov r7, r8
	str r6, [r7, #0x00]
_08127A76:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08127A80: .4byte 0x0300034C
_08127A84: .4byte 0x03000D48
_08127A88: .4byte 0x0203FFB8
_08127A8C: .4byte 0x00000A14
_08127A90: .4byte 0x03000D4C
