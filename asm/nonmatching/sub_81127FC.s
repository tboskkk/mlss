	.syntax unified
	.text

	thumb_func_start sub_81127FC
sub_81127FC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08112830
	adds r0, r4, #0x0
	movs r1, #0x03
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
	ldr r0, _08112838 @ =0x081129B5
	str r0, [r4, #0x4C]
	ldr r0, _0811283C @ =0x0000011B
	bl stop_sfx_80195A8
_08112830:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08112838: .4byte sub_81129B4
_0811283C: .4byte 0x0000011B
