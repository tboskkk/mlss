	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EA064
sub_80EA064:
	push {r4, r5, lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EA138
	ldr r0, _080EA0A4 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r5, r1, #0x0
	ldrh r0, [r2, #0x00]
	movs r3, #0x00
	ldsh r2, [r2, r3]
	cmp r2, #0x08
	ble _080EA08C
	adds r4, #0x3C
	adds r0, r2, #0x0
	subs r0, #0x09
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080EA08C:
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0x02
	bgt _080EA0BE
	cmp r1, #0x00
	beq _080EA0A8
	ldrb r2, [r4, #0x07]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	lsls r0, r3
	bics r1, r0
	b _080EA0B2
_080EA0A4: .4byte 0x03000FF4
_080EA0A8:
	ldrb r2, [r4, #0x07]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	lsls r0, r3
	orrs r1, r0
_080EA0B2:
	lsls r1, r1, #0x02
	movs r0, #0x03
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	b _080EA138
_080EA0BE:
	cmp r3, #0x05
	bgt _080EA0FE
	subs r0, r3, #0x3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x00
	beq _080EA0DE
	ldrb r3, [r4, #0x08]
	lsls r2, r3, #0x1A
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	bics r2, r0
	b _080EA0F2
_080EA0DE:
	ldrb r3, [r4, #0x08]
	lsls r2, r3, #0x1A
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	orrs r2, r0
	movs r0, #0x3F
	ands r2, r0
_080EA0F2:
	movs r0, #0x40
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x08]
	b _080EA138
_080EA0FE:
	subs r0, r3, #0x6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r5, #0x00
	beq _080EA11A
	ldrh r3, [r4, #0x08]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	bics r2, r0
	b _080EA12E
_080EA11A:
	ldrh r3, [r4, #0x08]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	orrs r2, r0
	movs r0, #0x3F
	ands r2, r0
_080EA12E:
	lsls r2, r2, #0x06
	ldr r0, _080EA140 @ =0xFFFFF03F
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #0x08]
_080EA138:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080EA140: .4byte 0xFFFFF03F
