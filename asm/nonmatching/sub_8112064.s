	.syntax unified
	.text

	thumb_func_start sub_8112064
sub_8112064:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x28]
	ldr r1, _08112084 @ =0x00000113
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08112080
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _08112088 @ =0x08111CA9
	str r0, [r2, #0x4C]
_08112080:
	pop {r0}
	bx r0
_08112084: .4byte 0x00000113
_08112088: .4byte sub_8111CA8
