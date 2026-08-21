	.syntax unified
	.text

	thumb_func_start sub_8114528
sub_8114528:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0811454A
	ldr r0, [r4, #0x28]
	ldr r2, _08114550 @ =0x00000113
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r0, _08114554 @ =0x081141F5
	str r0, [r4, #0x50]
	str r0, [r4, #0x4C]
_0811454A:
	pop {r4}
	pop {r0}
	bx r0
_08114550: .4byte 0x00000113
_08114554: .4byte 0x081141F5
