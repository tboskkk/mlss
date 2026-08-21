	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81589D0
sub_81589D0:
	push {lr}
	bl sub_815FAA4
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81589DC
sub_81589DC:
	push {lr}
	ldr r2, _081589EC @ =0x08CDC7F0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081589EC: .4byte 0x08CDC7F0
	thumb_func_start sub_81589F0
sub_81589F0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08158A1C @ =0x08CDC7F0
	str r0, [r5, #0x30]
	movs r1, #0x00
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158A1C: .4byte 0x08CDC7F0
	thumb_func_start sub_8158A20
sub_8158A20:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_815FA3C
	cmp r0, #0x00
	beq _08158A3E
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815FA70
	adds r0, r4, #0x0
	bl sub_815FA3C
	movs r1, #0x00
	strh r1, [r0, #0x0C]
_08158A3E:
	movs r0, #0x1E
	strh r0, [r4, #0x36]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x04
	strb r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8158A50
sub_8158A50:
	push {lr}
	ldr r2, _08158A60 @ =0x08CDC830
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158A60: .4byte 0x08CDC830
	thumb_func_start sub_8158A64
sub_8158A64:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _08158A94 @ =0x08CDC830
	str r0, [r4, #0x30]
	movs r0, #0x00
	strh r5, [r4, #0x34]
	strh r0, [r4, #0x36]
	strh r0, [r4, #0x38]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_08158A94: .4byte 0x08CDC830
