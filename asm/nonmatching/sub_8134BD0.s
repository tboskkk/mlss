	.syntax unified
	.text

	thumb_func_start sub_8134BD0
sub_8134BD0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	cmp r4, #0x00
	bgt _08134BDE
	movs r4, #0x01
_08134BDE:
	cmp r3, #0x00
	bge _08134BE4
	movs r3, #0x00
_08134BE4:
	cmp r3, r4
	blt _08134BEA
	adds r3, r4, #0x0
_08134BEA:
	ldr r2, _08134C08 @ =0x03001038
	ldr r0, _08134C0C @ =0x0819832C
	ldr r1, _08134C10 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	subs r0, r6, r5
	muls r0, r3
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r0, r5, r0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08134C08: .4byte 0x03001038
_08134C0C: .4byte 0x0819832C
_08134C10: .4byte 0x08198220
