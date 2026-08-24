	.syntax unified
	.text

	thumb_func_start sub_80EFA14
sub_80EFA14:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	mov r9, r0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	mov r8, r0
	ldr r7, _080EFAF0 @ =0x03000FD0
	ldr r0, [r7, #0x00]
	mov r10, r0
	ldr r0, _080EFAF4 @ =0x02000010
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	subs r0, #0x0A
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsrs r2, r2, #0x1E
	lsls r2, r2, #0x02
	orrs r1, r2
	strh r1, [r0, #0x00]
	ldr r2, _080EFAF8 @ =0x082001A8
	movs r0, #0x08
	movs r1, #0x00
	bl alloc_Zero
	ldr r1, _080EFAFC @ =0x06000020
	add r1, r8
	ldr r2, _080EFB00 @ =0x00004AE0
	movs r3, #0x06
	bl sub_80E588C
	ldr r1, _080EFB04 @ =0x03000FCC
	str r0, [r1, #0x00]
	ldr r6, _080EFB08 @ =0x03001034
	movs r4, #0xC0
	lsls r4, r4, #0x13
	add r9, r4
	movs r5, #0x80
	lsls r5, r5, #0x04
	ldr r3, [r6, #0x00]
	ldr r0, _080EFB0C @ =0x01800180
	mov r1, r9
	adds r2, r5, #0x0
	bl _call_via_r3
	add r8, r4
	ldr r3, [r6, #0x00]
	movs r0, #0x00
	mov r1, r8
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _080EFB10 @ =0x082001B0
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	ldr r0, [r7, #0x00]
	ldr r4, _080EFB14 @ =0x000004AC
	adds r0, r0, r4
	str r1, [r0, #0x00]
	ldr r3, [r6, #0x00]
	ldr r0, _080EFB0C @ =0x01800180
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r1, _080EFB04 @ =0x03000FCC
	ldr r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	adds r1, r1, r4
	ldr r3, [r1, #0x00]
	movs r1, #0x02
	str r1, [sp, #0x000]
	movs r1, #0xC0
	lsls r1, r1, #0x01
	str r1, [sp, #0x004]
	movs r1, #0xA8
	lsls r1, r1, #0x03
	add r1, r10
	str r1, [sp, #0x008]
	movs r1, #0xA7
	lsls r1, r1, #0x03
	add r1, r10
	str r1, [sp, #0x00C]
	movs r1, #0xA5
	lsls r1, r1, #0x03
	add r10, r1
	mov r1, r10
	str r1, [sp, #0x010]
	movs r1, #0x00
	movs r2, #0x0F
	bl sub_80E5AA0
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080EFAF0: .4byte 0x03000FD0
_080EFAF4: .4byte 0x02000010
_080EFAF8: .4byte 0x082001A8
_080EFAFC: .4byte 0x06000020
_080EFB00: .4byte 0x00004AE0
_080EFB04: .4byte 0x03000FCC
_080EFB08: .4byte 0x03001034
_080EFB0C: .4byte 0x01800180
_080EFB10: .4byte 0x082001B0
_080EFB14: .4byte 0x000004AC
