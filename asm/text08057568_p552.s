	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8103894
sub_8103894:
	push {lr}
	adds r2, r0, #0x0
	ldrh r1, [r2, #0x10]
	movs r3, #0x10
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	ble _081038A8
	subs r0, r1, #0x1
	strh r0, [r2, #0x10]
	b _081038EE
_081038A8:
	movs r0, #0x40
	strh r0, [r2, #0x10]
	ldr r1, [r2, #0x0C]
	ldr r0, [r1, #0x18]
	ldr r3, _081038F4 @ =0xFFFFFD00
	adds r0, r0, r3
	str r0, [r1, #0x18]
	ldr r0, _081038F8 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, #0x03
	strh r0, [r1, #0x12]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x10]
	subs r0, #0x03
	strh r0, [r2, #0x10]
	ldr r0, _081038FC @ =0x08103901
	str r0, [r2, #0x04]
_081038EE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081038F4: .4byte 0xFFFFFD00
_081038F8: .4byte 0x03000FD8
_081038FC: .4byte sub_8103900
