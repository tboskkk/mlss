	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EA60C
sub_80EA60C:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [sp, #0x00C]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r4, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x11]
	cmp r3, #0x00
	beq _080EA658
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r3, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	b _080EA660
_080EA658:
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
_080EA660:
	strb r0, [r4, #0x12]
	movs r0, #0x00
	cmp r3, #0x00
	bne _080EA66A
	movs r0, #0x01
_080EA66A:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80EA670
sub_80EA670:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r1, r2, #0x0
	ldr r0, [sp, #0x00C]
	subs r4, r3, r4
	subs r1, r0, r1
	movs r3, #0x00
	movs r5, #0x00
	cmp r4, #0x00
	bge _080EA688
	movs r3, #0x01
	negs r4, r4
_080EA688:
	cmp r1, #0x00
	bge _080EA690
	movs r5, #0x01
	negs r1, r1
_080EA690:
	adds r0, r4, #0x0
	orrs r0, r1
	ldr r2, _080EA698 @ =0xFFFF8000
	b _080EA6A4
_080EA698: .4byte 0xFFFF8000
_080EA69C:
	asrs r4, r4, #0x01
	asrs r1, r1, #0x01
	adds r0, r4, #0x0
	orrs r0, r1
_080EA6A4:
	ands r0, r2
	cmp r0, #0x00
	bne _080EA69C
	cmp r3, #0x00
	beq _080EA6B0
	negs r4, r4
_080EA6B0:
	cmp r5, #0x00
	beq _080EA6B6
	negs r1, r1
_080EA6B6:
	adds r0, r4, #0x0
	bl sub_8199480
	adds r1, r0, #0x0
	adds r0, #0x50
	cmp r0, #0x00
	bge _080EA6C6
	adds r0, #0x1F
_080EA6C6:
	asrs r0, r0, #0x05
	movs r1, #0x07
	ands r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
