	.syntax unified
	.text

	thumb_func_start sub_8110134
sub_8110134:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08110168
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08110170 @ =0x0000011B
	bl stop_sfx_80195A8
	ldr r0, _08110174 @ =0x0810F905
	str r0, [r4, #0x4C]
_08110168:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08110170: .4byte 0x0000011B
_08110174: .4byte sub_810F904
