	.syntax unified
	.text

	thumb_func_start sub_80878FC
sub_80878FC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	lsls r4, r4, #0x01
	adds r4, r4, r5
	ldr r6, _08087938 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r2, #0x0
	muls r1, r5
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	negs r0, r0
	subs r0, r0, r4
	ldr r1, _0808793C @ =0x0819832C
	ldr r2, _08087940 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r6, #0x00]
	adds r2, r2, r1
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08087938: .4byte 0x03001038
_0808793C: .4byte 0x0819832C
_08087940: .4byte 0x08198220
