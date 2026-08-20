	.syntax unified
	.text

	thumb_func_start sub_8051330
sub_8051330:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08051356
	ldr r0, _0805135C @ =0x0000023B
	adds r1, r2, r0
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r1, _08051360 @ =0x0000033E
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08051364 @ =0xFFFFFE01
	ands r0, r1
	strh r0, [r2, #0x00]
_08051356:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805135C: .4byte 0x0000023B
_08051360: .4byte 0x0000033E
_08051364: .4byte 0xFFFFFE01
