	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80D3FD4
sub_80D3FD4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D404C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4008
	cmp r1, #0x04
	bne _080D4024
_080D4008:
	ldr r2, _080D4050 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x01
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
_080D4024:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D4042
	ldr r2, _080D4054 @ =0x00002095
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4042:
	ldr r0, _080D4058 @ =0x080D405D
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D404C: .4byte 0x03000FD8
_080D4050: .4byte 0x00002066
_080D4054: .4byte 0x00002095
_080D4058: .4byte sub_80D405C
	thumb_func_start sub_80D405C
sub_80D405C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D414C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D4084
	b _080D41BA
_080D4084:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D40A0
	cmp r1, #0x04
	bne _080D40BC
_080D40A0:
	ldr r2, _080D4150 @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x02
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
_080D40BC:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D40DA
	ldr r2, _080D4154 @ =0x00002095
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D40DA:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D40EC
	cmp r1, #0x04
	bne _080D41A8
_080D40EC:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D40F4
	adds r1, #0xFF
_080D40F4:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080D410A
	adds r0, #0xFF
_080D410A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080D4120
	adds r3, #0xFF
_080D4120:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x0C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D4158
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D4168
_080D414C: .4byte 0x03000FD8
_080D4150: .4byte 0x00002066
_080D4154: .4byte 0x00002095
_080D4158:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D4168:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D4170
	adds r0, #0xFF
_080D4170:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D41C8 @ =0x03001038
	ldr r0, _080D41CC @ =0x0819832C
	ldr r1, _080D41D0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D418E
	adds r1, #0x3F
_080D418E:
	asrs r1, r1, #0x06
	adds r1, #0x20
	adds r0, r5, #0x0
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8088164
_080D41A8:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D41D4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D41D8 @ =0x080D41DD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D41BA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D41C8: .4byte 0x03001038
_080D41CC: .4byte 0x0819832C
_080D41D0: .4byte 0x08198220
_080D41D4: .4byte 0x00000FFF
_080D41D8: .4byte sub_80D41DC
	thumb_func_start sub_80D41DC
