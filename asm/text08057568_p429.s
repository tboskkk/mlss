	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_816D6C0
sub_816D6C0:
	push {lr}
	ldr r2, _0816D6D0 @ =0x08CDD248
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816D6D0: .4byte 0x08CDD248
	thumb_func_start sub_816D6D4
sub_816D6D4:
	push {lr}
	adds r1, r0, #0x0
	adds r1, #0x88
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0816D6EA
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x97
	bl stop_sfx_80195A8
_0816D6EA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_816D6F0
sub_816D6F0:
	push {lr}
	adds r1, r0, #0x0
	adds r1, #0x88
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0816D70A
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x97
	bl play_sfx_80195B4
_0816D70A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_816D710
sub_816D710:
	push {lr}
	ldr r2, _0816D720 @ =0x08CDD258
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816D720: .4byte 0x08CDD258
	.byte 0x41, 0x6F, 0x81, 0x61, 0x81, 0x6F, 0x80, 0x22, 0x92, 0x01, 0x89, 0x18, 0xC1, 0x61, 0x70, 0x47
