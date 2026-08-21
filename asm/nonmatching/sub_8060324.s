	.syntax unified
	.text

	thumb_func_start sub_8060324
sub_8060324:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060350
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060358 @ =0x08060361
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806035C @ =0x0806048D
	str r0, [r4, #0x4C]
_08060350:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060358: .4byte sub_8060360
_0806035C: .4byte sub_806048C
