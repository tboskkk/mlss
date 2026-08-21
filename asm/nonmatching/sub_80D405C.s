	.syntax unified
	.text

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
