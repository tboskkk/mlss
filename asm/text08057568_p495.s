	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813F9DC
sub_813F9DC:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r1, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _0813FA04
	cmp r0, #0x02
	bhi _0813F9FA
	cmp r0, #0x00
	beq _0813FA2E
	b _0813FA5A
_0813F9FA:
	cmp r0, #0x04
	beq _0813FA2E
	cmp r0, #0x06
	beq _0813FA1C
	b _0813FA5A
_0813FA04:
	cmp r2, #0x00
	bne _0813FA5A
	cmp r3, #0x00
	bne _0813FA5A
	ldr r0, _0813FA18 @ =0x7FFFFFFF
	cmp r1, r0
	bne _0813FA5A
_0813FA12:
	movs r0, #0x00
	b _0813FA5C
	.byte 0x00, 0x00
_0813FA18: .4byte 0x7FFFFFFF
_0813FA1C:
	ldr r0, _0813FA64 @ =0x7FFFFFFF
	cmp r2, r0
	bne _0813FA2E
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813FA2E
	cmp r1, r3
	beq _0813FA12
_0813FA2E:
	cmp r2, #0x00
	bne _0813FA3C
	cmp r3, #0x00
	bne _0813FA3C
	ldr r0, _0813FA64 @ =0x7FFFFFFF
	cmp r1, r0
	beq _0813FA12
_0813FA3C:
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	bne _0813FA5A
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _0813FA5A
	cmp r1, r3
	bne _0813FA5A
	ldr r1, [r4, #0x0C]
	movs r0, #0xA0
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _0813FA12
_0813FA5A:
	movs r0, #0x01
_0813FA5C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813FA64: .4byte 0x7FFFFFFF
