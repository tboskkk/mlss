	.syntax unified
	.text

	thumb_func_start sub_81DAE94
sub_81DAE94:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r2, r0, #0x0
	adds r6, r1, #0x0
	ldr r1, [r2, #0x04]
	str r1, [sp, #0x000]
	ldr r0, [r2, #0x00]
	str r0, [sp, #0x004]
	mov r2, sp
	adds r4, r1, #0x0
	lsls r0, r0, #0x0C
	lsrs r5, r0, #0x0C
	ldrh r3, [r2, #0x06]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #0x07]
	lsrs r0, r2, #0x07
	str r0, [r6, #0x04]
	cmp r3, #0x00
	bne _081DAF08
	orrs r1, r5
	cmp r1, #0x00
	bne _081DAEC8
	movs r0, #0x02
	str r0, [r6, #0x00]
	b _081DAF5C
_081DAEC8:
	ldr r0, _081DAF00 @ =0xFFFFFC02
	str r0, [r6, #0x08]
	lsrs r3, r4, #0x18
	lsls r2, r5, #0x08
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r4, #0x08
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	movs r0, #0x03
	str r0, [r6, #0x00]
	ldr r0, _081DAF04 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _081DAF38
	adds r7, r0, #0x0
_081DAEE6:
	lsrs r3, r4, #0x1F
	lsls r2, r5, #0x01
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r4, #0x01
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	ldr r0, [r6, #0x08]
	subs r0, #0x01
	str r0, [r6, #0x08]
	cmp r5, r7
	bls _081DAEE6
	b _081DAF38
_081DAF00: .4byte 0xFFFFFC02
_081DAF04: .4byte 0x0FFFFFFF
_081DAF08:
	ldr r0, _081DAF1C @ =0x000007FF
	cmp r3, r0
	bne _081DAF3E
	orrs r1, r5
	cmp r1, #0x00
	bne _081DAF20
	movs r0, #0x04
	str r0, [r6, #0x00]
	b _081DAF5C
	.byte 0x00, 0x00
_081DAF1C: .4byte 0x000007FF
_081DAF20:
	movs r2, #0x80
	lsls r2, r2, #0x0C
	movs r0, #0x00
	adds r1, r5, #0x0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0x00
	beq _081DAF36
	movs r0, #0x01
	str r0, [r6, #0x00]
	b _081DAF38
_081DAF36:
	str r1, [r6, #0x00]
_081DAF38:
	str r4, [r6, #0x0C]
	str r5, [r6, #0x10]
	b _081DAF5C
_081DAF3E:
	ldr r1, _081DAF60 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #0x08]
	movs r0, #0x03
	str r0, [r6, #0x00]
	lsrs r3, r4, #0x18
	lsls r2, r5, #0x08
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r4, #0x08
	ldr r2, _081DAF64 @ =0x00000000
	ldr r3, _081DAF68 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0x0C]
	str r1, [r6, #0x10]
_081DAF5C:
	add sp, #0x008
	pop {r4, r5, r6, r7, pc}
_081DAF60: .4byte 0xFFFFFC01
_081DAF64: .4byte 0x00000000
_081DAF68: .4byte 0x10000000
