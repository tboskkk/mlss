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
