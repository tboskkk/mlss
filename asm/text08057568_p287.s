	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80880C4
sub_80880C4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r3, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r3, r3, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	ldr r5, _08088130 @ =0x03001038
	adds r0, r3, #0x0
	muls r0, r3
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0808813C
	ldr r0, _08088134 @ =0x0819832C
	ldr r1, _08088138 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r0
	lsls r0, r6, #0x06
	lsrs r1, r3, #0x1F
	adds r1, r3, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	b _08088140
	.byte 0x00, 0x00
_08088130: .4byte 0x03001038
_08088134: .4byte 0x0819832C
_08088138: .4byte 0x08198220
_0808813C:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08088140:
	movs r1, #0x80
	lsls r1, r1, #0x07
	cmp r0, r1
	ble _0808814A
	adds r0, r1, #0x0
_0808814A:
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
