	.syntax unified
	.text

	thumb_func_start sub_816881C
sub_816881C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	mov r8, r3
	movs r1, #0x05
	bl sub_8161C28
	ldr r0, _081688C4 @ =0x08CDD1E8
	str r0, [r5, #0x0C]
	ldr r0, [r4, #0x00]
	ldr r1, [r7, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x08
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x08]
	ldr r2, [r7, #0x08]
	subs r1, r1, r2
	lsls r1, r1, #0x08
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r5, #0x7C]
	ldr r1, _081688C8 @ =0x08198504
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _08168864
	adds r0, #0x3F
_08168864:
	asrs r6, r0, #0x06
	ldr r0, _081688CC @ =0x08198584
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08168874
	adds r0, #0x3F
_08168874:
	asrs r4, r0, #0x06
	movs r0, #0x00
	str r0, [r5, #0x74]
	adds r1, r5, #0x0
	adds r1, #0x80
	movs r0, #0x78
	str r0, [r1, #0x00]
	mov r3, r8
	cmp r3, #0x00
	beq _081688D4
	ldr r2, _081688D0 @ =0x00005006
	movs r0, #0x07
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8163ADC
	movs r0, #0x01
	str r0, [r5, #0x6C]
	lsls r2, r4, #0x03
	adds r2, r2, r4
	asrs r2, r2, #0x03
	str r2, [r5, #0x70]
	lsls r0, r6, #0x03
	adds r0, r0, r6
	asrs r0, r0, #0x03
	str r0, [r5, #0x78]
	ldr r1, [r7, #0x00]
	adds r1, r1, r2
	ldr r3, [r7, #0x08]
	adds r3, r3, r0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8163A64
	b _081688FE
	.byte 0x00, 0x00
_081688C4: .4byte 0x08CDD1E8
_081688C8: .4byte 0x08198504
_081688CC: .4byte 0x08198584
_081688D0: .4byte 0x00005006
_081688D4:
	ldr r2, _0816890C @ =0x00005006
	movs r0, #0x09
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8163ADC
	mov r0, r8
	str r0, [r5, #0x6C]
	movs r1, #0xD0
	adds r0, r4, #0x0
	muls r0, r1
	asrs r0, r0, #0x08
	str r0, [r5, #0x70]
	adds r0, r6, #0x0
	muls r0, r1
	asrs r0, r0, #0x08
	str r0, [r5, #0x78]
_081688FE:
	adds r0, r5, #0x0
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0816890C: .4byte 0x00005006
