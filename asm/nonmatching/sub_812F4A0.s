	.syntax unified
	.text

	thumb_func_start sub_812F4A0
sub_812F4A0:
	push {r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x14]
	ldr r0, _0812F4FC @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r7, r0, r1
	ldr r5, [r7, #0x00]
	ldrb r0, [r6, #0x00]
	cmp r0, #0x03
	bls _0812F4F6
	adds r0, r6, #0x0
	adds r0, #0xB8
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812F4C4
	adds r0, r6, #0x0
	bl sub_812E0D0
_0812F4C4:
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _0812F500 @ =0x03000D48
	ldr r4, _0812F504 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _0812F508 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _0812F50C @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_812CF54
	adds r5, r0, #0x0
	str r5, [r7, #0x00]
_0812F4F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0812F4FC: .4byte 0x0300034C
_0812F500: .4byte 0x03000D48
_0812F504: .4byte 0x0203FFB8
_0812F508: .4byte 0x00000A14
_0812F50C: .4byte 0x03000D4C
