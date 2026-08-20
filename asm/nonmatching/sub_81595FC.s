	.syntax unified
	.text

	thumb_func_start sub_81595FC
sub_81595FC:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	ldr r2, _08159668 @ =0x0300034C
	ldrh r1, [r2, #0x28]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0815961C
	movs r0, #0xA1
	lsls r0, r0, #0x03
	adds r1, r3, r0
	ldr r0, [r1, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r0, r4
	str r0, [r1, #0x00]
_0815961C:
	ldrh r2, [r2, #0x28]
	movs r0, #0x20
	ands r0, r2
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _08159636
	movs r5, #0xA1
	lsls r5, r5, #0x03
	adds r1, r3, r5
	ldr r0, [r1, #0x00]
	ldr r5, _0815966C @ =0xFFFFFC00
	adds r0, r0, r5
	str r0, [r1, #0x00]
_08159636:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0x00
	beq _0815964C
	ldr r0, _08159670 @ =0x0000050C
	adds r1, r3, r0
	ldr r0, [r1, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r0, r4
	str r0, [r1, #0x00]
_0815964C:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _08159660
	ldr r5, _08159670 @ =0x0000050C
	adds r1, r3, r5
	ldr r0, [r1, #0x00]
	ldr r2, _0815966C @ =0xFFFFFC00
	adds r0, r0, r2
	str r0, [r1, #0x00]
_08159660:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08159668: .4byte 0x0300034C
_0815966C: .4byte 0xFFFFFC00
_08159670: .4byte 0x0000050C
