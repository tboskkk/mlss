	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8138610
sub_8138610:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r1, _081386B8 @ =0x08198584
	movs r6, #0xBD
	lsls r6, r6, #0x02
	adds r4, r3, r6
	movs r5, #0xFF
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08138638
	adds r0, #0x3F
_08138638:
	asrs r1, r0, #0x06
	movs r2, #0xAF
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r3, #0x0C]
	movs r6, #0xB4
	lsls r6, r6, #0x02
	adds r2, r3, r6
	ldr r1, _081386BC @ =0x08198504
	ldr r0, [r4, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08138666
	adds r0, #0x3F
_08138666:
	asrs r1, r0, #0x06
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r3, #0x10]
	movs r6, #0xB2
	lsls r6, r6, #0x02
	adds r0, r3, r6
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	ands r0, r5
	str r0, [r4, #0x00]
	ldr r0, [r3, #0x0C]
	ldr r1, [r3, #0x34]
	subs r0, r0, r1
	subs r6, #0x86
	adds r1, r3, r6
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x38]
	subs r0, r0, r1
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081386B8: .4byte 0x08198584
_081386BC: .4byte 0x08198504
