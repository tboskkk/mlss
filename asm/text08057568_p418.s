	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_815EF44
sub_815EF44:
	push {lr}
	ldr r2, _0815EF54 @ =0x08CDCC10
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EF54: .4byte 0x08CDCC10
	thumb_func_start sub_815EF58
sub_815EF58:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815EF7C @ =0x08CDCC10
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815EF7C: .4byte 0x08CDCC10
	thumb_func_start sub_815EF80
sub_815EF80:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_815FAA4
	ldr r2, [r4, #0x34]
	cmp r2, #0x00
	beq _0815EFA6
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x04]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x34]
	ldr r1, [r5, #0x04]
	ldr r0, [r4, #0x08]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
_0815EFA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_815EFAC
sub_815EFAC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815EFD4 @ =0x08CDCC50
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	beq _0815EFC4
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x34]
_0815EFC4:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EFD4: .4byte 0x08CDCC50
