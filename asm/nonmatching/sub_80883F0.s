	.syntax unified
	.text

	thumb_func_start sub_80883F0
sub_80883F0:
	push {lr}
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x7E
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r1, #0x7C
	movs r3, #0x00
	ldsh r1, [r1, r3]
	muls r0, r1
	cmp r0, #0x00
	bge _0808840C
	adds r0, #0xFF
_0808840C:
	asrs r0, r0, #0x08
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	ldr r1, _08088420 @ =0x3FFF0000
	cmp r0, r1
	ble _08088424
	movs r0, #0x00
	b _08088426
_08088420: .4byte 0x3FFF0000
_08088424:
	movs r0, #0x01
_08088426:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
