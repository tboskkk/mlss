	.syntax unified
	.text

	thumb_func_start sub_81346EC
sub_81346EC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	b _08134734
_081346F2:
	ldr r4, [r5, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_81346D0
	cmp r0, #0x00
	beq _08134734
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0813471E
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08134716
	str r0, [r1, #0x04]
	ldr r1, [r4, #0x04]
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	b _0813472E
_08134716:
	str r0, [r1, #0x04]
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x04]
	b _0813472E
_0813471E:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0813472A
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x04]
	b _0813472C
_0813472A:
	str r0, [r5, #0x04]
_0813472C:
	str r0, [r5, #0x00]
_0813472E:
	ldr r0, [r5, #0x08]
	subs r0, #0x01
	str r0, [r5, #0x08]
_08134734:
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _081346F2
	pop {r4, r5}
	pop {r0}
	bx r0
