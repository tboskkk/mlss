	.syntax unified
	.text

	thumb_func_start sub_8116978
sub_8116978:
	push {r4, r5, r6, lr}
	ldr r4, _081169B4 @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r4, r4, r0
	ldr r6, [r4, #0x00]
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _081169B8 @ =0x03000D48
	ldr r5, _081169BC @ =0x0203FFB8
	ldr r0, [r5, #0x3C]
	ldr r3, _081169C0 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _081169C4 @ =0x03000D4C
	ldr r0, [r5, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	str r6, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081169B4: .4byte 0x0300034C
_081169B8: .4byte 0x03000D48
_081169BC: .4byte 0x0203FFB8
_081169C0: .4byte 0x00000A14
_081169C4: .4byte 0x03000D4C
