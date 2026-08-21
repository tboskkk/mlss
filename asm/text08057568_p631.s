	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81165CC
sub_81165CC:
	push {r4, lr}
	mov r12, r0
	mov r3, r12
	adds r3, #0x44
	ldrh r0, [r3, #0x00]
	movs r2, #0x00
	mov r4, r12
	strh r0, [r4, #0x34]
	strh r2, [r3, #0x00]
	cmp r1, #0x00
	beq _0811660A
	mov r2, r12
	adds r2, #0x32
	ldrb r1, [r2, #0x00]
	movs r3, #0x04
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08116600
	mov r0, r12
	adds r0, #0x48
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	movs r0, #0x00
	strb r0, [r2, #0x00]
	b _0811660A
_08116600:
	mov r1, r12
	adds r1, #0x48
	movs r0, #0x01
	strb r0, [r1, #0x00]
	strb r3, [r2, #0x00]
_0811660A:
	pop {r4}
	pop {r0}
	bx r0
