	.syntax unified
	.text

	thumb_func_start sub_8019940
sub_8019940:
	push {r4, r5, lr}
	ldr r4, _08019988 @ =0x0800063C
	ldr r5, _0801998C @ =0x08000534
	subs r4, r4, r5
	ldr r2, _08019990 @ =0x081DD7D0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	ldr r0, _08019994 @ =0x03000C84
	str r1, [r0, #0x00]
	cmp r4, #0x00
	bge _08019960
	adds r4, #0x03
_08019960:
	lsls r2, r4, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r5, #0x0
	bl CpuSet
	ldr r1, _08019998 @ =0x03000C78
	ldr r0, _0801999C @ =0x0800063C
	str r0, [r1, #0x00]
	ldr r0, _080199A0 @ =0x03000D08
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _080199A4 @ =0x03000C80
	strb r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019988: .4byte 0x0800063C
_0801998C: .4byte 0x08000534
_08019990: .4byte 0x081DD7D0
_08019994: .4byte 0x03000C84
_08019998: .4byte 0x03000C78
_0801999C: .4byte 0x0800063C
_080199A0: .4byte 0x03000D08
_080199A4: .4byte 0x03000C80
