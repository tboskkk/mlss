	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81069D4
sub_81069D4:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r4, [r3, #0x08]
	ldrh r1, [r3, #0x10]
	movs r2, #0x10
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	ble _081069EA
	subs r0, r1, #0x1
	strh r0, [r3, #0x10]
	b _08106A08
_081069EA:
	ldrb r1, [r4, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r2, #0x00
	movs r1, #0x78
	strh r1, [r4, #0x00]
	movs r1, #0x40
	strh r1, [r4, #0x02]
	subs r1, #0x47
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	str r2, [r3, #0x04]
_08106A08:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
