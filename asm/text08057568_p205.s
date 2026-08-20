	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_819B070
sub_819B070:
	push {r4, lr}
	adds r4, r1, #0x0
	ldrh r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0819B0A0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0819B098
	ldr r1, _0819B0A8 @ =0x08A80688
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	adds r0, r4, #0x0
	bl _call_via_r1
_0819B098:
	ldrh r0, [r4, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r4, #0x00]
_0819B0A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819B0A8: .4byte 0x08A80688
	thumb_func_start sub_819B0AC
sub_819B0AC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r5, #0x00
	ldr r0, _0819B0F0 @ =0x03007FF0
	lsls r1, r6, #0x01
	adds r1, r1, r6
	lsls r1, r1, #0x07
	ldr r0, [r0, #0x00]
	adds r4, r0, r1
_0819B0BE:
	ldrh r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B0D0
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_819B070
_0819B0D0:
	adds r5, #0x01
	adds r4, #0x20
	cmp r5, #0x0B
	ble _0819B0BE
	ldr r0, _0819B0F0 @ =0x03007FF0
	ldr r1, [r0, #0x00]
	ldr r0, _0819B0F4 @ =0x00000494
	adds r1, r1, r0
	adds r1, r1, r6
	ldrb r2, [r1, #0x00]
	movs r0, #0xFE
	ands r0, r2
	strb r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0819B0F0: .4byte 0x03007FF0
_0819B0F4: .4byte 0x00000494
