	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8029788
sub_8029788:
	push {r4, lr}
	adds r1, r0, #0x0
	adds r4, r1, #0x0
	adds r4, #0xFC
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x15
	asrs r0, r0, #0x1C
	cmp r0, #0x00
	bne _080297A6
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_805C6B8
_080297A6:
	ldrh r0, [r4, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80297B8
sub_80297B8:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x15
	asrs r0, r0, #0x1C
	cmp r0, #0x00
	bne _080297D4
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_805BFF0
_080297D4:
	pop {r0}
	bx r0
	thumb_func_start sub_80297D8
sub_80297D8:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _080297F8
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_805BED8
	adds r2, r4, #0x0
	adds r2, #0xFC
	ldrh r1, [r2, #0x00]
	ldr r0, _08029800 @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r2, #0x00]
_080297F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029800: .4byte 0xFFFFF87F
