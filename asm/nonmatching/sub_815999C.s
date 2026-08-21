	.syntax unified
	.text

	thumb_func_start sub_815999C
sub_815999C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r3, #0xA1
	lsls r3, r3, #0x03
	adds r0, r4, r3
	ldr r3, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r3, r3, r0
	ldr r5, _08159A04 @ =0x0000050C
	adds r0, r4, r5
	ldr r2, [r2, #0x04]
	ldr r0, [r0, #0x00]
	adds r2, r2, r0
	ldr r0, [r1, #0x00]
	subs r0, r0, r3
	ldr r1, [r1, #0x04]
	subs r1, r1, r2
	ldr r2, _08159A08 @ =0x03001038
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	adds r5, r1, #0x0
	muls r5, r1
	adds r1, r5, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r2, r0, #0x0
	ldr r0, _08159A0C @ =0x0000052C
	adds r1, r4, r0
	movs r3, #0xA6
	lsls r3, r3, #0x03
	adds r4, r4, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bge _081599E8
	adds r0, #0xFF
_081599E8:
	asrs r0, r0, #0x08
	ldr r1, [r1, #0x00]
	muls r1, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	cmp r0, #0x00
	bge _081599F8
	adds r0, #0x03
_081599F8:
	asrs r1, r0, #0x02
	cmp r2, r1
	blt _08159A10
	movs r0, #0x00
	b _08159A12
	.byte 0x00, 0x00
_08159A04: .4byte 0x0000050C
_08159A08: .4byte 0x03001038
_08159A0C: .4byte 0x0000052C
_08159A10:
	movs r0, #0x01
_08159A12:
	pop {r4, r5}
	pop {r1}
	bx r1
