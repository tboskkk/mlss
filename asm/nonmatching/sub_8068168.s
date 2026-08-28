	.syntax unified
	.text

	thumb_func_start sub_8068168
sub_8068168:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08068180
	movs r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
_08068180:
	ldr r0, _0806818C @ =0x08067DC9
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806818C: .4byte sub_8067DC8
