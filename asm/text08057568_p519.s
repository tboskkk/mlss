	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80C3F70
sub_80C3F70:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C4028 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080C3F90
	adds r1, #0xFF
_080C3F90:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080C3F9A
	adds r2, #0xFF
_080C3F9A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080C3FA4
	adds r3, #0xFF
_080C3FA4:
	asrs r3, r3, #0x08
	adds r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080C402C @ =0x00002FE6
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3FC2
	cmp r1, #0x04
	bne _080C407E
_080C3FC2:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C3FCA
	adds r0, #0xFF
_080C3FCA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r0, #0x0
	subs r7, #0x0A
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080C3FE4
	adds r0, #0xFF
_080C3FE4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080C3FFC
	adds r3, #0xFF
_080C3FFC:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x15
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080C4030
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080C4040
_080C4028: .4byte 0x03000FD8
_080C402C: .4byte 0x00002FE6
_080C4030:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080C4040:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080C4048
	adds r0, #0xFF
_080C4048:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080C40C8 @ =0x03001038
	ldr r0, _080C40CC @ =0x0819832C
	ldr r1, _080C40D0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080C4062
	adds r1, #0x3F
_080C4062:
	asrs r1, r1, #0x06
	adds r1, #0x0C
	movs r0, #0x90
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080C407E:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C4090
	cmp r1, #0x04
	bne _080C40A8
_080C4090:
	ldr r2, _080C40D4 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C40A8:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C40D8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C40DC @ =0x080C40E1
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C40C8: .4byte 0x03001038
_080C40CC: .4byte 0x0819832C
_080C40D0: .4byte 0x08198220
_080C40D4: .4byte 0x00002034
_080C40D8: .4byte 0x00000FFF
_080C40DC: .4byte sub_80C40E0
	thumb_func_start sub_80C40E0
sub_80C40E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C41FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x02
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r9
	subs r1, r1, r0
	str r1, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r9
	bge _080C414A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C414A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C415A
	b _080C4694
_080C415A:
	mov r1, r12
	cmp r1, #0x00
	bge _080C4162
	movs r1, #0x00
_080C4162:
	ldr r0, _080C4200 @ =0x00007FFF
	cmp r1, r0
	ble _080C416A
	adds r1, r0, #0x0
_080C416A:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080C4180
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4182
_080C4180:
	movs r2, #0x00
_080C4182:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r10, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080C4268
	ldr r2, _080C41FC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C4204
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C41B6
	movs r1, #0x33
_080C41AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41AA
_080C41B6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C41CA
	movs r1, #0x33
_080C41BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41BE
_080C41CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C41DE
	movs r1, #0x33
_080C41D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41D2
_080C41DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4260
	movs r1, #0x03
_080C41E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C41F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C41F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C41E8
	b _080C4260
	.byte 0x00, 0x00
_080C41FC: .4byte 0x03000FD8
_080C4200: .4byte 0x00007FFF
_080C4204:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C421A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C420E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C420E
_080C421A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4230
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4224:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4224
_080C4230:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4246
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C423A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C423A
_080C4246:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4260
	movs r1, #0x10
_080C4250:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C425A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C425A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4250
_080C4260:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C4268:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C4272
	movs r1, #0x00
_080C4272:
	mov r0, r9
	cmp r0, #0x00
	bge _080C427A
	movs r2, #0x00
_080C427A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C4284
	adds r1, r0, #0x0
_080C4284:
	ldr r0, _080C437C @ =0x00007FFF
	cmp r2, r0
	ble _080C428C
	adds r2, r0, #0x0
_080C428C:
	cmp r2, r1
	bge _080C4292
	adds r1, r2, #0x0
_080C4292:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C42AA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C42AC
_080C42AA:
	movs r1, #0x00
_080C42AC:
	cmp r1, #0x00
	bne _080C42B2
	b _080C43FC
_080C42B2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C4380 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C42D0
	b _080C43FC
_080C42D0:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C4384 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C43EA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4388
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4332
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4326:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4326
_080C4332:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4348
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C433C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C433C
_080C4348:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C435E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4352:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4352
_080C435E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C43E6
	movs r1, #0x10
_080C4368:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4372
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4372:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4368
	b _080C43E6
	.byte 0x00, 0x00
_080C437C: .4byte 0x00007FFF
_080C4380: .4byte 0x0300034C
_080C4384: .4byte 0x03000FD8
_080C4388:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C43A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4394:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4394
_080C43A0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C43B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C43AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C43AA
_080C43B6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C43CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C43C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C43C0
_080C43CC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C43E6
	movs r1, #0x10
_080C43D6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C43E0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C43E0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C43D6
_080C43E6:
	bl sub_807F448
_080C43EA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C44D0 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C43FC:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C4408
	b _080C4694
_080C4408:
	mov r1, r9
	cmp r1, #0x00
	bge _080C4410
	movs r1, #0x00
_080C4410:
	ldr r0, _080C44D4 @ =0x00007FFF
	cmp r1, r0
	ble _080C4418
	adds r1, r0, #0x0
_080C4418:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C4430
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4432
_080C4430:
	movs r2, #0x00
_080C4432:
	cmp r2, #0x00
	bne _080C4438
	b _080C4544
_080C4438:
	ldr r3, _080C44D8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C44D0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C44DC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4488
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C447C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C447C
_080C4488:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C449E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4492:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4492
_080C449E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C44B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44A8
_080C44B4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4538
	movs r1, #0x10
_080C44BE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C44C8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C44C8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C44BE
	b _080C4538
_080C44D0: .4byte 0x00000FFF
_080C44D4: .4byte 0x00007FFF
_080C44D8: .4byte 0x03000FD8
_080C44DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C44F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44E6
_080C44F2:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4508
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44FC
_080C4508:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C451E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4512:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4512
_080C451E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4538
	movs r1, #0x10
_080C4528:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4532
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4532:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4528
_080C4538:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C4694
_080C4544:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C4550
	b _080C4694
_080C4550:
	ldr r0, _080C4614 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4566
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C4566
	b _080C4694
_080C4566:
	ldr r2, _080C4618 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C4596
	b _080C4694
_080C4596:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C461C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4620
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C45CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45BE
_080C45CA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C45E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45D4
_080C45E0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C45F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45EA
_080C45F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C467C
	movs r1, #0x10
_080C4600:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C460A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C460A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4600
	b _080C467C
	.byte 0x00, 0x00
_080C4614: .4byte 0x0300034C
_080C4618: .4byte 0x03000FD8
_080C461C: .4byte 0x00000FFF
_080C4620:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4636
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C462A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C462A
_080C4636:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C464C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4640:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4640
_080C464C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4662
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4656:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4656
_080C4662:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C467C
	movs r1, #0x10
_080C466C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4676
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4676:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C466C
_080C467C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C4694:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080C46A0
	b _080C47B2
_080C46A0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080C46AC
	movs r2, #0x00
_080C46AC:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C46B6
	adds r1, r0, #0x0
_080C46B6:
	ldr r0, _080C46EC @ =0x00007FFF
	cmp r2, r0
	ble _080C46BE
	adds r2, r0, #0x0
_080C46BE:
	cmp r2, r1
	bge _080C46C4
	adds r1, r2, #0x0
_080C46C4:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080C46DE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C46E0
_080C46DE:
	movs r1, #0x00
_080C46E0:
	cmp r1, #0x00
	beq _080C47B2
	cmp r7, #0x01
	ble _080C46F4
	ldr r4, _080C46F0 @ =0x0403038B
	b _080C46F6
_080C46EC: .4byte 0x00007FFF
_080C46F0: .4byte 0x0403038B
_080C46F4:
	ldr r4, _080C473C @ =0x0403028B
_080C46F6:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080C4740
	cmp r1, #0x01
	bne _080C4740
	adds r0, r5, #0x0
	bl sub_8086764
	b _080C47F8
	.byte 0x00, 0x00
_080C473C: .4byte 0x0403028B
_080C4740:
	cmp r7, #0x01
	ble _080C4770
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C474C
	adds r1, #0xFF
_080C474C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4756
	adds r2, #0xFF
_080C4756:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4760
	adds r3, #0xFF
_080C4760:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080C476C @ =0x00002E7A
	bl sub_80DF024
	b _080C479A
_080C476C: .4byte 0x00002E7A
_080C4770:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080C4778
	adds r0, #0xFF
_080C4778:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4784
	adds r2, #0xFF
_080C4784:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C478E
	adds r3, #0xFF
