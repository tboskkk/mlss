	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F8074
sub_80F8074:
	push {lr}
	ldr r1, [r2, #0x00]
	cmp r1, #0x07
	ble _080F80A4
	ldr r2, _080F80AC @ =0x03000FDC
	movs r0, #0xD0
	muls r1, r0
	movs r0, #0x98
	lsls r0, r0, #0x04
	adds r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	ldr r1, _080F80B0 @ =0xFFFFF980
	adds r2, r0, r1
	adds r1, #0x76
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	bne _080F80A4
	adds r0, r2, #0x0
	bl sub_807C298
_080F80A4:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F80AC: .4byte 0x03000FDC
_080F80B0: .4byte 0xFFFFF980
	thumb_func_start sub_80F80B4
sub_80F80B4:
	push {lr}
	ldr r0, [r2, #0x00]
	ldr r1, [r2, #0x04]
	bl sub_807C1C8
	movs r0, #0x01
	pop {r1}
	bx r1