sub_80D41DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080D4334 @ =0x03000FD8
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r1, [sp, #0x004]
	ldr r7, [r1, #0x2C]
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r10, r2
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	mov r3, r8
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	mov r12, r0
	ands r0, r1
	cmp r0, #0x00
	bne _080D422C
	b _080D48A8
_080D422C:
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r3, r0, r3
	str r3, [sp, #0x00C]
	str r3, [sp, #0x008]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080D4270
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D4270:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080D4280
	b _080D47FC
_080D4280:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0A]
	mov r0, r12
	ands r0, r1
	mov r8, r3
	cmp r0, #0x00
	bne _080D4292
	b _080D43A0
_080D4292:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D429A
	movs r1, #0x00
_080D429A:
	ldr r0, _080D4338 @ =0x00007FFF
	cmp r1, r0
	ble _080D42A2
	adds r1, r0, #0x0
_080D42A2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D42BA
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D42BC
_080D42BA:
	movs r2, #0x00
_080D42BC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r9, r1
	cmp r2, #0x00
	beq _080D43A0
	ldr r2, _080D4334 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D433C
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D42F0
	movs r1, #0x4C
_080D42E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D42E4
_080D42F0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4304
	movs r1, #0x4C
_080D42F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D42F8
_080D4304:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4318
	movs r1, #0x4C
_080D430C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D430C
_080D4318:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4398
	movs r1, #0x04
_080D4322:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D432C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D432C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4322
	b _080D4398
_080D4334: .4byte 0x03000FD8
_080D4338: .4byte 0x00007FFF
_080D433C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4352
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4346:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4346
_080D4352:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4368
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D435C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D435C
_080D4368:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D437E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4372:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4372
_080D437E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4398
	movs r1, #0x10
_080D4388:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4392
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4392:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4388
_080D4398:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D43A0:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080D43AA
	movs r1, #0x00
_080D43AA:
	mov r3, r10
	cmp r3, #0x00
	bge _080D43B2
	movs r2, #0x00
_080D43B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D43BC
	adds r1, r0, #0x0
_080D43BC:
	ldr r0, _080D440C @ =0x00007FFF
	cmp r2, r0
	ble _080D43C4
	adds r2, r0, #0x0
_080D43C4:
	cmp r2, r1
	bge _080D43CA
	adds r1, r2, #0x0
_080D43CA:
	mov r4, r8
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D43E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D43E4
_080D43E2:
	movs r1, #0x00
_080D43E4:
	cmp r1, #0x00
	bne _080D43EA
	b _080D4562
_080D43EA:
	ldr r0, _080D4410 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080D4414
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_807E680
	b _080D442C
_080D440C: .4byte 0x00007FFF
_080D4410: .4byte 0x03000FD8
_080D4414:
	cmp r1, #0x40
	bne _080D442C
	movs r1, #0xFF
	lsls r1, r1, #0x18
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_807E680
_080D442C:
	ldr r0, _080D44E4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D443A
	b _080D4562
_080D443A:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	movs r2, #0x08
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080D44E8 @ =0x03000FD8
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
	bne _080D454E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D44EC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D449C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4490:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4490
_080D449C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D44B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44A6
_080D44B2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D44C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44BC
_080D44C8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D454A
	movs r1, #0x10
_080D44D2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D44DC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D44DC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D44D2
	b _080D454A
_080D44E4: .4byte 0x0300034C
_080D44E8: .4byte 0x03000FD8
_080D44EC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4504
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44F8
_080D4504:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D451A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D450E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D450E
_080D451A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4530
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4524:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4524
_080D4530:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D454A
	movs r1, #0x10
_080D453A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4544
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4544:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D453A
_080D454A:
	bl sub_807F448
_080D454E:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080D4638 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080D4562:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D456E
	b _080D47FC
_080D456E:
	mov r1, r10
	cmp r1, #0x00
	bge _080D4576
	movs r1, #0x00
_080D4576:
	ldr r0, _080D463C @ =0x00007FFF
	cmp r1, r0
	ble _080D457E
	adds r1, r0, #0x0
_080D457E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4596
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4598
_080D4596:
	movs r2, #0x00
_080D4598:
	cmp r2, #0x00
	bne _080D459E
	b _080D46AC
_080D459E:
	ldr r3, _080D4640 @ =0x03000FD8
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
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4638 @ =0x00000FFF
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
	beq _080D4644
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D45EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D45E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D45E2
_080D45EE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D45F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D45F8
_080D4604:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D461A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D460E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D460E
_080D461A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D46A0
	movs r1, #0x10
_080D4624:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D462E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D462E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4624
	b _080D46A0
	.byte 0x00, 0x00
_080D4638: .4byte 0x00000FFF
_080D463C: .4byte 0x00007FFF
_080D4640: .4byte 0x03000FD8
_080D4644:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D465A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D464E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D464E
_080D465A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4670
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4664:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4664
_080D4670:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D4686
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D467A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D467A
_080D4686:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D46A0
	movs r1, #0x10
_080D4690:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D469A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D469A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4690
_080D46A0:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080D47FC
_080D46AC:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080D46B8
	b _080D47FC
_080D46B8:
	ldr r0, _080D477C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D46CE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D46CE
	b _080D47FC
_080D46CE:
	ldr r2, _080D4780 @ =0x03000FD8
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
	beq _080D46FE
	b _080D47FC
_080D46FE:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4784 @ =0x00000FFF
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
	beq _080D4788
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4732
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4726:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4726
_080D4732:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4748
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D473C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D473C
_080D4748:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D475E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4752:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4752
_080D475E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D47E4
	movs r1, #0x10
_080D4768:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4772
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4772:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4768
	b _080D47E4
	.byte 0x00, 0x00
_080D477C: .4byte 0x0300034C
_080D4780: .4byte 0x03000FD8
_080D4784: .4byte 0x00000FFF
_080D4788:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D479E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4792:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4792
_080D479E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D47B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D47A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D47A8
_080D47B4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D47CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D47BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D47BE
_080D47CA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D47E4
	movs r1, #0x10
_080D47D4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D47DE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D47DE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D47D4
_080D47E4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x08
	bl sub_807EAE4
_080D47FC:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D4878
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080D4810
	movs r1, #0x00
_080D4810:
	mov r4, r10
	cmp r4, #0x00
	bge _080D4818
	movs r2, #0x00
_080D4818:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D4822
	adds r1, r0, #0x0
_080D4822:
	ldr r0, _080D486C @ =0x00007FFF
	cmp r2, r0
	ble _080D482A
	adds r2, r0, #0x0
_080D482A:
	cmp r2, r1
	bge _080D4830
	adds r1, r2, #0x0
_080D4830:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D484A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D484C
_080D484A:
	movs r1, #0x00
_080D484C:
	cmp r1, #0x00
	beq _080D4878
	cmp r3, #0x01
	ble _080D4878
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080D4870 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D4874 @ =0x080D68B5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D48BA
_080D486C: .4byte 0x00007FFF
_080D4870: .4byte 0x00000FFF
_080D4874: .4byte sub_80D68B4
_080D4878:
	mov r1, r10
	cmp r1, #0x00
	bge _080D4880
	movs r1, #0x00
_080D4880:
	ldr r0, _080D48CC @ =0x00007FFF
	cmp r1, r0
	ble _080D4888
	adds r1, r0, #0x0
_080D4888:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D48A2
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D48A4
_080D48A2:
	movs r2, #0x00
_080D48A4:
	cmp r2, #0x00
	beq _080D48BA
_080D48A8:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D48D0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D48D4 @ =0x080D48D9
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D48BA:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D48CC: .4byte 0x00007FFF
_080D48D0: .4byte 0x00000FFF
_080D48D4: .4byte sub_80D48D8
	thumb_func_start sub_80D48D8
sub_80D48D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080D49FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x03
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r0, r0, #0x02
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x00C]
	str r2, [sp, #0x008]
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080D494A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D494A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D495A
	b _080D4E86
_080D495A:
	mov r1, r12
	cmp r1, #0x00
	bge _080D4962
	movs r1, #0x00
_080D4962:
	ldr r0, _080D4A00 @ =0x00007FFF
	cmp r1, r0
	ble _080D496A
	adds r1, r0, #0x0
_080D496A:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4980
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4982
_080D4980:
	movs r2, #0x00
_080D4982:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080D4A68
	ldr r2, _080D49FC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D4A04
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D49B6
	movs r1, #0x4C
_080D49AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49AA
_080D49B6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D49CA
	movs r1, #0x4C
_080D49BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49BE
_080D49CA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D49DE
	movs r1, #0x4C
_080D49D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49D2
_080D49DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4A60
	movs r1, #0x04
_080D49E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D49F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D49F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D49E8
	b _080D4A60
	.byte 0x00, 0x00
_080D49FC: .4byte 0x03000FD8
_080D4A00: .4byte 0x00007FFF
_080D4A04:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4A1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A0E
_080D4A1A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4A30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A24
_080D4A30:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4A46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A3A
_080D4A46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4A60
	movs r1, #0x10
_080D4A50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4A5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4A5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4A50
_080D4A60:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D4A68:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080D4A72
	movs r1, #0x00
_080D4A72:
	mov r3, r9
	cmp r3, #0x00
	bge _080D4A7A
	movs r2, #0x00
_080D4A7A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D4A84
	adds r1, r0, #0x0
_080D4A84:
	ldr r0, _080D4B78 @ =0x00007FFF
	cmp r2, r0
	ble _080D4A8C
	adds r2, r0, #0x0
_080D4A8C:
	cmp r2, r1
	bge _080D4A92
	adds r1, r2, #0x0
_080D4A92:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D4AAA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D4AAC
_080D4AAA:
	movs r1, #0x00
_080D4AAC:
	cmp r1, #0x00
	bne _080D4AB2
	b _080D4BFA
_080D4AB2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D4B7C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D4AD0
	b _080D4BFA
_080D4AD0:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D4B80 @ =0x03000FD8
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
	bne _080D4BE6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4B84
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4B30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B24
_080D4B30:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4B46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B3A
_080D4B46:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4B5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B50
_080D4B5C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4BE2
	movs r1, #0x10
_080D4B66:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4B70
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4B70:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4B66
	b _080D4BE2
_080D4B78: .4byte 0x00007FFF
_080D4B7C: .4byte 0x0300034C
_080D4B80: .4byte 0x03000FD8
_080D4B84:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4B9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B90
_080D4B9C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4BB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4BA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4BA6
_080D4BB2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4BC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4BBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4BBC
_080D4BC8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4BE2
	movs r1, #0x10
_080D4BD2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4BDC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4BDC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4BD2
_080D4BE2:
	bl sub_807F448
_080D4BE6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080D4CD0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080D4BFA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D4C06
	b _080D4E86
_080D4C06:
	mov r1, r9
	cmp r1, #0x00
	bge _080D4C0E
	movs r1, #0x00
_080D4C0E:
	ldr r0, _080D4CD4 @ =0x00007FFF
	cmp r1, r0
	ble _080D4C16
	adds r1, r0, #0x0
_080D4C16:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4C2E
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4C30
_080D4C2E:
	movs r2, #0x00
_080D4C30:
	cmp r2, #0x00
	bne _080D4C36
	b _080D4D44
_080D4C36:
	ldr r3, _080D4CD8 @ =0x03000FD8
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
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4CD0 @ =0x00000FFF
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
	beq _080D4CDC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4C86
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4C7A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4C7A
_080D4C86:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4C9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4C90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4C90
_080D4C9C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4CB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CA6
_080D4CB2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4D38
	movs r1, #0x10
_080D4CBC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4CC6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4CC6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4CBC
	b _080D4D38
	.byte 0x00, 0x00
_080D4CD0: .4byte 0x00000FFF
_080D4CD4: .4byte 0x00007FFF
_080D4CD8: .4byte 0x03000FD8
_080D4CDC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4CF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CE6
_080D4CF2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4D08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CFC
_080D4D08:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4D1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4D12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4D12
_080D4D1E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4D38
	movs r1, #0x10
_080D4D28:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4D32
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4D32:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4D28
_080D4D38:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D4E86
_080D4D44:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080D4D50
	b _080D4E86
_080D4D50:
	ldr r0, _080D4E08 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D4D5E
	b _080D4E86
_080D4D5E:
	ldr r2, _080D4E0C @ =0x03000FD8
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
	bne _080D4E86
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4E10 @ =0x00000FFF
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
	beq _080D4E14
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4DC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DB4
_080D4DC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4DD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DCA
_080D4DD6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4DEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DE0
_080D4DEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4E70
	movs r1, #0x10
_080D4DF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4E00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4E00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4DF6
	b _080D4E70
_080D4E08: .4byte 0x0300034C
_080D4E0C: .4byte 0x03000FD8
_080D4E10: .4byte 0x00000FFF
_080D4E14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4E2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E1E
_080D4E2A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4E40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E34
_080D4E40:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4E56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E4A
_080D4E56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4E70
	movs r1, #0x10
_080D4E60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4E6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4E6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4E60
_080D4E70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D4E86:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D4F00
	ldr r2, [sp, #0x00C]
	mov r1, r9
	cmp r2, #0x00
	bge _080D4E9A
	movs r2, #0x00
_080D4E9A:
	cmp r1, #0x00
	bge _080D4EA0
	movs r1, #0x00
_080D4EA0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D4EAA
	adds r2, r0, #0x0
_080D4EAA:
	ldr r0, _080D4EF4 @ =0x00007FFF
	cmp r1, r0
	ble _080D4EB2
	adds r1, r0, #0x0
_080D4EB2:
	cmp r1, r2
	bge _080D4EB8
	adds r2, r1, #0x0
_080D4EB8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D4ED2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080D4ED4
_080D4ED2:
	movs r2, #0x00
_080D4ED4:
	cmp r2, #0x00
	beq _080D4F00
	cmp r3, #0x01
	ble _080D4F00
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080D4EF8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080D4EFC @ =0x080D55F9
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D512E
_080D4EF4: .4byte 0x00007FFF
_080D4EF8: .4byte 0x00000FFF
_080D4EFC: .4byte sub_80D55F8
_080D4F00:
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080D4FC8
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r2, [r6, #0x18]
	adds r2, r2, r1
	adds r4, r0, #0x0
	cmp r3, r2
	bge _080D4FC8
	ldr r0, [r6, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080D4FA0
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4F3C
	cmp r1, #0x04
	bne _080D4F58
_080D4F3C:
	ldr r2, _080D50C0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080D4F58:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D4F76
	ldr r2, _080D50C4 @ =0x00002095
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4F76:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4F88
	cmp r1, #0x04
	bne _080D4FA0
_080D4F88:
	ldr r2, _080D50C8 @ =0x00002037
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4FA0:
	ldr r2, _080D50CC @ =0x03001038
	ldr r0, _080D50D0 @ =0x0819832C
	ldr r1, _080D50D4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, [r5, #0x18]
	ldr r1, [r6, #0x18]
	cmp r1, #0x00
	bge _080D4FB6
	adds r1, #0xFF
_080D4FB6:
	asrs r1, r1, #0x08
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r1, r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080D4FC8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D4FD8
	b _080D512E
_080D4FD8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D4FF6
	cmp r2, #0x04
	bne _080D5012
_080D4FF6:
	ldr r2, _080D50C0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x04
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
_080D5012:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5030
	ldr r2, _080D50C4 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5030:
	ldr r3, [r5, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r3, #0x12]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r0, [r2, #0x12]
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x12]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D505C
	cmp r2, #0x04
	bne _080D5128
_080D505C:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080D5064
	adds r0, #0xFF
_080D5064:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r6, r0, #0x0
	subs r6, #0x10
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080D507E
	adds r0, #0xFF
_080D507E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080D5094
	adds r3, #0xFF
_080D5094:
	asrs r3, r3, #0x08
	adds r4, r7, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_808843C
	ldr r0, [r7, #0x28]
	adds r0, #0x08
	cmp r7, r0
	bne _080D50D8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D50E8
	.byte 0x00, 0x00
_080D50C0: .4byte 0x00002066
_080D50C4: .4byte 0x00002095
_080D50C8: .4byte 0x00002037
_080D50CC: .4byte 0x03001038
_080D50D0: .4byte 0x0819832C
_080D50D4: .4byte 0x08198220
_080D50D8:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r7, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D50E8:
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _080D50F0
	adds r0, #0xFF
_080D50F0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D5140 @ =0x03001038
	ldr r0, _080D5144 @ =0x0819832C
	ldr r1, _080D5148 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D510A
	adds r1, #0x3F
_080D510A:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D5128:
	ldr r0, _080D514C @ =0x080D5151
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D512E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D5140: .4byte 0x03001038
_080D5144: .4byte 0x0819832C
_080D5148: .4byte 0x08198220
_080D514C: .4byte sub_80D5150
	thumb_func_start sub_80D5150
sub_80D5150:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D52D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r5, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D51DC
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x08]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	cmp r0, #0xFF
	ble _080D51DC
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D51B6
	cmp r1, #0x04
	bne _080D51DC
_080D51B6:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D51DC:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D52CC
	ldr r0, [r4, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D52DC @ =0x0483818D
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r4, #0x24]
	adds r0, #0x01
	strh r0, [r4, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bgt _080D5244
	ldr r2, _080D52E0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D527A
_080D5244:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D524C
	adds r1, #0xFF
_080D524C:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D5262
	adds r2, #0xFF
_080D5262:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D52E4 @ =0x000006C4
	str r6, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D527A:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D528C
	cmp r1, #0x04
	bne _080D52A8
_080D528C:
	ldr r2, _080D52E8 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x05
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
_080D52A8:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D52C6
	ldr r2, _080D52EC @ =0x00002095
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D52C6:
	ldr r0, _080D52F0 @ =0x080D52F5
	mov r3, r8
	str r0, [r3, #0x4C]
_080D52CC:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D52D8: .4byte 0x03000FD8
_080D52DC: .4byte 0x0483818D
_080D52E0: .4byte 0x00000111
_080D52E4: .4byte 0x000006C4
_080D52E8: .4byte 0x00002066
_080D52EC: .4byte 0x00002095
_080D52F0: .4byte sub_80D52F4
	thumb_func_start sub_80D52F4
sub_80D52F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D53E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D53E0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D532C
	cmp r1, #0x04
	bne _080D5348
_080D532C:
	ldr r2, _080D53EC @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x06
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
_080D5348:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D5366
	ldr r2, _080D53F0 @ =0x00002095
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5366:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5378
	cmp r1, #0x04
	bne _080D53D2
_080D5378:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D5380
	adds r0, #0xFF
_080D5380:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D539A
	adds r2, #0xFF
_080D539A:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080D53BE
	adds r0, #0xFF
_080D53BE:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D53D2:
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0xBA
	lsls r1, r1, #0x02
	strh r1, [r0, #0x00]
	ldr r0, _080D53F4 @ =0x080D53F9
	str r0, [r6, #0x4C]
_080D53E0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D53E8: .4byte 0x03000FD8
_080D53EC: .4byte 0x00002066
_080D53F0: .4byte 0x00002095
_080D53F4: .4byte sub_80D53F8
	thumb_func_start sub_80D53F8
sub_80D53F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D54B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D5420
	b _080D55EC
_080D5420:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D543E
	cmp r1, #0x04
	bne _080D547C
_080D543E:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D544C
	adds r0, #0xFF
_080D544C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D545A
	adds r0, #0xFF
_080D545A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D5468
	adds r0, #0xFF
_080D5468:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D547C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5490
	cmp r2, #0x04
	bne _080D54F4
_080D5490:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D54B8
	ldr r2, _080D54B4 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D54C4
	.byte 0x00, 0x00
_080D54B0: .4byte 0x03000FD8
_080D54B4: .4byte 0x00002002
_080D54B8:
	ldr r2, _080D5590 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D54C4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D54DA
	movs r2, #0x01
_080D54DA:
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
_080D54F4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D5502
	cmp r2, #0x04
	bne _080D550C
_080D5502:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D550C:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5520
	cmp r2, #0x04
	bne _080D5562
_080D5520:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D552E
	adds r0, #0xFF
_080D552E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D553C
	adds r0, #0xFF
_080D553C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D554A
	adds r0, #0xFF
_080D554A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D5562:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5570
	cmp r1, #0x04
	bne _080D55D4
_080D5570:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D5598
	ldr r2, _080D5594 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D55A4
	.byte 0x00, 0x00
_080D5590: .4byte 0x0000204F
_080D5594: .4byte 0x00002002
_080D5598:
	ldr r2, _080D55F4 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D55A4:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D55BA
	movs r2, #0x01
_080D55BA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D55D4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D55E2
	cmp r2, #0x04
	bne _080D55EC
_080D55E2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D55EC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D55F4: .4byte 0x0000204F
	thumb_func_start sub_80D55F8
sub_80D55F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D5704 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080D5610
	adds r1, #0xFF
_080D5610:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080D561A
	adds r2, #0xFF
_080D561A:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080D5624
	adds r3, #0xFF
_080D5624:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080D5708 @ =0x00002F7D
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5640
	cmp r1, #0x04
	bne _080D565C
_080D5640:
	ldr r2, _080D570C @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x04
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
_080D565C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D567A
	ldr r2, _080D5710 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D567A:
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D569E
	cmp r1, #0x04
	bne _080D56EC
_080D569E:
	ldr r5, _080D5704 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xA0
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x73
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x55
	bl sub_808843C
	movs r0, #0x5C
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080D5714 @ =0x00000433
	adds r0, r6, #0x0
	bl sub_8088164
_080D56EC:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D5718 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D571C @ =0x080D5721
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D5704: .4byte 0x03000FD8
_080D5708: .4byte 0x00002F7D
_080D570C: .4byte 0x00002066
_080D5710: .4byte 0x00002095
_080D5714: .4byte 0x00000433
_080D5718: .4byte 0x00000FFF
_080D571C: .4byte sub_80D5720
	thumb_func_start sub_80D5720
sub_80D5720:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080D58A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D57B0
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r6, #0x08]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	cmp r0, #0xFF
	ble _080D57B0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D578A
	cmp r1, #0x04
	bne _080D57B0
_080D578A:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D57B0:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	negs r0, r0
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r3, r0, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r0, r2, r0
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	mov r9, r0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mov r10, r0
	cmp r1, r9
	bge _080D57F6
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D57F6:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D5806
	b _080D5D22
_080D5806:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080D580E
	movs r2, #0x00
_080D580E:
	ldr r0, _080D58A4 @ =0x00007FFF
	cmp r2, r0
	ble _080D5816
	adds r2, r0, #0x0
_080D5816:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x010]
	cmp r1, r2
	bgt _080D5830
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D5832
_080D5830:
	movs r1, #0x00
_080D5832:
	cmp r1, #0x00
	beq _080D590C
	ldr r2, _080D58A0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D58A8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D585A
	movs r1, #0x80
_080D584E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D584E
_080D585A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D586E
	movs r1, #0x80
_080D5862:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5862
_080D586E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D5882
	movs r1, #0x80
_080D5876:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5876
_080D5882:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5904
	movs r1, #0x08
_080D588C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5896
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5896:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D588C
	b _080D5904
	.byte 0x00, 0x00
_080D58A0: .4byte 0x03000FD8
_080D58A4: .4byte 0x00007FFF
_080D58A8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D58BE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58B2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58B2
_080D58BE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D58D4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58C8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58C8
_080D58D4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D58EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58DE
_080D58EA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5904
	movs r1, #0x10
_080D58F4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D58FE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D58FE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D58F4
_080D5904:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D590C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080D5916
	movs r1, #0x00
_080D5916:
	mov r3, r9
	cmp r3, #0x00
	bge _080D591E
	movs r2, #0x00
_080D591E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D5928
	adds r1, r0, #0x0
_080D5928:
	ldr r0, _080D5A1C @ =0x00007FFF
	cmp r2, r0
	ble _080D5930
	adds r2, r0, #0x0
_080D5930:
	cmp r2, r1
	bge _080D5936
	adds r1, r2, #0x0
_080D5936:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D594C
	ldr r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D594E
_080D594C:
	movs r1, #0x00
_080D594E:
	cmp r1, #0x00
	bne _080D5954
	b _080D5A9C
_080D5954:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D5A20 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D5972
	b _080D5A9C
_080D5972:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D5A24 @ =0x03000FD8
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
	bne _080D5A8A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D5A28
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D59D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59C6
_080D59D2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D59E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59DC
_080D59E8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D59FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59F2
_080D59FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5A86
	movs r1, #0x10
_080D5A08:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5A12
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5A12:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5A08
	b _080D5A86
	.byte 0x00, 0x00
_080D5A1C: .4byte 0x00007FFF
_080D5A20: .4byte 0x0300034C
_080D5A24: .4byte 0x03000FD8
_080D5A28:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D5A40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A34
_080D5A40:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5A56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A4A
_080D5A56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D5A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A60
_080D5A6C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5A86
	movs r1, #0x10
_080D5A76:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5A80
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5A80:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5A76
_080D5A86:
	bl sub_807F448
_080D5A8A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D5B6C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D5A9C:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D5AA8
	b _080D5D22
_080D5AA8:
	mov r1, r9
	cmp r1, #0x00
	bge _080D5AB0
	movs r1, #0x00
_080D5AB0:
	ldr r0, _080D5B70 @ =0x00007FFF
	cmp r1, r0
	ble _080D5AB8
	adds r1, r0, #0x0
_080D5AB8:
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080D5ACE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D5AD0
_080D5ACE:
	movs r2, #0x00
_080D5AD0:
	cmp r2, #0x00
	bne _080D5AD6
	b _080D5BE0
_080D5AD6:
	ldr r3, _080D5B74 @ =0x03000FD8
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
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080D5B6C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D5B78
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5B24
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B18
_080D5B24:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5B3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B2E
_080D5B3A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5B50
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B44
_080D5B50:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5BD4
	movs r1, #0x10
_080D5B5A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5B64
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5B64:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5B5A
	b _080D5BD4
_080D5B6C: .4byte 0x00000FFF
_080D5B70: .4byte 0x00007FFF
_080D5B74: .4byte 0x03000FD8
_080D5B78:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5B8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B82
_080D5B8E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5BA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B98
_080D5BA4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5BBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5BAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5BAE
_080D5BBA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5BD4
	movs r1, #0x10
_080D5BC4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5BCE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5BCE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5BC4
_080D5BD4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D5D22
_080D5BE0:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080D5BEC
	b _080D5D22
_080D5BEC:
	ldr r0, _080D5CA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D5BFA
	b _080D5D22
_080D5BFA:
	ldr r2, _080D5CA8 @ =0x03000FD8
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
	bne _080D5D22
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D5CAC @ =0x00000FFF
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
	beq _080D5CB0
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5C5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C50
_080D5C5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5C72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C66
_080D5C72:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5C88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C7C
_080D5C88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5D0C
	movs r1, #0x10
_080D5C92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5C9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5C9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5C92
	b _080D5D0C
_080D5CA4: .4byte 0x0300034C
_080D5CA8: .4byte 0x03000FD8
_080D5CAC: .4byte 0x00000FFF
_080D5CB0:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5CC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CBA
_080D5CC6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5CDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CD0
_080D5CDC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5CF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CE6
_080D5CF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5D0C
	movs r1, #0x10
_080D5CFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5D06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5D06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5CFC
_080D5D0C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D5D22:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D5D9C
	ldr r1, [sp, #0x00C]
	mov r2, r9
	cmp r1, #0x00
	bge _080D5D36
	movs r1, #0x00
_080D5D36:
	cmp r2, #0x00
	bge _080D5D3C
	movs r2, #0x00
_080D5D3C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D5D46
	adds r1, r0, #0x0
_080D5D46:
	ldr r0, _080D5D90 @ =0x00007FFF
	cmp r2, r0
	ble _080D5D4E
	adds r2, r0, #0x0
_080D5D4E:
	cmp r2, r1
	bge _080D5D54
	adds r1, r2, #0x0
_080D5D54:
	mov r4, r10
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, r1
	blt _080D5D6C
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D5D6E
_080D5D6C:
	movs r1, #0x00
_080D5D6E:
	cmp r1, #0x00
	beq _080D5D9C
	cmp r3, #0x01
	ble _080D5D9C
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D5D94 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D5D98 @ =0x080D62D5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D5ED2
	.byte 0x00, 0x00
_080D5D90: .4byte 0x00007FFF
_080D5D94: .4byte 0x00000FFF
_080D5D98: .4byte sub_80D62D4
_080D5D9C:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080D5DA4
	movs r2, #0x00
_080D5DA4:
	ldr r0, _080D5EE4 @ =0x00007FFF
	cmp r2, r0
	ble _080D5DAC
	adds r2, r0, #0x0
_080D5DAC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080D5DC4
	mov r6, r10
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D5DC6
_080D5DC4:
	movs r1, #0x00
_080D5DC6:
	cmp r1, #0x00
	beq _080D5E12
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5DDC
	cmp r1, #0x04
	bne _080D5DF4
_080D5DDC:
	ldr r2, _080D5EE8 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5DF4:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5E12
	ldr r2, _080D5EEC @ =0x00002095
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5E12:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D5ED2
	ldr r0, _080D5EF0 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5E3E
	cmp r2, #0x04
	bne _080D5E5A
_080D5E3E:
	ldr r2, _080D5EE8 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0A
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
_080D5E5A:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5E78
	ldr r2, _080D5EEC @ =0x00002095
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5E78:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D5E86
	cmp r2, #0x04
	bne _080D5ECC
_080D5E86:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D5E8E
	adds r1, #0xFF
_080D5E8E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D5EA4
	adds r2, #0xFF
_080D5EA4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8088274
_080D5ECC:
	ldr r0, _080D5EF4 @ =0x080D5EF9
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080D5ED2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D5EE4: .4byte 0x00007FFF
_080D5EE8: .4byte 0x00002066
_080D5EEC: .4byte 0x00002095
_080D5EF0: .4byte 0x0000011F
_080D5EF4: .4byte sub_80D5EF8
	thumb_func_start sub_80D5EF8
sub_80D5EF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080D60AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D5F34
	b _080D609A
_080D5F34:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5F56
	cmp r1, #0x04
	bne _080D5F6E
_080D5F56:
	ldr r2, _080D60B0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5F6E:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5F8C
	ldr r2, _080D60B4 @ =0x00002095
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5F8C:
	movs r7, #0x00
	movs r0, #0x76
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xCC
	adds r1, r1, r5
	mov r8, r1
_080D5F9A:
	ldr r0, _080D60AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080D604E
	ldr r0, [r4, #0x28]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D604E
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x1E
	orrs r1, r0
	mov r0, r8
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0xCC
	strh r0, [r1, #0x00]
	ldr r0, _080D60B8 @ =0x0881828D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D6018
	ldr r2, _080D60BC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D604E
_080D6018:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D6020
	adds r1, #0xFF
_080D6020:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D6036
	adds r2, #0xFF
_080D6036:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	ldr r0, _080D60C0 @ =0x000006D4
	movs r3, #0x00
	bl sub_80DF024
_080D604E:
	adds r7, #0x01
	cmp r7, #0x05
	ble _080D5F9A
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6064
	cmp r1, #0x04
	bne _080D6094
_080D6064:
	ldr r2, _080D60C4 @ =0x03001038
	ldr r0, _080D60C8 @ =0x0819832C
	ldr r1, _080D60CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6094:
	ldr r0, _080D60D0 @ =0x080D60D5
	mov r2, r10
	str r0, [r2, #0x4C]
_080D609A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D60AC: .4byte 0x03000FD8
_080D60B0: .4byte 0x00002066
_080D60B4: .4byte 0x00002095
_080D60B8: .4byte 0x0881828D
_080D60BC: .4byte 0x00000111
_080D60C0: .4byte 0x000006D4
_080D60C4: .4byte 0x03001038
_080D60C8: .4byte 0x0819832C
_080D60CC: .4byte 0x08198220
_080D60D0: .4byte sub_80D60D4
	thumb_func_start sub_80D60D4
sub_80D60D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D618C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D60FC
	b _080D62C8
_080D60FC:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D611A
	cmp r1, #0x04
	bne _080D6158
_080D611A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6128
	adds r0, #0xFF
_080D6128:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6136
	adds r0, #0xFF
_080D6136:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6144
	adds r0, #0xFF
_080D6144:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D6158:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D616C
	cmp r2, #0x04
	bne _080D61D0
_080D616C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6194
	ldr r2, _080D6190 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D61A0
	.byte 0x00, 0x00
_080D618C: .4byte 0x03000FD8
_080D6190: .4byte 0x00002002
_080D6194:
	ldr r2, _080D626C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D61A0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D61B6
	movs r2, #0x01
_080D61B6:
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
_080D61D0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D61DE
	cmp r2, #0x04
	bne _080D61E8
_080D61DE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D61E8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D61FC
	cmp r2, #0x04
	bne _080D623E
_080D61FC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D620A
	adds r0, #0xFF
_080D620A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6218
	adds r0, #0xFF
_080D6218:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6226
	adds r0, #0xFF
_080D6226:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D623E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D624C
	cmp r1, #0x04
	bne _080D62B0
_080D624C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6274
	ldr r2, _080D6270 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6280
	.byte 0x00, 0x00
_080D626C: .4byte 0x0000204F
_080D6270: .4byte 0x00002002
_080D6274:
	ldr r2, _080D62D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6280:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6296
	movs r2, #0x01
_080D6296:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D62B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D62BE
	cmp r2, #0x04
	bne _080D62C8
_080D62BE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D62C8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D62D0: .4byte 0x0000204F
	thumb_func_start sub_80D62D4
sub_80D62D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D6374 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0xAF
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6300
	cmp r1, #0x04
	bne _080D631C
_080D6300:
	ldr r2, _080D6378 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080D631C:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D633A
	ldr r2, _080D637C @ =0x00002095
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D633A:
	ldr r0, [r5, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080D6348
	adds r1, #0xFF
_080D6348:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080D6352
	adds r2, #0xFF
_080D6352:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080D635C
	adds r3, #0xFF
_080D635C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080D6380 @ =0x0000069F
	bl sub_80DF024
	ldr r0, _080D6384 @ =0x080D6389
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D6374: .4byte 0x03000FD8
_080D6378: .4byte 0x00002066
_080D637C: .4byte 0x00002095
_080D6380: .4byte 0x0000069F
_080D6384: .4byte sub_80D6388