_080C478E:
	asrs r3, r3, #0x08
	adds r3, #0x14
	str r6, [sp, #0x000]
	ldr r0, _080C4808 @ =0x000006F7
	bl sub_80DF024
_080C479A:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C480C @ =0x00000FFF
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080C47B2:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C47F8
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C47D0
	cmp r1, #0x04
	bne _080C47E8
_080C47D0:
	ldr r2, _080C4810 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C47E8:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C480C @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r0, _080C4814 @ =0x080C4819
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C47F8:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C4808: .4byte 0x000006F7
_080C480C: .4byte 0x00000FFF
_080C4810: .4byte 0x00002034
_080C4814: .4byte sub_80C4818
	thumb_func_start sub_80C4818
sub_80C4818:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C4934 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x02
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r9
	subs r1, r1, r0
	str r1, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r9
	bge _080C4882
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C4882:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C4892
	b _080C4DCC
_080C4892:
	mov r1, r12
	cmp r1, #0x00
	bge _080C489A
	movs r1, #0x00
_080C489A:
	ldr r0, _080C4938 @ =0x00007FFF
	cmp r1, r0
	ble _080C48A2
	adds r1, r0, #0x0
_080C48A2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080C48B8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C48BA
_080C48B8:
	movs r2, #0x00
_080C48BA:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r10, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080C49A0
	ldr r2, _080C4934 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C493C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C48EE
	movs r1, #0x33
_080C48E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C48E2
_080C48EE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4902
	movs r1, #0x33
_080C48F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C48F6
_080C4902:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4916
	movs r1, #0x33
_080C490A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C490A
_080C4916:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4998
	movs r1, #0x03
_080C4920:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C492A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C492A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4920
	b _080C4998
	.byte 0x00, 0x00
_080C4934: .4byte 0x03000FD8
_080C4938: .4byte 0x00007FFF
_080C493C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4952
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4946:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4946
_080C4952:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4968
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C495C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C495C
_080C4968:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C497E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4972:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4972
_080C497E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4998
	movs r1, #0x10
_080C4988:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4992
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4992:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4988
_080C4998:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C49A0:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C49AA
	movs r1, #0x00
_080C49AA:
	mov r0, r9
	cmp r0, #0x00
	bge _080C49B2
	movs r2, #0x00
_080C49B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C49BC
	adds r1, r0, #0x0
_080C49BC:
	ldr r0, _080C4AB4 @ =0x00007FFF
	cmp r2, r0
	ble _080C49C4
	adds r2, r0, #0x0
_080C49C4:
	cmp r2, r1
	bge _080C49CA
	adds r1, r2, #0x0
_080C49CA:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C49E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C49E4
_080C49E2:
	movs r1, #0x00
_080C49E4:
	cmp r1, #0x00
	bne _080C49EA
	b _080C4B34
_080C49EA:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C4AB8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4A08
	b _080C4B34
_080C4A08:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C4ABC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C4B22
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4AC0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4A6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A5E
_080C4A6A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4A80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A74
_080C4A80:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4A96
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A8A
_080C4A96:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4B1E
	movs r1, #0x10
_080C4AA0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4AAA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4AAA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4AA0
	b _080C4B1E
	.byte 0x00, 0x00
_080C4AB4: .4byte 0x00007FFF
_080C4AB8: .4byte 0x0300034C
_080C4ABC: .4byte 0x03000FD8
_080C4AC0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4AD8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4ACC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4ACC
_080C4AD8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4AEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4AE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4AE2
_080C4AEE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4B04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4AF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4AF8
_080C4B04:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4B1E
	movs r1, #0x10
_080C4B0E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4B18
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4B18:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4B0E
_080C4B1E:
	bl sub_807F448
_080C4B22:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C4C08 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C4B34:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C4B40
	b _080C4DCC
_080C4B40:
	mov r1, r9
	cmp r1, #0x00
	bge _080C4B48
	movs r1, #0x00
_080C4B48:
	ldr r0, _080C4C0C @ =0x00007FFF
	cmp r1, r0
	ble _080C4B50
	adds r1, r0, #0x0
_080C4B50:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C4B68
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4B6A
_080C4B68:
	movs r2, #0x00
_080C4B6A:
	cmp r2, #0x00
	bne _080C4B70
	b _080C4C7C
_080C4B70:
	ldr r3, _080C4C10 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C4C08 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4C14
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4BC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BB4
_080C4BC0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4BD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BCA
_080C4BD6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4BEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BE0
_080C4BEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4C70
	movs r1, #0x10
_080C4BF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4C00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4C00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4BF6
	b _080C4C70
_080C4C08: .4byte 0x00000FFF
_080C4C0C: .4byte 0x00007FFF
_080C4C10: .4byte 0x03000FD8
_080C4C14:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4C2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C1E
_080C4C2A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4C40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C34
_080C4C40:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4C56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C4A
_080C4C56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4C70
	movs r1, #0x10
_080C4C60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4C6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4C6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4C60
_080C4C70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C4DCC
_080C4C7C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C4C88
	b _080C4DCC
_080C4C88:
	ldr r0, _080C4D4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4C9E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C4C9E
	b _080C4DCC
_080C4C9E:
	ldr r2, _080C4D50 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C4CCE
	b _080C4DCC
_080C4CCE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C4D54 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4D58
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4CF6
_080C4D02:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4D18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D0C
_080C4D18:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4D2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D22
_080C4D2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4DB4
	movs r1, #0x10
_080C4D38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4D42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4D42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4D38
	b _080C4DB4
	.byte 0x00, 0x00
_080C4D4C: .4byte 0x0300034C
_080C4D50: .4byte 0x03000FD8
_080C4D54: .4byte 0x00000FFF
_080C4D58:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4D6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D62
_080C4D6E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4D84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D78
_080C4D84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4D9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D8E
_080C4D9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4DB4
	movs r1, #0x10
_080C4DA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4DAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4DAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4DA4
_080C4DB4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C4DCC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080C4DD8
	b _080C4EEA
_080C4DD8:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080C4DE4
	movs r2, #0x00
_080C4DE4:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C4DEE
	adds r1, r0, #0x0
_080C4DEE:
	ldr r0, _080C4E24 @ =0x00007FFF
	cmp r2, r0
	ble _080C4DF6
	adds r2, r0, #0x0
_080C4DF6:
	cmp r2, r1
	bge _080C4DFC
	adds r1, r2, #0x0
_080C4DFC:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080C4E16
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C4E18
_080C4E16:
	movs r1, #0x00
_080C4E18:
	cmp r1, #0x00
	beq _080C4EEA
	cmp r7, #0x01
	ble _080C4E2C
	ldr r4, _080C4E28 @ =0x0403038B
	b _080C4E2E
_080C4E24: .4byte 0x00007FFF
_080C4E28: .4byte 0x0403038B
_080C4E2C:
	ldr r4, _080C4E74 @ =0x0403028B
_080C4E2E:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080C4E78
	cmp r1, #0x01
	bne _080C4E78
	adds r0, r5, #0x0
	bl sub_8086764
	b _080C4FCC
	.byte 0x00, 0x00
_080C4E74: .4byte 0x0403028B
_080C4E78:
	cmp r7, #0x01
	ble _080C4EA8
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C4E84
	adds r1, #0xFF
_080C4E84:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4E8E
	adds r2, #0xFF
_080C4E8E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4E98
	adds r3, #0xFF
_080C4E98:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080C4EA4 @ =0x00002E7A
	bl sub_80DF024
	b _080C4ED2
_080C4EA4: .4byte 0x00002E7A
_080C4EA8:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080C4EB0
	adds r0, #0xFF
_080C4EB0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4EBC
	adds r2, #0xFF
_080C4EBC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4EC6
	adds r3, #0xFF
_080C4EC6:
	asrs r3, r3, #0x08
	adds r3, #0x14
	str r6, [sp, #0x000]
	ldr r0, _080C4FDC @ =0x000006F7
	bl sub_80DF024
_080C4ED2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C4FE0 @ =0x00000FFF
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080C4EEA:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080C4F08
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080C4F0A
_080C4F08:
	movs r1, #0x00
_080C4F0A:
	cmp r1, #0x00
	beq _080C4F18
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_080C4F18:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C4FCC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C4F44
	cmp r2, #0x04
	bne _080C4F5C
_080C4F44:
	ldr r2, _080C4FE4 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C4F5C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C4F6A
	cmp r2, #0x04
	bne _080C4FC6
_080C4F6A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F78
	adds r0, #0xFF
_080C4F78:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F8A
	adds r0, #0xFF
_080C4F8A:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F9C
	adds r0, #0xFF
_080C4F9C:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080C4FB2
	adds r0, #0xFF
_080C4FB2:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080C4FC6:
	ldr r0, _080C4FE8 @ =0x080C4FED
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080C4FCC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C4FDC: .4byte 0x000006F7
_080C4FE0: .4byte 0x00000FFF
_080C4FE4: .4byte 0x00002034
_080C4FE8: .4byte sub_80C4FEC
	thumb_func_start sub_80C4FEC
sub_80C4FEC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C507C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C5072
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C5022
	adds r1, #0xFF
_080C5022:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C502C
	adds r2, #0xFF
_080C502C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C5036
	adds r3, #0xFF
_080C5036:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C5052
	cmp r1, #0x04
	bne _080C506E
_080C5052:
	ldr r2, _080C5080 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C506E:
	ldr r0, _080C5084 @ =0x080C5089
	str r0, [r6, #0x4C]
_080C5072:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C507C: .4byte 0x03000FD8
_080C5080: .4byte 0x00002034
_080C5084: .4byte sub_80C5088
	thumb_func_start sub_80C5088
sub_80C5088:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C5130 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C50AA
	b _080C526C
_080C50AA:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C50BC
	cmp r1, #0x04
	bne _080C50FE
_080C50BC:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C50CA
	adds r0, #0xFF
_080C50CA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C50D8
	adds r0, #0xFF
_080C50D8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C50E6
	adds r0, #0xFF
_080C50E6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C50FE:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C5112
	cmp r2, #0x04
	bne _080C5174
_080C5112:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C5138
	ldr r2, _080C5134 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C5144
_080C5130: .4byte 0x03000FD8
_080C5134: .4byte 0x00002002
_080C5138:
	ldr r2, _080C5210 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C5144:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C515A
	movs r2, #0x01
_080C515A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C5174:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C5182
	cmp r2, #0x04
	bne _080C518C
_080C5182:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C518C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C51A0
	cmp r2, #0x04
	bne _080C51E2
_080C51A0:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C51AE
	adds r0, #0xFF
_080C51AE:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C51BC
	adds r0, #0xFF
_080C51BC:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C51CA
	adds r0, #0xFF
_080C51CA:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C51E2:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C51F0
	cmp r1, #0x04
	bne _080C5254
_080C51F0:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C5218
	ldr r2, _080C5214 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C5224
	.byte 0x00, 0x00
_080C5210: .4byte 0x0000204F
_080C5214: .4byte 0x00002002
_080C5218:
	ldr r2, _080C5274 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C5224:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C523A
	movs r2, #0x01
_080C523A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C5254:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C5262
	cmp r2, #0x04
	bne _080C526C
_080C5262:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C526C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C5274: .4byte 0x0000204F
	thumb_func_start sub_80C5278
sub_80C5278:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C52CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	mov r0, r9
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	ldr r4, _080C52D0 @ =0x00000FFF
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x03
	bgt _080C52D8
	ldr r2, _080C52D4 @ =0x083B89F8
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080C536A
	.byte 0x00, 0x00
_080C52CC: .4byte 0x03000FD8
_080C52D0: .4byte 0x00000FFF
_080C52D4: .4byte 0x083B89F8
_080C52D8:
	ldr r5, _080C5300 @ =0x083B8A00
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C5304
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080C531E
	.byte 0x00, 0x00
_080C5300: .4byte 0x083B8A00
_080C5304:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080C531E:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C534A
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080C5364
_080C534A:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080C5364:
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
_080C536A:
	strh r1, [r0, #0x00]
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080C5374
	adds r1, #0xFF
_080C5374:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080C537E
	adds r2, #0xFF
_080C537E:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080C5388
	adds r3, #0xFF
_080C5388:
	asrs r3, r3, #0x08
	adds r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080C5458 @ =0x00002FE6
	bl sub_80DF024
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080C53A8
	cmp r2, #0x04
	bne _080C5410
_080C53A8:
	mov r1, r8
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _080C53B2
	adds r0, #0xFF
_080C53B2:
	asrs r0, r0, #0x08
	mov r1, r8
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	mov r1, r8
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080C53CE
	adds r0, #0xFF
_080C53CE:
	asrs r0, r0, #0x08
	mov r1, r8
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	mov r0, r8
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _080C53E8
	adds r3, #0xFF
_080C53E8:
	asrs r3, r3, #0x08
	mov r0, r8
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x15
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080C5410:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C541E
	cmp r2, #0x04
	bne _080C5436
_080C541E:
	ldr r2, _080C545C @ =0x00002034
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C5436:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C5460 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C5464 @ =0x080C5469
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C5458: .4byte 0x00002FE6
_080C545C: .4byte 0x00002034
_080C5460: .4byte 0x00000FFF
_080C5464: .4byte sub_80C5468
	thumb_func_start sub_80C5468
sub_80C5468:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C5590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C54DE
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C54DE:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C54EE
	b _080C5A2C
_080C54EE:
	mov r1, r12
	cmp r1, #0x00
	bge _080C54F6
	movs r1, #0x00
_080C54F6:
	ldr r0, _080C5594 @ =0x00007FFF
	cmp r1, r0
	ble _080C54FE
	adds r1, r0, #0x0
_080C54FE:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5514
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5516
_080C5514:
	movs r2, #0x00
_080C5516:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C55FC
	ldr r2, _080C5590 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C5598
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C554A
	movs r1, #0x33
_080C553E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C553E
_080C554A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C555E
	movs r1, #0x33
_080C5552:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5552
_080C555E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5572
	movs r1, #0x33
_080C5566:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5566
_080C5572:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C55F4
	movs r1, #0x03
_080C557C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5586
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5586:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C557C
	b _080C55F4
	.byte 0x00, 0x00
_080C5590: .4byte 0x03000FD8
_080C5594: .4byte 0x00007FFF
_080C5598:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C55AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55A2
_080C55AE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C55C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55B8
_080C55C4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C55DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55CE
_080C55DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C55F4
	movs r1, #0x10
_080C55E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C55EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C55EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C55E4
_080C55F4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C55FC:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C5606
	movs r1, #0x00
_080C5606:
	mov r3, r9
	cmp r3, #0x00
	bge _080C560E
	movs r2, #0x00
_080C560E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C5618
	adds r1, r0, #0x0
_080C5618:
	ldr r0, _080C5710 @ =0x00007FFF
	cmp r2, r0
	ble _080C5620
	adds r2, r0, #0x0
_080C5620:
	cmp r2, r1
	bge _080C5626
	adds r1, r2, #0x0
_080C5626:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C563E
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C5640
_080C563E:
	movs r1, #0x00
_080C5640:
	cmp r1, #0x00
	bne _080C5646
	b _080C5792
_080C5646:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C5714 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5664
	b _080C5792
_080C5664:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C5718 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C577E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C571C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C56C6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56BA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56BA
_080C56C6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C56DC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56D0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56D0
_080C56DC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C56F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56E6
_080C56F2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C577A
	movs r1, #0x10
_080C56FC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5706
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5706:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C56FC
	b _080C577A
	.byte 0x00, 0x00
_080C5710: .4byte 0x00007FFF
_080C5714: .4byte 0x0300034C
_080C5718: .4byte 0x03000FD8
_080C571C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5734
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5728:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5728
_080C5734:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C574A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C573E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C573E
_080C574A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5760
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5754:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5754
_080C5760:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C577A
	movs r1, #0x10
_080C576A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5774
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5774:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C576A
_080C577A:
	bl sub_807F448
_080C577E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5868 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C5792:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C579E
	b _080C5A2C
_080C579E:
	mov r1, r9
	cmp r1, #0x00
	bge _080C57A6
	movs r1, #0x00
_080C57A6:
	ldr r0, _080C586C @ =0x00007FFF
	cmp r1, r0
	ble _080C57AE
	adds r1, r0, #0x0
_080C57AE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C57C6
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C57C8
_080C57C6:
	movs r2, #0x00
_080C57C8:
	cmp r2, #0x00
	bne _080C57CE
	b _080C58DC
_080C57CE:
	ldr r3, _080C5870 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C5868 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5874
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C581E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5812:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5812
_080C581E:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C5834
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5828:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5828
_080C5834:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C584A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C583E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C583E
_080C584A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C58D0
	movs r1, #0x10
_080C5854:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C585E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C585E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5854
	b _080C58D0
	.byte 0x00, 0x00
_080C5868: .4byte 0x00000FFF
_080C586C: .4byte 0x00007FFF
_080C5870: .4byte 0x03000FD8
_080C5874:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C588A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C587E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C587E
_080C588A:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C58A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5894:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5894
_080C58A0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C58B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C58AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C58AA
_080C58B6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C58D0
	movs r1, #0x10
_080C58C0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C58CA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C58CA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C58C0
_080C58D0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C5A2C
_080C58DC:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C58E8
	b _080C5A2C
_080C58E8:
	ldr r0, _080C59AC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C58FE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C58FE
	b _080C5A2C
_080C58FE:
	ldr r2, _080C59B0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C592E
	b _080C5A2C
_080C592E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C59B4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C59B8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5962
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5956:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5956
_080C5962:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C5978
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C596C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C596C
_080C5978:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C598E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5982:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5982
_080C598E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5A14
	movs r1, #0x10
_080C5998:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C59A2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C59A2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5998
	b _080C5A14
	.byte 0x00, 0x00
_080C59AC: .4byte 0x0300034C
_080C59B0: .4byte 0x03000FD8
_080C59B4: .4byte 0x00000FFF
_080C59B8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C59CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59C2
_080C59CE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C59E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59D8
_080C59E4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C59FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59EE
_080C59FA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5A14
	movs r1, #0x10
_080C5A04:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5A0E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5A0E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5A04
_080C5A14:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C5A2C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C5AA4
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C5A42
	movs r1, #0x00
_080C5A42:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C5A4C
	adds r2, r0, #0x0
_080C5A4C:
	ldr r0, _080C5A98 @ =0x00007FFF
	cmp r1, r0
	ble _080C5A54
	adds r1, r0, #0x0
_080C5A54:
	cmp r1, r2
	bge _080C5A5A
	adds r2, r1, #0x0
_080C5A5A:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C5A74
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C5A76
_080C5A74:
	movs r2, #0x00
_080C5A76:
	cmp r2, #0x00
	beq _080C5AA4
	cmp r3, #0x01
	ble _080C5AA4
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C5A9C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C5AA0 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C5AEC
	.byte 0x00, 0x00
_080C5A98: .4byte 0x00007FFF
_080C5A9C: .4byte 0x00000FFF
_080C5AA0: .4byte sub_80C65BC
_080C5AA4:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5AEC
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C5AC2
	cmp r1, #0x04
	bne _080C5ADA
_080C5AC2:
	ldr r2, _080C5AFC @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C5ADA:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5B00 @ =0x00000FFF
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	ldr r0, _080C5B04 @ =0x080C5B09
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C5AEC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C5AFC: .4byte 0x00002034
_080C5B00: .4byte 0x00000FFF
_080C5B04: .4byte sub_80C5B08
	thumb_func_start sub_80C5B08
sub_80C5B08:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C5C30 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C5B7E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C5B7E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C5B8E
	b _080C60CC
_080C5B8E:
	mov r1, r12
	cmp r1, #0x00
	bge _080C5B96
	movs r1, #0x00
_080C5B96:
	ldr r0, _080C5C34 @ =0x00007FFF
	cmp r1, r0
	ble _080C5B9E
	adds r1, r0, #0x0
_080C5B9E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5BB4
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5BB6
_080C5BB4:
	movs r2, #0x00
_080C5BB6:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C5C9C
	ldr r2, _080C5C30 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C5C38
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5BEA
	movs r1, #0x33
_080C5BDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5BDE
_080C5BEA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5BFE
	movs r1, #0x33
_080C5BF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5BF2
_080C5BFE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5C12
	movs r1, #0x33
_080C5C06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C06
_080C5C12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5C94
	movs r1, #0x03
_080C5C1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5C26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5C26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5C1C
	b _080C5C94
	.byte 0x00, 0x00
_080C5C30: .4byte 0x03000FD8
_080C5C34: .4byte 0x00007FFF
_080C5C38:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5C4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C42
_080C5C4E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5C64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C58
_080C5C64:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5C7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C6E
_080C5C7A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5C94
	movs r1, #0x10
_080C5C84:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5C8E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5C8E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5C84
_080C5C94:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C5C9C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C5CA6
	movs r1, #0x00
_080C5CA6:
	mov r3, r9
	cmp r3, #0x00
	bge _080C5CAE
	movs r2, #0x00
_080C5CAE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C5CB8
	adds r1, r0, #0x0
_080C5CB8:
	ldr r0, _080C5DB0 @ =0x00007FFF
	cmp r2, r0
	ble _080C5CC0
	adds r2, r0, #0x0
_080C5CC0:
	cmp r2, r1
	bge _080C5CC6
	adds r1, r2, #0x0
_080C5CC6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C5CDE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C5CE0
_080C5CDE:
	movs r1, #0x00
_080C5CE0:
	cmp r1, #0x00
	bne _080C5CE6
	b _080C5E32
_080C5CE6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C5DB4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5D04
	b _080C5E32
_080C5D04:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C5DB8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C5E1E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5DBC
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5D66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D5A
_080C5D66:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5D7C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D70
_080C5D7C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5D92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D86
_080C5D92:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5E1A
	movs r1, #0x10
_080C5D9C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5DA6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5DA6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5D9C
	b _080C5E1A
	.byte 0x00, 0x00
_080C5DB0: .4byte 0x00007FFF
_080C5DB4: .4byte 0x0300034C
_080C5DB8: .4byte 0x03000FD8
_080C5DBC:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5DD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DC8
_080C5DD4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5DEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DDE
_080C5DEA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5E00
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DF4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DF4
_080C5E00:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5E1A
	movs r1, #0x10
_080C5E0A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5E14
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5E14:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5E0A
_080C5E1A:
	bl sub_807F448
_080C5E1E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5F08 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C5E32:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C5E3E
	b _080C60CC
_080C5E3E:
	mov r1, r9
	cmp r1, #0x00
	bge _080C5E46
	movs r1, #0x00
_080C5E46:
	ldr r0, _080C5F0C @ =0x00007FFF
	cmp r1, r0
	ble _080C5E4E
	adds r1, r0, #0x0
_080C5E4E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5E66
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5E68
_080C5E66:
	movs r2, #0x00
_080C5E68:
	cmp r2, #0x00
	bne _080C5E6E
	b _080C5F7C
_080C5E6E:
	ldr r3, _080C5F10 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C5F08 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5F14
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5EBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EB2
_080C5EBE:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C5ED4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EC8
_080C5ED4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5EEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EDE
_080C5EEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5F70
	movs r1, #0x10
_080C5EF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5EFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5EFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5EF4
	b _080C5F70
	.byte 0x00, 0x00
_080C5F08: .4byte 0x00000FFF
_080C5F0C: .4byte 0x00007FFF
_080C5F10: .4byte 0x03000FD8
_080C5F14:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5F2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F1E
_080C5F2A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C5F40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F34
_080C5F40:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5F56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F4A
_080C5F56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5F70
	movs r1, #0x10
_080C5F60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5F6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5F6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5F60
_080C5F70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C60CC
_080C5F7C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C5F88
	b _080C60CC
_080C5F88:
	ldr r0, _080C604C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5F9E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C5F9E
	b _080C60CC
_080C5F9E:
	ldr r2, _080C6050 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C5FCE
	b _080C60CC
_080C5FCE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6054 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6058
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6002
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5FF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5FF6
_080C6002:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C6018
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C600C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C600C
_080C6018:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C602E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6022:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6022
_080C602E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C60B4
	movs r1, #0x10
_080C6038:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6042
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6042:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6038
	b _080C60B4
	.byte 0x00, 0x00
_080C604C: .4byte 0x0300034C
_080C6050: .4byte 0x03000FD8
_080C6054: .4byte 0x00000FFF
_080C6058:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C606E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6062:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6062
_080C606E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C6084
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6078:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6078
_080C6084:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C609A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C608E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C608E
_080C609A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C60B4
	movs r1, #0x10
_080C60A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C60AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C60AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C60A4
_080C60B4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C60CC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C6144
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C60E2
	movs r1, #0x00
_080C60E2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C60EC
	adds r2, r0, #0x0
_080C60EC:
	ldr r0, _080C6138 @ =0x00007FFF
	cmp r1, r0
	ble _080C60F4
	adds r1, r0, #0x0
_080C60F4:
	cmp r1, r2
	bge _080C60FA
	adds r2, r1, #0x0
_080C60FA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C6114
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C6116
_080C6114:
	movs r2, #0x00
_080C6116:
	cmp r2, #0x00
	beq _080C6144
	cmp r3, #0x01
	ble _080C6144
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C613C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C6140 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C6240
	.byte 0x00, 0x00
_080C6138: .4byte 0x00007FFF
_080C613C: .4byte 0x00000FFF
_080C6140: .4byte sub_80C65BC
_080C6144:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080C6162
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080C6164
_080C6162:
	movs r1, #0x00
_080C6164:
	cmp r1, #0x00
	beq _080C6172
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_080C6172:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C6240
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C6250 @ =0x0403048B
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080C61D4
	ldr r2, _080C6254 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C620C
_080C61D4:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C61DC
	adds r0, #0xFF
_080C61DC:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C61F4
	adds r2, #0xFF
_080C61F4:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C6258 @ =0x0000070B
	str r6, [sp, #0x000]
	movs r3, #0x14
	bl sub_80DF024
_080C620C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C621E
	cmp r1, #0x04
	bne _080C623A
_080C621E:
	ldr r2, _080C625C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C623A:
	ldr r0, _080C6260 @ =0x080C6265
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C6240:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C6250: .4byte 0x0403048B
_080C6254: .4byte 0x00000111
_080C6258: .4byte 0x0000070B
_080C625C: .4byte 0x00002034
_080C6260: .4byte sub_80C6264
	thumb_func_start sub_80C6264
sub_80C6264:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080C6324 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C631C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6292
	cmp r1, #0x04
	bne _080C62AA
_080C6292:
	ldr r2, _080C6328 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C62AA:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C62BC
	cmp r1, #0x04
	bne _080C6318
_080C62BC:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C62CA
	adds r0, #0xFF
_080C62CA:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C62DC
	adds r0, #0xFF
_080C62DC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C62EE
	adds r0, #0xFF
_080C62EE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C6304
	adds r0, #0xFF
_080C6304:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C6318:
	ldr r0, _080C632C @ =0x080C6331
	str r0, [r5, #0x4C]
_080C631C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080C6324: .4byte 0x03000FD8
_080C6328: .4byte 0x00002034
_080C632C: .4byte sub_80C6330
	thumb_func_start sub_80C6330
sub_80C6330:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C63C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C63B6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C6366
	adds r1, #0xFF
_080C6366:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C6370
	adds r2, #0xFF
_080C6370:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C637A
	adds r3, #0xFF
_080C637A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6396
	cmp r1, #0x04
	bne _080C63B2
_080C6396:
	ldr r2, _080C63C4 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C63B2:
	ldr r0, _080C63C8 @ =0x080C63CD
	str r0, [r6, #0x4C]
_080C63B6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C63C0: .4byte 0x03000FD8
_080C63C4: .4byte 0x00002034
_080C63C8: .4byte sub_80C63CC
	thumb_func_start sub_80C63CC
sub_80C63CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C6474 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C63EE
	b _080C65B0
_080C63EE:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6400
	cmp r1, #0x04
	bne _080C6442
_080C6400:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C640E
	adds r0, #0xFF
_080C640E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C641C
	adds r0, #0xFF
_080C641C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C642A
	adds r0, #0xFF
_080C642A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C6442:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C6456
	cmp r2, #0x04
	bne _080C64B8
_080C6456:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C647C
	ldr r2, _080C6478 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C6488
_080C6474: .4byte 0x03000FD8
_080C6478: .4byte 0x00002002
_080C647C:
	ldr r2, _080C6554 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C6488:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C649E
	movs r2, #0x01
_080C649E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C64B8:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C64C6
	cmp r2, #0x04
	bne _080C64D0
_080C64C6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C64D0:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C64E4
	cmp r2, #0x04
	bne _080C6526
_080C64E4:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C64F2
	adds r0, #0xFF
_080C64F2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C6500
	adds r0, #0xFF
_080C6500:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C650E
	adds r0, #0xFF
_080C650E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C6526:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6534
	cmp r1, #0x04
	bne _080C6598
_080C6534:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C655C
	ldr r2, _080C6558 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C6568
	.byte 0x00, 0x00
_080C6554: .4byte 0x0000204F
_080C6558: .4byte 0x00002002
_080C655C:
	ldr r2, _080C65B8 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C6568:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C657E
	movs r2, #0x01
_080C657E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C6598:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C65A6
	cmp r2, #0x04
	bne _080C65B0
_080C65A6:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C65B0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C65B8: .4byte 0x0000204F
	thumb_func_start sub_80C65BC
sub_80C65BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C6620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	mov r0, r9
	ldr r0, [r0, #0x2C]
	mov r8, r0
	ldr r0, [r0, #0x28]
	ldr r1, _080C6624 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r4, _080C6628 @ =0x00000FFF
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x04
	bgt _080C6630
	ldr r2, _080C662C @ =0x083B8A04
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080C66C2
_080C6620: .4byte 0x03000FD8
_080C6624: .4byte 0x00000111
_080C6628: .4byte 0x00000FFF
_080C662C: .4byte 0x083B8A04
_080C6630:
	ldr r5, _080C6658 @ =0x083B8A0E
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C665C
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080C6676
	.byte 0x00, 0x00
_080C6658: .4byte 0x083B8A0E
_080C665C:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080C6676:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C66A2
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080C66BC
_080C66A2:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080C66BC:
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
_080C66C2:
	strh r1, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C6790 @ =0x0403058B
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r8
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r7, #0x24]
	adds r0, #0x01
	strh r0, [r7, #0x24]
	mov r2, r8
	ldr r1, [r2, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bgt _080C6710
	ldr r2, _080C6794 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C674C
_080C6710:
	mov r3, r8
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080C671A
	adds r1, #0xFF
_080C671A:
	asrs r1, r1, #0x08
	mov r0, r8
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #0x3C]
	cmp r2, #0x00
	bge _080C6732
	adds r2, #0xFF
_080C6732:
	asrs r2, r2, #0x08
	mov r0, r8
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C6798 @ =0x00002E93
	mov r3, r8
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080C674C:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C675E
	cmp r1, #0x04
	bne _080C677A
_080C675E:
	ldr r2, _080C679C @ =0x00002034
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C677A:
	ldr r0, _080C67A0 @ =0x080C67A5
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C6790: .4byte 0x0403058B
_080C6794: .4byte 0x00000111
_080C6798: .4byte 0x00002E93
_080C679C: .4byte 0x00002034
_080C67A0: .4byte sub_80C67A4
	thumb_func_start sub_80C67A4
sub_80C67A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080C67F8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r3, [r2, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C68B2
	ldr r1, _080C67FC @ =0x083B8A12
	ldr r6, _080C6800 @ =0x000002BF
	adds r0, r2, r6
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	cmp r2, #0x00
	beq _080C680C
	adds r0, r3, #0x0
	adds r0, #0xB6
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6804 @ =0x00000FFF
	ands r0, r1
	cmp r2, r0
	bgt _080C680C
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C67F2
	cmp r1, #0x04
	bne _080C68B2
_080C67F2:
	ldr r0, _080C6808 @ =0x080C8609
	b _080C68B0
	.byte 0x00, 0x00
_080C67F8: .4byte 0x03000FD8
_080C67FC: .4byte 0x083B8A12
_080C6800: .4byte 0x000002BF
_080C6804: .4byte 0x00000FFF
_080C6808: .4byte sub_80C8608
_080C680C:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C6820
	cmp r2, #0x04
	bne _080C687C
_080C6820:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C682E
	adds r0, #0xFF
_080C682E:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C6840
	adds r0, #0xFF
_080C6840:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C6852
	adds r0, #0xFF
_080C6852:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C6868
	adds r0, #0xFF
_080C6868:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C687C:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C688A
	cmp r2, #0x04
	bne _080C68A2
_080C688A:
	ldr r2, _080C68BC @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C68A2:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C68C0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C68C4 @ =0x080C68C9
_080C68B0:
	str r0, [r5, #0x4C]
_080C68B2:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C68BC: .4byte 0x00002034
_080C68C0: .4byte 0x00000FFF
_080C68C4: .4byte sub_80C68C8
	thumb_func_start sub_80C68C8
sub_80C68C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080C6A00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r3, r4, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	movs r2, #0x0F
	mov r9, r2
	lsrs r0, r0, #0x0C
	str r0, [sp, #0x00C]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r2, r10
	subs r2, r2, r0
	mov r8, r2
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r10
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r10, r0
	movs r0, #0x86
	adds r0, r0, r4
	mov r12, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r10
	bge _080C694E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C694E:
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	mov r2, r9
	ands r0, r2
	mov r9, r3
	cmp r0, #0x00
	beq _080C695E
	b _080C6E90
_080C695E:
	mov r1, r8
	cmp r1, #0x00
	bge _080C6966
	movs r1, #0x00
_080C6966:
	ldr r0, _080C6A04 @ =0x00007FFF
	cmp r1, r0
	ble _080C696E
	adds r1, r0, #0x0
_080C696E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080C6986
	mov r4, r12
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C6988
_080C6986:
	movs r2, #0x00
_080C6988:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r8, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r9, r4
	cmp r2, #0x00
	beq _080C6A6C
	ldr r2, _080C6A00 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C6A08
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C69BC
	movs r1, #0x33
_080C69B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69B0
_080C69BC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C69D0
	movs r1, #0x33
_080C69C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69C4
_080C69D0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C69E4
	movs r1, #0x33
_080C69D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69D8
_080C69E4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6A64
	movs r1, #0x03
_080C69EE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C69F8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C69F8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C69EE
	b _080C6A64
_080C6A00: .4byte 0x03000FD8
_080C6A04: .4byte 0x00007FFF
_080C6A08:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6A1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A12
_080C6A1E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6A34
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A28:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A28
_080C6A34:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6A4A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A3E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A3E
_080C6A4A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6A64
	movs r1, #0x10
_080C6A54:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6A5E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6A5E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6A54
_080C6A64:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C6A6C:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080C6A76
	movs r1, #0x00
_080C6A76:
	mov r0, r10
	cmp r0, #0x00
	bge _080C6A7E
	movs r2, #0x00
_080C6A7E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C6A88
	adds r1, r0, #0x0
_080C6A88:
	ldr r0, _080C6B80 @ =0x00007FFF
	cmp r2, r0
	ble _080C6A90
	adds r2, r0, #0x0
_080C6A90:
	cmp r2, r1
	bge _080C6A96
	adds r1, r2, #0x0
_080C6A96:
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C6AAE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C6AB0
_080C6AAE:
	movs r1, #0x00
_080C6AB0:
	cmp r1, #0x00
	bne _080C6AB6
	b _080C6C00
_080C6AB6:
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080C6B84 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C6AD6
	b _080C6C00
_080C6AD6:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080C6B88 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C6BEE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6B8C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C6B38
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B2C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B2C
_080C6B38:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6B4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B42
_080C6B4E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6B64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B58
_080C6B64:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6BEA
	movs r1, #0x10
_080C6B6E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6B78
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6B78:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6B6E
	b _080C6BEA
_080C6B80: .4byte 0x00007FFF
_080C6B84: .4byte 0x0300034C
_080C6B88: .4byte 0x03000FD8
_080C6B8C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C6BA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B98
_080C6BA4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6BBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6BAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6BAE
_080C6BBA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6BD0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6BC4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6BC4
_080C6BD0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6BEA
	movs r1, #0x10
_080C6BDA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6BE4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6BE4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6BDA
_080C6BEA:
	bl sub_807F448
_080C6BEE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C6CD4 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C6C00:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C6C0C
	b _080C6E90
_080C6C0C:
	mov r1, r10
	cmp r1, #0x00
	bge _080C6C14
	movs r1, #0x00
_080C6C14:
	ldr r0, _080C6CD8 @ =0x00007FFF
	cmp r1, r0
	ble _080C6C1C
	adds r1, r0, #0x0
_080C6C1C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C6C34
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C6C36
_080C6C34:
	movs r2, #0x00
_080C6C36:
	cmp r2, #0x00
	bne _080C6C3C
	b _080C6D48
_080C6C3C:
	ldr r3, _080C6CDC @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6CD4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r9
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6CE0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6C8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6C80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6C80
_080C6C8C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6CA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6C96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6C96
_080C6CA2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6CB8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6CAC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6CAC
_080C6CB8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6D3C
	movs r1, #0x10
_080C6CC2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6CCC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6CCC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6CC2
	b _080C6D3C
_080C6CD4: .4byte 0x00000FFF
_080C6CD8: .4byte 0x00007FFF
_080C6CDC: .4byte 0x03000FD8
_080C6CE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6CF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6CEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6CEA
_080C6CF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6D0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6D00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6D00
_080C6D0C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6D22
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6D16:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6D16
_080C6D22:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6D3C
	movs r1, #0x10
_080C6D2C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6D36
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6D36:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6D2C
_080C6D3C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080C6E90
_080C6D48:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080C6D54
	b _080C6E90
_080C6D54:
	ldr r0, _080C6E10 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C6D62
	b _080C6E90
_080C6D62:
	ldr r2, _080C6E14 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C6D92
	b _080C6E90
_080C6D92:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6E18 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6E1C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6DC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DBA
_080C6DC6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6DDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DD0
_080C6DDC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6DF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DE6
_080C6DF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6E78
	movs r1, #0x10
_080C6DFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6E06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6E06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6DFC
	b _080C6E78
	.byte 0x00, 0x00
_080C6E10: .4byte 0x0300034C
_080C6E14: .4byte 0x03000FD8
_080C6E18: .4byte 0x00000FFF
_080C6E1C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6E32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E26
_080C6E32:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6E48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E3C
_080C6E48:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6E5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E52
_080C6E5E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6E78
	movs r1, #0x10
_080C6E68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6E72
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6E72:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6E68
_080C6E78:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C6E90:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C6F08
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	mov r4, r10
	cmp r4, #0x00
	bge _080C6EA8
	movs r2, #0x00
_080C6EA8:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C6EB2
	adds r1, r0, #0x0
_080C6EB2:
	ldr r0, _080C6EFC @ =0x00007FFF
	cmp r2, r0
	ble _080C6EBA
	adds r2, r0, #0x0
_080C6EBA:
	cmp r2, r1
	bge _080C6EC0
	adds r1, r2, #0x0
_080C6EC0:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C6EDA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C6EDC
_080C6EDA:
	movs r1, #0x00
_080C6EDC:
	cmp r1, #0x00
	beq _080C6F08
	cmp r3, #0x01
	ble _080C6F08
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C6F00 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C6F04 @ =0x080C724D
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C7028
_080C6EFC: .4byte 0x00007FFF
_080C6F00: .4byte 0x00000FFF
_080C6F04: .4byte sub_80C724C
_080C6F08:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x01
	bne _080C6F52
	ldr r1, [sp, #0x00C]
	cmp r0, r1
	beq _080C6F52
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r10
	bge _080C6F52
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6F36
	cmp r1, #0x04
	bne _080C6F52
_080C6F36:
	ldr r2, _080C7038 @ =0x00002063
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C6F52:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C7028
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x59
	bl play_sfx_80195B4
	ldr r0, [r7, #0x28]
	ldr r3, _080C703C @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bne _080C6F8C
	adds r0, r7, #0x0
	bl sub_8086700
_080C6F8C:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C6F94
	adds r1, #0xFF
_080C6F94:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C6F9E
	adds r2, #0xFF
_080C6F9E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C6FA8
	adds r3, #0xFF
_080C6FA8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6FC4
	cmp r1, #0x04
	bne _080C6FE0
_080C6FC4:
	ldr r2, _080C7040 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C6FE0:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6FF2
	cmp r1, #0x04
	bne _080C7022
_080C6FF2:
	ldr r2, _080C7044 @ =0x03001038
	ldr r0, _080C7048 @ =0x0819832C
	ldr r1, _080C704C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x2F
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7022:
	ldr r0, _080C7050 @ =0x080C7055
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080C7028:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7038: .4byte 0x00002063
_080C703C: .4byte 0x00000111
_080C7040: .4byte 0x00002034
_080C7044: .4byte 0x03001038
_080C7048: .4byte 0x0819832C
_080C704C: .4byte 0x08198220
_080C7050: .4byte sub_80C7054
	thumb_func_start sub_80C7054
sub_80C7054:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C7104 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C707C
	b _080C7240
_080C707C:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C708E
	cmp r1, #0x04
	bne _080C70D0
_080C708E:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C709C
	adds r0, #0xFF
_080C709C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C70AA
	adds r0, #0xFF
_080C70AA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C70B8
	adds r0, #0xFF
_080C70B8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C70D0:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C70E4
	cmp r2, #0x04
	bne _080C7148
_080C70E4:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C710C
	ldr r2, _080C7108 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C7118
	.byte 0x00, 0x00
_080C7104: .4byte 0x03000FD8
_080C7108: .4byte 0x00002002
_080C710C:
	ldr r2, _080C71E4 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C7118:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080C712E
	movs r2, #0x01
_080C712E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C7148:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C7156
	cmp r2, #0x04
	bne _080C7160
_080C7156:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C7160:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C7174
	cmp r2, #0x04
	bne _080C71B6
_080C7174:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C7182
	adds r0, #0xFF
_080C7182:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C7190
	adds r0, #0xFF
_080C7190:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C719E
	adds r0, #0xFF
_080C719E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080C71B6:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C71C4
	cmp r1, #0x04
	bne _080C7228
_080C71C4:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C71EC
	ldr r2, _080C71E8 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C71F8
	.byte 0x00, 0x00
_080C71E4: .4byte 0x0000204F
_080C71E8: .4byte 0x00002002
_080C71EC:
	ldr r2, _080C7248 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C71F8:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080C720E
	movs r2, #0x01
_080C720E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C7228:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C7236
	cmp r2, #0x04
	bne _080C7240
_080C7236:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080C7240:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7248: .4byte 0x0000204F
	thumb_func_start sub_80C724C
sub_80C724C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C72A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r6
	mov r8, r1
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	ldr r4, _080C72A4 @ =0x00000FFF
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x03
	bgt _080C72AC
	ldr r2, _080C72A8 @ =0x083B89F8
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080C733E
_080C72A0: .4byte 0x03000FD8
_080C72A4: .4byte 0x00000FFF
_080C72A8: .4byte 0x083B89F8
_080C72AC:
	ldr r5, _080C72D4 @ =0x083B8A00
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C72D8
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080C72F2
	.byte 0x00, 0x00
_080C72D4: .4byte 0x083B8A00
_080C72D8:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080C72F2:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C731E
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080C7338
_080C731E:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080C7338:
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0xB2
_080C733E:
	strh r1, [r0, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _080C734A
	adds r0, #0xFF
_080C734A:
	asrs r0, r0, #0x08
	subs r1, r0, #0x4
	mov r0, r8
	ldr r2, [r0, #0x14]
	cmp r2, #0x00
	bge _080C7358
	adds r2, #0xFF
_080C7358:
	asrs r2, r2, #0x08
	mov r0, r8
	ldr r3, [r0, #0x18]
	cmp r3, #0x00
	bge _080C7364
	adds r3, #0xFF
_080C7364:
	asrs r3, r3, #0x08
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r0, _080C7400 @ =0x00002FE6
	bl sub_80DF024
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C7384
	cmp r2, #0x04
	bne _080C73A0
_080C7384:
	ldr r2, _080C7404 @ =0x00002063
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C73A0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C73AE
	cmp r2, #0x04
	bne _080C73DE
_080C73AE:
	ldr r2, _080C7408 @ =0x03001038
	ldr r0, _080C740C @ =0x0819832C
	ldr r1, _080C7410 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x04
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C73DE:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C7414 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C7418 @ =0x080C741D
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C7400: .4byte 0x00002FE6
_080C7404: .4byte 0x00002063
_080C7408: .4byte 0x03001038
_080C740C: .4byte 0x0819832C
_080C7410: .4byte 0x08198220
_080C7414: .4byte 0x00000FFF
_080C7418: .4byte sub_80C741C
	thumb_func_start sub_80C741C
sub_80C741C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C750C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r6, r7, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	mov r1, r8
	ldr r5, [r1, #0x2C]
	bl sub_80884AC
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C7500
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C7462
	cmp r1, #0x04
	bne _080C74C4
_080C7462:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C746A
	adds r0, #0xFF
_080C746A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080C7484
	adds r0, #0xFF
_080C7484:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080C749C
	adds r3, #0xFF
_080C749C:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x15
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080C74C4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C74D6
	cmp r1, #0x04
	bne _080C74EE
_080C74D6:
	ldr r2, _080C7510 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C74EE:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C7514 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C7518 @ =0x080C751D
	mov r1, r8
	str r0, [r1, #0x4C]
_080C7500:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C750C: .4byte 0x03000FD8
_080C7510: .4byte 0x00002034
_080C7514: .4byte 0x00000FFF
_080C7518: .4byte sub_80C751C
	thumb_func_start sub_80C751C
sub_80C751C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C7644 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C7592
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7592:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C75A2
	b _080C7AE0
_080C75A2:
	mov r1, r12
	cmp r1, #0x00
	bge _080C75AA
	movs r1, #0x00
_080C75AA:
	ldr r0, _080C7648 @ =0x00007FFF
	cmp r1, r0
	ble _080C75B2
	adds r1, r0, #0x0
_080C75B2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C75C8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C75CA
_080C75C8:
	movs r2, #0x00
_080C75CA:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C76B0
	ldr r2, _080C7644 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C764C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C75FE
	movs r1, #0x33
_080C75F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C75F2
_080C75FE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7612
	movs r1, #0x33
_080C7606:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7606
_080C7612:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7626
	movs r1, #0x33
_080C761A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C761A
_080C7626:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C76A8
	movs r1, #0x03
_080C7630:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C763A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C763A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7630
	b _080C76A8
	.byte 0x00, 0x00
_080C7644: .4byte 0x03000FD8
_080C7648: .4byte 0x00007FFF
_080C764C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7662
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7656:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7656
_080C7662:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7678
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C766C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C766C
_080C7678:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C768E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7682:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7682
_080C768E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C76A8
	movs r1, #0x10
_080C7698:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C76A2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C76A2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7698
_080C76A8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C76B0:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C76BA
	movs r1, #0x00
_080C76BA:
	mov r3, r9
	cmp r3, #0x00
	bge _080C76C2
	movs r2, #0x00
_080C76C2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C76CC
	adds r1, r0, #0x0
_080C76CC:
	ldr r0, _080C77C4 @ =0x00007FFF
	cmp r2, r0
	ble _080C76D4
	adds r2, r0, #0x0
_080C76D4:
	cmp r2, r1
	bge _080C76DA
	adds r1, r2, #0x0
_080C76DA:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C76F2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C76F4
_080C76F2:
	movs r1, #0x00
_080C76F4:
	cmp r1, #0x00
	bne _080C76FA
	b _080C7846
_080C76FA:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C77C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C7718
	b _080C7846
_080C7718:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C77CC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C7832
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C77D0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C777A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C776E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C776E
_080C777A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7790
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7784:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7784
_080C7790:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C77A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C779A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C779A
_080C77A6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C782E
	movs r1, #0x10
_080C77B0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C77BA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C77BA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C77B0
	b _080C782E
	.byte 0x00, 0x00
_080C77C4: .4byte 0x00007FFF
_080C77C8: .4byte 0x0300034C
_080C77CC: .4byte 0x03000FD8
_080C77D0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C77E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C77DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C77DC
_080C77E8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C77FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C77F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C77F2
_080C77FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7814
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7808:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7808
_080C7814:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C782E
	movs r1, #0x10
_080C781E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7828
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7828:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C781E
_080C782E:
	bl sub_807F448
_080C7832:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C791C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C7846:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C7852
	b _080C7AE0
_080C7852:
	mov r1, r9
	cmp r1, #0x00
	bge _080C785A
	movs r1, #0x00
_080C785A:
	ldr r0, _080C7920 @ =0x00007FFF
	cmp r1, r0
	ble _080C7862
	adds r1, r0, #0x0
_080C7862:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C787A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C787C
_080C787A:
	movs r2, #0x00
_080C787C:
	cmp r2, #0x00
	bne _080C7882
	b _080C7990
_080C7882:
	ldr r3, _080C7924 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C791C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7928
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C78D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78C6
_080C78D2:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C78E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78DC
_080C78E8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C78FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78F2
_080C78FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7984
	movs r1, #0x10
_080C7908:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7912
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7912:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7908
	b _080C7984
	.byte 0x00, 0x00
_080C791C: .4byte 0x00000FFF
_080C7920: .4byte 0x00007FFF
_080C7924: .4byte 0x03000FD8
_080C7928:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C793E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7932:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7932
_080C793E:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7954
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7948:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7948
_080C7954:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C796A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C795E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C795E
_080C796A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7984
	movs r1, #0x10
_080C7974:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C797E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C797E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7974
_080C7984:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C7AE0
_080C7990:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C799C
	b _080C7AE0
_080C799C:
	ldr r0, _080C7A60 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C79B2
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C79B2
	b _080C7AE0
_080C79B2:
	ldr r2, _080C7A64 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C79E2
	b _080C7AE0
_080C79E2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C7A68 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7A6C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7A16
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A0A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A0A
_080C7A16:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7A2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A20
_080C7A2C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7A42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A36
_080C7A42:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7AC8
	movs r1, #0x10
_080C7A4C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7A56
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7A56:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7A4C
	b _080C7AC8
	.byte 0x00, 0x00
_080C7A60: .4byte 0x0300034C
_080C7A64: .4byte 0x03000FD8
_080C7A68: .4byte 0x00000FFF
_080C7A6C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A76
_080C7A82:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A8C
_080C7A98:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7AAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7AA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7AA2
_080C7AAE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7AC8
	movs r1, #0x10
_080C7AB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7AC2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7AC2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7AB8
_080C7AC8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C7AE0:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C7B58
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C7AF6
	movs r1, #0x00
_080C7AF6:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C7B00
	adds r2, r0, #0x0
_080C7B00:
	ldr r0, _080C7B4C @ =0x00007FFF
	cmp r1, r0
	ble _080C7B08
	adds r1, r0, #0x0
_080C7B08:
	cmp r1, r2
	bge _080C7B0E
	adds r2, r1, #0x0
_080C7B0E:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C7B28
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C7B2A
_080C7B28:
	movs r2, #0x00
_080C7B2A:
	cmp r2, #0x00
	beq _080C7B58
	cmp r3, #0x01
	ble _080C7B58
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C7B50 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C7B54 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C7BA0
	.byte 0x00, 0x00
_080C7B4C: .4byte 0x00007FFF
_080C7B50: .4byte 0x00000FFF
_080C7B54: .4byte sub_80C65BC
_080C7B58:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7BA0
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C7B76
	cmp r1, #0x04
	bne _080C7B8E
_080C7B76:
	ldr r2, _080C7BB0 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C7B8E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C7BB4 @ =0x00000FFF
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	ldr r0, _080C7BB8 @ =0x080C7BBD
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C7BA0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7BB0: .4byte 0x00002034
_080C7BB4: .4byte 0x00000FFF
_080C7BB8: .4byte sub_80C7BBC
	thumb_func_start sub_80C7BBC
sub_80C7BBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C7CE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C7C32
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7C32:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C7C42
	b _080C8180
_080C7C42:
	mov r1, r12
	cmp r1, #0x00
	bge _080C7C4A
	movs r1, #0x00
_080C7C4A:
	ldr r0, _080C7CE8 @ =0x00007FFF
	cmp r1, r0
	ble _080C7C52
	adds r1, r0, #0x0
_080C7C52:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C7C68
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C7C6A
_080C7C68:
	movs r2, #0x00
_080C7C6A:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C7D50
	ldr r2, _080C7CE4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C7CEC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7C9E
	movs r1, #0x33
_080C7C92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7C92
_080C7C9E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7CB2
	movs r1, #0x33
_080C7CA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CA6
_080C7CB2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7CC6
	movs r1, #0x33
_080C7CBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CBA
_080C7CC6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7D48
	movs r1, #0x03
_080C7CD0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7CDA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7CDA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7CD0
	b _080C7D48
	.byte 0x00, 0x00
_080C7CE4: .4byte 0x03000FD8
_080C7CE8: .4byte 0x00007FFF
_080C7CEC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CF6
_080C7D02:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7D18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7D0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7D0C
_080C7D18:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7D2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7D22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7D22
_080C7D2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7D48
	movs r1, #0x10
_080C7D38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7D42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7D42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7D38
_080C7D48:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C7D50:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C7D5A
	movs r1, #0x00
_080C7D5A:
	mov r3, r9
	cmp r3, #0x00
	bge _080C7D62
	movs r2, #0x00
_080C7D62:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C7D6C
	adds r1, r0, #0x0
_080C7D6C:
	ldr r0, _080C7E64 @ =0x00007FFF
	cmp r2, r0
	ble _080C7D74
	adds r2, r0, #0x0
_080C7D74:
	cmp r2, r1
	bge _080C7D7A
	adds r1, r2, #0x0
_080C7D7A:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C7D92
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C7D94
_080C7D92:
	movs r1, #0x00
_080C7D94:
	cmp r1, #0x00
	bne _080C7D9A
	b _080C7EE6
_080C7D9A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C7E68 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C7DB8
	b _080C7EE6
_080C7DB8:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C7E6C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C7ED2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7E70
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C7E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E0E
_080C7E1A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7E30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E24
_080C7E30:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7E46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E3A
_080C7E46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7ECE
	movs r1, #0x10
_080C7E50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7E5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7E5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7E50
	b _080C7ECE
	.byte 0x00, 0x00
_080C7E64: .4byte 0x00007FFF
_080C7E68: .4byte 0x0300034C
_080C7E6C: .4byte 0x03000FD8
_080C7E70:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C7E88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E7C
_080C7E88:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7E9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E92
_080C7E9E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7EB4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7EA8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7EA8
_080C7EB4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7ECE
	movs r1, #0x10
_080C7EBE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7EC8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7EC8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7EBE
_080C7ECE:
	bl sub_807F448
_080C7ED2:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C7FBC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C7EE6:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C7EF2
	b _080C8180
_080C7EF2:
	mov r1, r9
	cmp r1, #0x00
	bge _080C7EFA
	movs r1, #0x00
_080C7EFA:
	ldr r0, _080C7FC0 @ =0x00007FFF
	cmp r1, r0
	ble _080C7F02
	adds r1, r0, #0x0
_080C7F02:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C7F1A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C7F1C
_080C7F1A:
	movs r2, #0x00
_080C7F1C:
	cmp r2, #0x00
	bne _080C7F22
	b _080C8030
_080C7F22:
	ldr r3, _080C7FC4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C7FBC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7FC8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7F72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F66
_080C7F72:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7F88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F7C
_080C7F88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7F9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F92
_080C7F9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8024
	movs r1, #0x10
_080C7FA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7FB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7FB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7FA8
	b _080C8024
	.byte 0x00, 0x00
_080C7FBC: .4byte 0x00000FFF
_080C7FC0: .4byte 0x00007FFF
_080C7FC4: .4byte 0x03000FD8
_080C7FC8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7FDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FD2
_080C7FDE:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7FF4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FE8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FE8
_080C7FF4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C800A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FFE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FFE
_080C800A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8024
	movs r1, #0x10
_080C8014:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C801E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C801E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8014
_080C8024:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C8180
_080C8030:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C803C
	b _080C8180
_080C803C:
	ldr r0, _080C8100 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C8052
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C8052
	b _080C8180
_080C8052:
	ldr r2, _080C8104 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C8082
	b _080C8180
_080C8082:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C8108 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C810C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C80B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80AA
_080C80B6:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C80CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80C0
_080C80CC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C80E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80D6
_080C80E2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8168
	movs r1, #0x10
_080C80EC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C80F6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C80F6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C80EC
	b _080C8168
	.byte 0x00, 0x00
_080C8100: .4byte 0x0300034C
_080C8104: .4byte 0x03000FD8
_080C8108: .4byte 0x00000FFF
_080C810C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8122
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8116:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8116
_080C8122:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C8138
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C812C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C812C
_080C8138:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C814E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8142:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8142
_080C814E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8168
	movs r1, #0x10
_080C8158:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8162
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8162:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8158
_080C8168:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C8180:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C81F8
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C8196
	movs r1, #0x00
_080C8196:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C81A0
	adds r2, r0, #0x0
_080C81A0:
	ldr r0, _080C81EC @ =0x00007FFF
	cmp r1, r0
	ble _080C81A8
	adds r1, r0, #0x0
_080C81A8:
	cmp r1, r2
	bge _080C81AE
	adds r2, r1, #0x0
_080C81AE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C81C8
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C81CA
_080C81C8:
	movs r2, #0x00
_080C81CA:
	cmp r2, #0x00
	beq _080C81F8
	cmp r3, #0x01
	ble _080C81F8
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C81F0 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C81F4 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C828E
	.byte 0x00, 0x00
_080C81EC: .4byte 0x00007FFF
_080C81F0: .4byte 0x00000FFF
_080C81F4: .4byte sub_80C65BC
_080C81F8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C828E
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C82A0 @ =0x0403048B
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C8250
	ldr r3, _080C82A4 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C8288
_080C8250:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C8258
	adds r0, #0xFF
_080C8258:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x4
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C8270
	adds r2, #0xFF
_080C8270:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C82A8 @ =0x0000070B
	str r6, [sp, #0x000]
	movs r3, #0x18
	bl sub_80DF024
_080C8288:
	ldr r0, _080C82AC @ =0x080C8609
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080C828E:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C82A0: .4byte 0x0403048B
_080C82A4: .4byte 0x00000111
_080C82A8: .4byte 0x0000070B
_080C82AC: .4byte sub_80C8608
	thumb_func_start sub_80C82B0
sub_80C82B0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080C8370 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8368
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C82DE
	cmp r1, #0x04
	bne _080C82F6
_080C82DE:
	ldr r2, _080C8374 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C82F6:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8308
	cmp r1, #0x04
	bne _080C8364
_080C8308:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8316
	adds r0, #0xFF
_080C8316:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8328
	adds r0, #0xFF
_080C8328:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C833A
	adds r0, #0xFF
_080C833A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C8350
	adds r0, #0xFF
_080C8350:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C8364:
	ldr r0, _080C8378 @ =0x080C837D
	str r0, [r5, #0x4C]
_080C8368:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080C8370: .4byte 0x03000FD8
_080C8374: .4byte 0x00002034
_080C8378: .4byte sub_80C837C
	thumb_func_start sub_80C837C
sub_80C837C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C840C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C8402
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C83B2
	adds r1, #0xFF
_080C83B2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C83BC
	adds r2, #0xFF
_080C83BC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C83C6
	adds r3, #0xFF
_080C83C6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C83E2
	cmp r1, #0x04
	bne _080C83FE
_080C83E2:
	ldr r2, _080C8410 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C83FE:
	ldr r0, _080C8414 @ =0x080C8419
	str r0, [r6, #0x4C]
_080C8402:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C840C: .4byte 0x03000FD8
_080C8410: .4byte 0x00002034
_080C8414: .4byte sub_80C8418
	thumb_func_start sub_80C8418
sub_80C8418:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C84C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C843A
	b _080C85FC
_080C843A:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C844C
	cmp r1, #0x04
	bne _080C848E
_080C844C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C845A
	adds r0, #0xFF
_080C845A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8468
	adds r0, #0xFF
_080C8468:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8476
	adds r0, #0xFF
_080C8476:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C848E:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C84A2
	cmp r2, #0x04
	bne _080C8504
_080C84A2:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C84C8
	ldr r2, _080C84C4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C84D4
_080C84C0: .4byte 0x03000FD8
_080C84C4: .4byte 0x00002002
_080C84C8:
	ldr r2, _080C85A0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C84D4:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C84EA
	movs r2, #0x01
_080C84EA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C8504:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C8512
	cmp r2, #0x04
	bne _080C851C
_080C8512:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C851C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C8530
	cmp r2, #0x04
	bne _080C8572
_080C8530:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C853E
	adds r0, #0xFF
_080C853E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C854C
	adds r0, #0xFF
_080C854C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C855A
	adds r0, #0xFF
_080C855A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C8572:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8580
	cmp r1, #0x04
	bne _080C85E4
_080C8580:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C85A8
	ldr r2, _080C85A4 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C85B4
	.byte 0x00, 0x00
_080C85A0: .4byte 0x0000204F
_080C85A4: .4byte 0x00002002
_080C85A8:
	ldr r2, _080C8604 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C85B4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C85CA
	movs r2, #0x01
_080C85CA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C85E4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C85F2
	cmp r2, #0x04
	bne _080C85FC
_080C85F2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C85FC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C8604: .4byte 0x0000204F
	thumb_func_start sub_80C8608
sub_80C8608:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C8674 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r3, [r6, #0x2C]
	ldr r0, [r3, #0x28]
	ldr r1, _080C8678 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080C863A
	adds r0, r3, #0x0
	bl sub_8086700
_080C863A:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C864C
	cmp r1, #0x04
	bne _080C8668
_080C864C:
	ldr r2, _080C867C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C8668:
	ldr r0, _080C8680 @ =0x080C82B1
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C8674: .4byte 0x03000FD8
_080C8678: .4byte 0x00000111
_080C867C: .4byte 0x00002034
_080C8680: .4byte sub_80C82B0
