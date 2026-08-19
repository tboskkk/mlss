	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8029080
sub_8029080:
	push {r4, lr}
	adds r4, r0, #0x0
	bl process_disable
	movs r0, #0x02
	strb r0, [r4, #0x00]
	ldr r1, _080290C0 @ =0x03000C24
	strb r0, [r1, #0x00]
	ldr r1, _080290C4 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802909C
	ldr r0, _080290C8 @ =0x0800063C
	str r0, [r1, #0x00]
_0802909C:
	movs r0, #0x96
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1A
	movs r1, #0x00
	bl sub_8122BA0
	ldrb r1, [r4, #0x00]
	movs r0, #0x03
	ands r0, r1
	movs r1, #0xF8
	orrs r0, r1
	strb r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080290C0: .4byte 0x03000C24
_080290C4: .4byte 0x03000C78
_080290C8: .4byte 0x0800063C
