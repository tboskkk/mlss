	.syntax unified
	.text

	thumb_func_start sub_8061458
sub_8061458:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08061474
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806147C @ =0x08061481
	str r0, [r4, #0x4C]
_08061474:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806147C: .4byte sub_8061480
