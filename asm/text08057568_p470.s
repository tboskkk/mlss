	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FAE64
sub_80FAE64:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	ldr r0, [r0, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r2, r2, #0x12
	adds r2, r2, r0
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x12]
	movs r5, #0x07
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080FAEBC
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080FAEB4
	ldrb r0, [r3, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0x12]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldrh r0, [r2, #0x00]
	movs r1, #0x20
	eors r0, r1
	strh r0, [r2, #0x00]
_080FAEB4:
	ldrb r1, [r3, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r3, #0x12]
_080FAEBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
