	.syntax unified
	.text

	thumb_func_start sub_8106DF0
sub_8106DF0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r0, [r4, #0x10]
	subs r0, #0x01
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08106E12
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106E12
	bl sub_810CA30
	ldr r0, _08106E18 @ =0x08100E5D
	str r0, [r4, #0x04]
_08106E12:
	pop {r4}
	pop {r0}
	bx r0
_08106E18: .4byte sub_8100E5C
