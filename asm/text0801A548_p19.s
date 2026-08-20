	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_803C468
sub_803C468:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	subs r0, #0x2A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _0803C498
	ldr r0, _0803C490 @ =0x0000020A
	adds r2, r2, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _0803C494 @ =0xFFFFFE7F
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	b _0803C49A
_0803C490: .4byte 0x0000020A
_0803C494: .4byte 0xFFFFFE7F
_0803C498:
	movs r0, #0x01
_0803C49A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_803C4A0
sub_803C4A0:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	subs r0, #0x27
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _0803C4D0
	ldr r0, _0803C4C8 @ =0x0000020A
	adds r2, r2, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _0803C4CC @ =0xFFFFFE7F
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	b _0803C4D2
_0803C4C8: .4byte 0x0000020A
_0803C4CC: .4byte 0xFFFFFE7F
_0803C4D0:
	movs r0, #0x01
_0803C4D2:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_803C4D8
sub_803C4D8:
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x04]
	adds r0, r1, #0x0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x08
	bls _0803C4FC
	adds r0, r1, #0x0
	subs r0, #0x1D
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x04
	bhi _0803C500
_0803C4FC:
	movs r0, #0x01
	b _0803C502
_0803C500:
	movs r0, #0x00
_0803C502:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
