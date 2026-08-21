	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8088E7C
sub_8088E7C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r6, [r4, #0x2C]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _08088E9E
	mov r12, r1
	movs r5, #0x98
	lsls r5, r5, #0x01
	add r5, r12
	b _08088EAE
_08088E9E:
	movs r0, #0x02
	negs r0, r0
	cmp r2, r0
	bne _08088EAE
	ldr r0, _08088F0C @ =0xFFFFFED0
	adds r0, r0, r1
	mov r12, r0
	adds r5, r1, #0x0
_08088EAE:
	mov r0, r12
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08088F32
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08088F10
	adds r3, r4, #0x0
	adds r3, #0x84
	mov r0, r12
	adds r0, #0xD8
	adds r2, r5, #0x0
	adds r2, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r1, r1, r0
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	mov r0, r12
	adds r0, #0xDC
	adds r1, r5, #0x0
	adds r1, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r0, [r2, #0x00]
	b _08088F52
_08088F0C: .4byte 0xFFFFFED0
_08088F10:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	mov r3, r12
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r0, [r3, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	b _08088F50
_08088F32:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r0, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r0, r3
_08088F50:
	str r0, [r1, #0x00]
_08088F52:
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08088F98 @ =0x08089AE5
	str r0, [r4, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08088F98: .4byte sub_8089AE4
	thumb_func_start sub_8088F9C
sub_8088F9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08088FB4
	b _0808916E
_08088FB4:
	ldr r0, [r7, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r5, r0, #0x0
	cmp r1, #0x10
	bne _08088FDC
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _08088FD8 @ =0x00004060
	b _08088FEC
	.byte 0x00, 0x00
_08088FD8: .4byte 0x00004060
_08088FDC:
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _0808917C @ =0x00004063
_08088FEC:
	cmp r1, r0
	bne _08088FF2
	subs r2, #0x01
_08088FF2:
	adds r1, r2, #0x0
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _08088FFC
	adds r0, #0xFF
_08088FFC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0A
	ldr r3, [r7, #0x3C]
	cmp r3, #0x00
	bge _0808900A
	adds r3, #0xFF
_0808900A:
	asrs r3, r3, #0x08
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _08089014
	adds r0, #0xFF
_08089014:
	asrs r0, r0, #0x08
	adds r0, #0x0D
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_807BF34
	adds r6, r0, #0x0
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r6, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08089180 @ =0x080891A1
	str r0, [r6, #0x4C]
	ldr r0, _08089184 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, _08089188 @ =0x08089AB1
	str r0, [r6, #0x54]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	adds r0, r6, #0x0
	bl sub_807F4FC
	ldr r0, _0808918C @ =0x08089265
	str r0, [r6, #0x5C]
	ldr r0, _08089190 @ =0x08089349
	str r0, [r6, #0x60]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x9C
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080890D6
	adds r0, #0x03
_080890D6:
	asrs r5, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x3C]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080890E8
	adds r1, #0x03
_080890E8:
	asrs r3, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x40]
	subs r0, r1, r0
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r2, r0, r1
	cmp r2, #0x00
	bge _08089102
	adds r1, #0x03
	adds r2, r0, r1
_08089102:
	asrs r2, r2, #0x02
	ldr r4, _08089194 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xAE
	movs r5, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r3, [r2, r0]
	lsls r1, r1, #0x03
	adds r1, r3, r1
	ldr r0, _08089198 @ =0x0819832C
	ldr r2, _0808919C @ =0x08198220
	subs r0, r0, r2
	ldr r4, [r4, #0x00]
	adds r4, r4, r0
	negs r0, r3
	muls r0, r3
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r4
	adds r1, r6, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x89
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r7, #0x6C]
	str r5, [r7, #0x4C]
	str r5, [r7, #0x68]
_0808916E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808917C: .4byte 0x00004063
_08089180: .4byte sub_80891A0
_08089184: .4byte sub_8087540
_08089188: .4byte sub_8089AB0
_0808918C: .4byte sub_8089264
_08089190: .4byte sub_8089348
_08089194: .4byte 0x03001038
_08089198: .4byte 0x0819832C
_0808919C: .4byte 0x08198220
	thumb_func_start sub_80891A0
sub_80891A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	ldr r5, [r6, #0x28]
	ldr r2, [r6, #0x2C]
	adds r7, r6, #0x0
	adds r7, #0xAE
	adds r0, #0xB0
	ldrh r0, [r0, #0x00]
	ldrh r1, [r7, #0x00]
	adds r0, r0, r1
	strh r0, [r7, #0x00]
	mov r4, sp
	adds r4, #0x0E
	add r0, sp, #0x010
	mov r8, r0
	ldr r1, [r2, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r3, [r0, #0x00]
	ldr r0, [r5, #0x40]
	subs r3, r3, r0
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	ldr r1, [r5, #0x44]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r2, #0x28]
	adds r0, #0xE0
	ldr r1, [r5, #0x48]
	movs r2, #0xA0
	lsls r2, r2, #0x03
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	str r0, [sp, #0x008]
	add r0, sp, #0x00C
	adds r1, r4, #0x0
	mov r2, r8
	bl sub_8087968
	add r0, sp, #0x00C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r6, #0x3C]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	mov r2, r8
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	movs r2, #0x00
	ldsh r1, [r7, r2]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmn r1, r0
	bgt _08089250
	adds r0, r5, #0x0
	adds r0, #0x08
	ldr r1, _0808925C @ =0x08089AC9
	str r1, [r0, #0x4C]
	ldr r1, _08089260 @ =0x08087541
	str r1, [r0, #0x68]
	ldr r1, [r6, #0x6C]
	str r1, [r0, #0x6C]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r6, #0x6C]
	adds r0, r6, #0x0
	bl sub_807C298
_08089250:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808925C: .4byte sub_8089AC8
_08089260: .4byte sub_8087540
	thumb_func_start sub_8089264
sub_8089264:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	mov r8, r0
	cmp r0, #0x00
	bne _08089338
	ldr r1, [r5, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r3, #0x81
	lsls r3, r3, #0x01
	adds r0, r1, r3
	movs r4, #0x00
	ldsh r2, [r0, r4]
	movs r7, #0x85
	lsls r7, r7, #0x01
	adds r0, r1, r7
	ldrh r1, [r0, #0x00]
	ldr r3, [r6, #0x28]
	movs r4, #0x82
	lsls r4, r4, #0x01
	adds r0, r3, r4
	movs r7, #0x00
	ldsh r4, [r0, r7]
	movs r7, #0x86
	lsls r7, r7, #0x01
	adds r0, r3, r7
	ldrh r3, [r0, #0x00]
	movs r0, #0x66
	muls r2, r0
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080892BA
	adds r0, #0xFF
_080892BA:
	asrs r2, r0, #0x08
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r1, r0, #0x04
	adds r0, r0, r1
	muls r0, r3
	cmp r0, #0x00
	bge _080892CC
	adds r0, #0xFF
_080892CC:
	asrs r0, r0, #0x08
	subs r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r0, r2, r0
	asrs r2, r0, #0x01
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r12, r0
	ble _080892F4
	mov r0, r12
	muls r0, r2
	adds r2, r0, #0x0
	cmp r2, #0x00
	bge _080892EC
	ldr r1, _080892F0 @ =0x0000FFFF
	adds r0, r2, r1
_080892EC:
	asrs r2, r0, #0x10
	b _080892FE
_080892F0: .4byte 0x0000FFFF
_080892F4:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080892FC
	adds r0, #0xFF
_080892FC:
	asrs r2, r0, #0x08
_080892FE:
	cmp r2, #0x01
	bgt _08089304
	movs r2, #0x01
_08089304:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0808930C
	adds r0, #0xFF
_0808930C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08089318
	adds r0, #0xFF
_08089318:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_810E03C
	adds r0, r6, #0x0
	bl sub_8089AB0
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_08089338:
	mov r0, r8
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8089348
sub_8089348:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	mov r8, r0
	cmp r0, #0x00
	bne _0808941C
	ldr r1, [r5, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r3, #0x81
	lsls r3, r3, #0x01
	adds r0, r1, r3
	movs r4, #0x00
	ldsh r2, [r0, r4]
	movs r7, #0x85
	lsls r7, r7, #0x01
	adds r0, r1, r7
	ldrh r1, [r0, #0x00]
	ldr r3, [r6, #0x28]
	movs r4, #0x82
	lsls r4, r4, #0x01
	adds r0, r3, r4
	movs r7, #0x00
	ldsh r4, [r0, r7]
	movs r7, #0x86
	lsls r7, r7, #0x01
	adds r0, r3, r7
	ldrh r3, [r0, #0x00]
	movs r0, #0x66
	muls r2, r0
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0808939E
	adds r0, #0xFF
_0808939E:
	asrs r2, r0, #0x08
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r1, r0, #0x04
	adds r0, r0, r1
	muls r0, r3
	cmp r0, #0x00
	bge _080893B0
	adds r0, #0xFF
_080893B0:
	asrs r0, r0, #0x08
	subs r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r0, r2, r0
	asrs r2, r0, #0x01
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r12, r0
	ble _080893D8
	mov r0, r12
	muls r0, r2
	adds r2, r0, #0x0
	cmp r2, #0x00
	bge _080893D0
	ldr r1, _080893D4 @ =0x0000FFFF
	adds r0, r2, r1
_080893D0:
	asrs r2, r0, #0x10
	b _080893E2
_080893D4: .4byte 0x0000FFFF
_080893D8:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080893E0
	adds r0, #0xFF
_080893E0:
	asrs r2, r0, #0x08
_080893E2:
	cmp r2, #0x01
	bgt _080893E8
	movs r2, #0x01
_080893E8:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080893F0
	adds r0, #0xFF
_080893F0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _080893FC
	adds r0, #0xFF
_080893FC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_810E03C
	adds r0, r6, #0x0
	bl sub_8089AB0
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_0808941C:
	mov r0, r8
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_808942C
sub_808942C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _08089444
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _080894A8
_08089444:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r6, [r0, #0x00]
	cmp r6, #0x00
	bne _080894A8
	ldr r4, [r5, #0x28]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x40]
	ldr r2, _080894B0 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x44]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x48]
	movs r3, #0xD0
	lsls r3, r3, #0x04
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, [r4, #0x48]
	movs r1, #0xD0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB2
	strh r6, [r0, #0x00]
	ldr r0, _080894B4 @ =0x08089A31
	str r0, [r5, #0x4C]
_080894A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080894B0: .4byte 0xFFFFF600
_080894B4: .4byte sub_8089A30
	thumb_func_start sub_80894B8
sub_80894B8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0808953C @ =0x08089A05
	str r0, [r4, #0x58]
	ldr r0, _08089540 @ =0x080899E5
	str r0, [r4, #0x5C]
	ldr r0, _08089544 @ =0x080899C5
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08089548 @ =0x0808954D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808953C: .4byte sub_8089A04
_08089540: .4byte sub_80899E4
_08089544: .4byte sub_80899C4
_08089548: .4byte sub_808954C
	thumb_func_start sub_808954C
sub_808954C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080895CC
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080895CC
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0xD0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080895D4 @ =0x0808750D
	str r0, [r4, #0x4C]
_080895CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080895D4: .4byte sub_808750C
	thumb_func_start sub_80895D8
sub_80895D8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	subs r2, #0x26
	ldr r1, [r2, #0x00]
	cmp r1, r0
	blt _08089652
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x20
	strh r0, [r1, #0x00]
	subs r1, #0x14
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08089658 @ =0x0808965D
	str r0, [r4, #0x4C]
_08089652:
	pop {r4}
	pop {r0}
	bx r0
_08089658: .4byte sub_808965C
	thumb_func_start sub_808965C
sub_808965C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08089678
	b _08089776
_08089678:
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080896D8
	adds r1, r7, #0x0
	adds r1, #0xB2
	movs r0, #0x80
	strh r0, [r1, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x04
	ldr r3, _080896C4 @ =0x03001038
	ldr r0, _080896C8 @ =0x0819832C
	ldr r2, _080896CC @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	ldr r0, _080896D0 @ =0xFFFFC440
	bl _call_via_r2
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _080896D4 @ =0x08089965
	str r0, [r7, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	b _08089776
	.byte 0x00, 0x00
_080896C4: .4byte 0x03001038
_080896C8: .4byte 0x0819832C
_080896CC: .4byte 0x08198220
_080896D0: .4byte 0xFFFFC440
_080896D4: .4byte sub_8089964
_080896D8:
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, [r7, #0x2C]
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r8, r1
	add r0, r8
	str r0, [r3, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r5, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r6, [r0, #0x00]
	ldr r0, [r7, #0x40]
	adds r6, r6, r0
	lsrs r0, r6, #0x1F
	adds r6, r6, r0
	asrs r6, r6, #0x01
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, #0x24
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r6, r6, r4
	str r6, [sp, #0x004]
	movs r4, #0x80
	lsls r4, r4, #0x03
	str r4, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x02
	str r4, [sp, #0x00C]
	mov r4, r8
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	ldr r0, _08089784 @ =0x08089789
	str r0, [r7, #0x4C]
_08089776:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08089784: .4byte sub_8089788
	thumb_func_start sub_8089788
sub_8089788:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r1, [r5, #0x00]
	cmp r1, r0
	blt _080897F6
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080897FC @ =0x08089801
	str r0, [r4, #0x4C]
_080897F6:
	pop {r4, r5}
	pop {r0}
	bx r0
_080897FC: .4byte sub_8089800
	thumb_func_start sub_8089800
sub_8089800:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080898A0
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x2C]
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	mov r8, r1
	add r0, r8
	str r0, [r3, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r6, [r0, #0x00]
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, #0x24
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r6, r6, r4
	str r6, [sp, #0x004]
	movs r4, #0x80
	lsls r4, r4, #0x03
	str r4, [sp, #0x008]
	mov r4, r8
	str r4, [sp, #0x00C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	ldr r0, _080898AC @ =0x080898B1
	str r0, [r7, #0x4C]
_080898A0:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080898AC: .4byte sub_80898B0
	thumb_func_start sub_80898B0
sub_80898B0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r1, [r5, #0x00]
	cmp r1, r0
	blt _0808991E
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _08089924 @ =0x08089929
	str r0, [r4, #0x4C]
_0808991E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08089924: .4byte sub_8089928
	thumb_func_start sub_8089928
sub_8089928:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08089958
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08089960 @ =0x0808750D
	str r0, [r4, #0x4C]
_08089958:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08089960: .4byte sub_808750C
	thumb_func_start sub_8089964
sub_8089964:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r1, [r5, #0x00]
	cmp r1, r0
	blt _080899AE
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x98
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x14
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080899B4 @ =0x0808965D
	str r0, [r4, #0x4C]
_080899AE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080899B4: .4byte sub_808965C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x89, 0x9C, 0x08, 0x08
	thumb_func_start sub_80899C4
sub_80899C4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087124
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80899E4
sub_80899E4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8086C64
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8089A04
sub_8089A04:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x11, 0x9D, 0x08, 0x08
	thumb_func_start sub_8089A30
sub_8089A30:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08089A48
	adds r0, #0x07
_08089A48:
	asrs r0, r0, #0x03
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _08089AA8
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _08089A94 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	str r2, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08089A9C
	ldr r0, _08089A98 @ =0x08089AC9
	str r0, [r1, #0x4C]
	adds r0, r1, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08089AA2
	.byte 0x00, 0x00
_08089A94: .4byte sub_8087540
_08089A98: .4byte sub_8089AC8
_08089A9C:
	adds r0, r1, #0x0
	bl sub_8086700
_08089AA2:
	adds r0, r4, #0x0
	bl sub_807C298
_08089AA8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
