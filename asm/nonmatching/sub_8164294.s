	.syntax unified
	.text

	thumb_func_start sub_8164294
sub_8164294:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	ldr r0, [sp, #0x03C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_80E8D90
	movs r4, #0x00
	str r4, [r7, #0x1C]
	str r4, [r7, #0x20]
	movs r1, #0x90
	lsls r1, r1, #0x01
	ldr r2, _08164318 @ =0x08212AF8
	movs r0, #0x01
	bl alloc_heap_8018CEC
	str r0, [r7, #0x24]
	ldr r1, _0816431C @ =0x08212B30
	adds r0, r7, #0x0
	bl sub_8164654
	str r4, [r7, #0x2C]
	str r4, [r7, #0x28]
	movs r0, #0x02
	str r0, [r7, #0x34]
	str r0, [r7, #0x30]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3C]
	str r4, [r7, #0x40]
	str r4, [r7, #0x44]
	str r4, [r7, #0x48]
	str r4, [r7, #0x4C]
	movs r0, #0x01
	str r0, [r7, #0x60]
	str r4, [r7, #0x5C]
	str r4, [r7, #0x58]
	str r4, [r7, #0x64]
	str r4, [r7, #0x68]
	str r4, [r7, #0x6C]
	adds r0, r7, #0x0
	adds r0, #0xA0
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	mov r0, r8
	cmp r0, #0x00
	beq _08164320
	mov r0, r8
	mov r1, r8
	cmp r1, #0x03
	bls _08164322
	movs r0, #0x03
	b _08164322
_08164318: .4byte 0x08212AF8
_0816431C: .4byte 0x08212B30
_08164320:
	movs r0, #0x00
_08164322:
	mov r8, r0
	cmp r6, #0x00
	beq _08164338
	adds r1, r6, #0x0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1F
	bls _08164334
	movs r1, #0x1F
_08164334:
	adds r0, r1, #0x0
	b _0816433A
_08164338:
	movs r0, #0x00
_0816433A:
	adds r6, r0, #0x0
	cmp r5, #0x00
	beq _08164350
	adds r1, r5, #0x0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0816434C
	movs r1, #0x0F
_0816434C:
	adds r5, r1, #0x0
	b _08164352
_08164350:
	movs r5, #0x00
_08164352:
	mov r2, r8
	lsls r0, r2, #0x0E
	movs r1, #0xC0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r7, #0x38]
	lsls r0, r6, #0x0B
	adds r0, r0, r1
	str r0, [r7, #0x3C]
	lsls r0, r5, #0x05
	ldr r1, _0816447C @ =0x02000080
	adds r3, r0, r1
	str r3, [r7, #0x40]
	ldr r2, _08164480 @ =0x083B8F24
	ldr r0, _08164484 @ =0x0300034C
	ldr r1, _08164488 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _08164380
	adds r2, #0x20
_08164380:
	adds r0, r2, #0x0
	adds r1, r3, #0x0
	movs r2, #0x08
	bl CpuFastSet
	ldr r1, _0816448C @ =0x0000301F
	ldr r2, _08164490 @ =0x08212B00
	movs r0, #0x01
	bl alloc_heap_8018CEC
	str r0, [r7, #0x1C]
	cmp r0, #0x00
	bne _0816439C
	b _08164608
_0816439C:
	adds r1, r0, #0x0
	adds r1, #0x1F
	movs r0, #0x20
	negs r0, r0
	ands r1, r0
	str r1, [r7, #0x20]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	ldr r2, _08164494 @ =0x01000C00
	add r0, sp, #0x00C
	bl CpuFastSet
	str r4, [sp, #0x00C]
	adds r1, r7, #0x0
	adds r1, #0x08
	ldr r2, _08164498 @ =0x05000005
	add r0, sp, #0x00C
	bl CpuSet
	ldr r2, [r7, #0x3C]
	mov r12, r2
	lsls r3, r5, #0x0C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r1, #0x0
	adds r2, r3, #0x0
	orrs r2, r0
	mov r1, r12
	movs r0, #0x80
	lsls r0, r0, #0x03
_081643D8:
	strh r2, [r1, #0x00]
	strh r2, [r1, #0x02]
	strh r2, [r1, #0x04]
	strh r2, [r1, #0x06]
	adds r1, #0x08
	subs r0, #0x04
	cmp r0, #0x00
	bne _081643D8
	movs r0, #0x00
	ldr r2, [r7, #0x20]
	mov r9, r2
	ldr r1, [r7, #0x38]
	mov r10, r1
	adds r4, r3, #0x0
_081643F4:
	movs r5, #0x00
	adds r2, r0, #0x1
	str r2, [sp, #0x018]
	lsls r3, r0, #0x05
	lsls r0, r0, #0x06
	mov r1, r12
	adds r2, r0, r1
_08164402:
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r2, #0x00]
	adds r0, r5, #0x1
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r2, #0x02]
	adds r0, r5, #0x2
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r2, #0x04]
	adds r0, r5, #0x3
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r2, #0x06]
	adds r0, r5, #0x4
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r2, #0x08]
	adds r0, r5, #0x5
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r2, #0x0A]
	adds r0, r5, #0x6
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r2, #0x0C]
	adds r0, r5, #0x7
	adds r0, r3, r0
	orrs r0, r4
	strh r0, [r2, #0x0E]
	adds r2, #0x10
	adds r5, #0x08
	cmp r5, #0x1F
	ble _08164402
	ldr r0, [sp, #0x018]
	cmp r0, #0x0B
	ble _081643F4
	movs r2, #0xC0
	lsls r2, r2, #0x04
	mov r0, r9
	mov r1, r10
	bl CpuFastSet
	ldr r0, _0816449C @ =0x08212B10
	ldr r1, [r7, #0x38]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r1, r1, r2
	movs r2, #0x08
	bl CpuFastSet
	ldr r3, [sp, #0x014]
	cmp r3, #0x01
	beq _081644C4
	cmp r3, #0x01
	bgt _081644A0
	cmp r3, #0x00
	beq _081644AC
	b _08164514
	.byte 0x00, 0x00
_0816447C: .4byte 0x02000080
_08164480: .4byte 0x083B8F24
_08164484: .4byte 0x0300034C
_08164488: .4byte 0x00000888
_0816448C: .4byte 0x0000301F
_08164490: .4byte 0x08212B00
_08164494: .4byte 0x01000C00
_08164498: .4byte 0x05000005
_0816449C: .4byte 0x08212B10
_081644A0:
	ldr r0, [sp, #0x014]
	cmp r0, #0x02
	beq _081644E0
	cmp r0, #0x03
	beq _081644FC
	b _08164514
_081644AC:
	ldr r2, _081644BC @ =0x02000008
	lsls r0, r6, #0x08
	mov r3, r8
	lsls r1, r3, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _081644C0 @ =0x02000010
	b _0816450E
_081644BC: .4byte 0x02000008
_081644C0: .4byte 0x02000010
_081644C4:
	ldr r2, _081644D8 @ =0x0200000A
	lsls r0, r6, #0x08
	mov r3, r8
	lsls r1, r3, #0x02
	orrs r0, r1
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _081644DC @ =0x02000014
	b _0816450E
_081644D8: .4byte 0x0200000A
_081644DC: .4byte 0x02000014
_081644E0:
	ldr r2, _081644F4 @ =0x0200000C
	lsls r0, r6, #0x08
	mov r3, r8
	lsls r1, r3, #0x02
	orrs r0, r1
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _081644F8 @ =0x02000018
	b _0816450E
_081644F4: .4byte 0x0200000C
_081644F8: .4byte 0x02000018
_081644FC:
	ldr r2, _0816461C @ =0x0200000E
	lsls r0, r6, #0x08
	mov r3, r8
	lsls r1, r3, #0x02
	orrs r0, r1
	movs r1, #0x03
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _08164620 @ =0x0200001C
_0816450E:
	str r0, [r7, #0x50]
	adds r0, #0x02
	str r0, [r7, #0x54]
_08164514:
	ldr r4, _08164624 @ =0x0819941C
	ldr r0, _08164628 @ =0x08198784
	subs r4, r4, r0
	ldr r2, _0816462C @ =0x08212B08
	movs r0, #0x00
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r7, #0x44]
	movs r0, #0x00
	mov r10, r0
	str r0, [sp, #0x00C]
	lsrs r4, r4, #0x02
	ldr r2, _08164630 @ =0x001FFFFF
	mov r9, r2
	ands r4, r2
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	add r0, sp, #0x00C
	adds r2, r4, #0x0
	bl CpuFastSet
	ldr r0, [r7, #0x44]
	ldr r1, _08164634 @ =0x0851F9E8
	bl sub_81994EC
	ldr r0, _08164638 @ =0x080E8B85
	bl sub_8199F24
	ldr r0, _0816463C @ =0x08002D2C
	ldr r3, _08164640 @ =0x08002C28
	mov r8, r3
	subs r6, r0, r3
	adds r1, r6, #0x3
	ldr r2, _08164644 @ =0x08212B00
	movs r0, #0x00
	bl alloc_heap_8018CEC
	str r0, [r7, #0x48]
	cmp r0, #0x00
	beq _08164608
	adds r4, r0, #0x3
	movs r5, #0x04
	negs r5, r5
	ands r4, r5
	lsrs r2, r6, #0x02
	mov r0, r9
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, r8
	adds r1, r4, #0x0
	bl CpuSet
	str r4, [r7, #0x4C]
	ldr r1, _08164648 @ =0x00008003
	mov r8, r1
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x02
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x02
	mov r1, r8
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, _0816464C @ =0x00008001
	mov r2, r10
	str r2, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r0, #0x03
	ldr r6, [sp, #0x014]
	ands r6, r0
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x02
	mov r1, r8
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x00]
	ldrb r2, [r0, #0x1F]
	adds r1, r5, #0x0
	ands r1, r2
	orrs r1, r6
	strb r1, [r0, #0x1F]
	ldr r1, [r7, #0x00]
	ldr r0, _08164650 @ =0x0000FFFF
	strh r0, [r1, #0x0E]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x02
	mov r1, r8
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x04]
	ldrb r1, [r0, #0x1F]
	ands r5, r1
	orrs r5, r6
	strb r5, [r0, #0x1F]
	ldr r1, [r7, #0x04]
	adds r0, r4, #0x0
	strh r0, [r1, #0x0E]
_08164608:
	adds r0, r7, #0x0
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0816461C: .4byte 0x0200000E
_08164620: .4byte 0x0200001C
_08164624: .4byte 0x0819941C
_08164628: .4byte 0x08198784
_0816462C: .4byte 0x08212B08
_08164630: .4byte 0x001FFFFF
_08164634: .4byte 0x0851F9E8
_08164638: .4byte sub_80E8B84
_0816463C: .4byte 0x08002D2C
_08164640: .4byte 0x08002C28
_08164644: .4byte 0x08212B00
_08164648: .4byte 0x00008003
_0816464C: .4byte 0x00008001
_08164650: .4byte 0x0000FFFF
