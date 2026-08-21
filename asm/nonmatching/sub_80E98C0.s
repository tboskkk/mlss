	.syntax unified
	.text

	thumb_func_start sub_80E98C0
sub_80E98C0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r0, _080E98E8 @ =0x00001B5F
	cmp r3, r0
	bhi _080E98F0
	movs r0, #0x1F
	ands r3, r0
	ldr r0, _080E98EC @ =0x03000FC0
	ldr r1, [r0, #0x00]
	lsrs r0, r2, #0x15
	lsls r0, r0, #0x02
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	lsrs r0, r3
	adds r3, r0, #0x0
	b _080E993C
_080E98E8: .4byte 0x00001B5F
_080E98EC: .4byte 0x03000FC0
_080E98F0:
	ldr r0, _080E9918 @ =0x00001B7F
	cmp r3, r0
	bls _080E9924
	ldr r0, _080E991C @ =0x00001B8F
	cmp r3, r0
	bhi _080E9948
	cmp r4, #0x00
	beq _080E9924
	ldr r1, _080E9920 @ =0xFFFFE480
	adds r0, r3, r1
	lsls r0, r0, #0x10
	movs r1, #0xF8
	lsls r1, r1, #0x0D
	ands r1, r0
	lsrs r1, r1, #0x10
	lsrs r0, r0, #0x15
	lsls r0, r0, #0x02
	adds r0, r0, r4
	b _080E9938
	.byte 0x00, 0x00
_080E9918: .4byte 0x00001B7F
_080E991C: .4byte 0x00001B8F
_080E9920: .4byte 0xFFFFE480
_080E9924:
	ldr r1, _080E9944 @ =0xFFFFE4A0
	adds r0, r3, r1
	lsls r0, r0, #0x10
	movs r1, #0xF8
	lsls r1, r1, #0x0D
	ands r1, r0
	lsrs r1, r1, #0x10
	lsrs r0, r0, #0x15
	lsls r0, r0, #0x02
	adds r0, r0, r5
_080E9938:
	ldr r3, [r0, #0x00]
	lsrs r3, r1
_080E993C:
	movs r0, #0x01
	ands r3, r0
	b _080E994C
	.byte 0x00, 0x00
_080E9944: .4byte 0xFFFFE4A0
_080E9948:
	movs r0, #0x00
	b _080E9950
_080E994C:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
_080E9950:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
