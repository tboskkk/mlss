	.syntax unified
	.text

	thumb_func_start sub_8166344
sub_8166344:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r2, #0x00
	ldr r1, [r5, #0x40]
	movs r3, #0x0E
_08166358:
	ldr r0, [r1, #0x00]
	adds r2, r2, r0
	ldr r0, [r1, #0x0C]
	adds r2, r2, r0
	ldr r0, [r1, #0x18]
	adds r2, r2, r0
	ldr r0, [r1, #0x24]
	adds r2, r2, r0
	ldr r0, [r1, #0x30]
	adds r2, r2, r0
	adds r1, #0x3C
	subs r3, #0x05
	cmp r3, #0x00
	bge _08166358
	adds r0, r2, #0x0
	movs r1, #0x0F
	bl __divsi3
	mov r9, r0
	ldr r0, [r5, #0x40]
	movs r2, #0x00
	adds r7, r5, #0x0
	adds r7, #0x28
	movs r1, #0x20
	adds r1, r1, r5
	mov r10, r1
	adds r1, r0, #0x0
	adds r1, #0x08
	movs r3, #0x0E
_08166392:
	ldr r0, [r1, #0x00]
	adds r2, r2, r0
	ldr r0, [r1, #0x0C]
	adds r2, r2, r0
	ldr r0, [r1, #0x18]
	adds r2, r2, r0
	ldr r0, [r1, #0x24]
	adds r2, r2, r0
	ldr r0, [r1, #0x30]
	adds r2, r2, r0
	adds r1, #0x3C
	subs r3, #0x05
	cmp r3, #0x00
	bge _08166392
	adds r0, r2, #0x0
	movs r1, #0x0F
	bl __divsi3
	mov r8, r0
	ldr r0, [r5, #0x3C]
	bl sub_8162F20
	ldr r4, [r7, #0x00]
	adds r0, r4, #0x0
	bl sub_8163A6C
	ldr r0, [r5, #0x6C]
	movs r6, #0x08
	ands r0, r6
	cmp r0, #0x00
	beq _081663DC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	mov r2, r9
	mov r3, r8
	bl sub_8167D50
_081663DC:
	adds r0, r4, #0x0
	bl sub_8161E38
	adds r0, r4, #0x0
	bl sub_8165510
	ldr r4, [r7, #0x04]
	adds r0, r4, #0x0
	bl sub_8163A6C
	ldr r0, [r5, #0x6C]
	ands r0, r6
	cmp r0, #0x00
	beq _08166404
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	mov r2, r9
	mov r3, r8
	bl sub_8167D50
_08166404:
	adds r0, r4, #0x0
	bl sub_8161E38
	adds r0, r4, #0x0
	bl sub_8165510
	adds r0, r5, #0x0
	bl sub_8167D8C
	movs r7, #0x00
_08166418:
	lsls r0, r7, #0x02
	add r0, r10
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8163A6C
	ldr r0, [r5, #0x6C]
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0816643A
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	mov r2, r9
	mov r3, r8
	bl sub_8167D50
_0816643A:
	ldr r1, [r5, #0x6C]
	movs r0, #0x10
	ands r1, r0
	adds r6, r4, #0x0
	adds r6, #0x6C
	cmp r1, #0x00
	bne _081664AE
	ldr r3, [r4, #0x18]
	ldr r1, [r4, #0x1C]
	ldr r0, [r4, #0x3C]
	adds r1, r1, r0
	ldr r2, [r4, #0x20]
	ldr r0, [r5, #0x40]
	str r3, [sp, #0x000]
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r1, #0x8D
	lsls r1, r1, #0x02
	adds r3, r0, r1
	ldr r2, _0816652C @ =0x08001FA0
	ldr r1, _08166530 @ =0x08001DF8
	subs r2, r2, r1
	ldr r3, [r3, #0x00]
	adds r3, r3, r2
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #0x0F
	bl _call_via_r3
	negs r1, r0
	orrs r1, r0
	cmp r1, #0x00
	bge _081664AE
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	bne _081664B4
	movs r0, #0x50
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	movs r0, #0x5A
	strh r0, [r6, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x6E
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x6C]
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081664AE
	ldr r0, [r5, #0x34]
	ldrh r2, [r2, #0x00]
	adds r1, r7, #0x0
	bl sub_8163650
_081664AE:
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	beq _081664BA
_081664B4:
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
_081664BA:
	ldr r0, [r5, #0x6C]
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081664F4
	ldr r0, _08166534 @ =0x03000374
	ldrh r1, [r0, #0x02]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081664D4
	cmp r7, #0x00
	beq _081664E0
_081664D4:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081664F4
	cmp r7, #0x01
	bne _081664F4
_081664E0:
	adds r0, r4, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081664F4
	adds r0, r4, #0x0
	ldr r1, _08166538 @ =0x08214486
	bl sub_81639F8
_081664F4:
	adds r0, r4, #0x0
	bl sub_8161E38
	ldr r0, [r5, #0x40]
	ldr r1, [r0, #0x58]
	adds r0, r4, #0x0
	bl sub_8165484
	adds r7, #0x01
	cmp r7, #0x01
	ble _08166418
	ldr r0, [r5, #0x1C]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0816656A
_08166512:
	ldr r7, [r4, #0x08]
	ldr r0, [r4, #0x00]
	cmp r0, #0x02
	beq _0816653C
	cmp r0, #0x02
	blt _08166564
	cmp r0, #0x06
	bgt _08166564
	adds r0, r4, #0x0
	bl sub_8161E38
	b _08166564
	.byte 0x00, 0x00
_0816652C: .4byte dword_8001FA0 @ =0x08001FA0
_08166530: .4byte dword_8001DF8 @ =0x08001DF8
_08166534: .4byte 0x03000374
_08166538: .4byte dword_8214486 @ =0x08214486
_0816653C:
	ldr r6, [r5, #0x1C]
	adds r0, r4, #0x0
	bl sub_8161E38
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08166564
	adds r0, r4, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08166564
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_8163C40
_08166564:
	adds r4, r7, #0x0
	cmp r4, #0x00
	bne _08166512
_0816656A:
	ldr r0, [r5, #0x34]
	bl sub_8163674
	ldr r0, [r5, #0x38]
	bl sub_81637AC
	ldr r0, [r5, #0x1C]
	ldr r1, [r5, #0x3C]
	ldr r2, [r1, #0x1C]
	movs r1, #0x00
	bl sub_8163864
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
