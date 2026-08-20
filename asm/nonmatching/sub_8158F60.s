	.syntax unified
	.text

	thumb_func_start sub_8158F60
sub_8158F60:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08158F80 @ =0x00001F2A
	adds r1, r2, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08158F7C
	ldr r0, _08158F84 @ =0x00001F28
	adds r1, r2, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08158F7C:
	pop {r0}
	bx r0
_08158F80: .4byte 0x00001F2A
_08158F84: .4byte 0x00001F28
