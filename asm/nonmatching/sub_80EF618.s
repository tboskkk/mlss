	.syntax unified
	.text

	thumb_func_start sub_80EF618
sub_80EF618:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	mov r9, r2
	lsls r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080EF65C @ =0x083BA4B4
	ldrh r0, [r0, #0x00]
	mov r8, r0
	cmp r6, #0x00
	bne _080EF64C
	ldr r0, _080EF660 @ =0x03000FCC
	ldr r0, [r0, #0x00]
	mov r1, r9
	movs r2, #0x00
	bl sub_80E92AC
	lsrs r0, r0, #0x10
	movs r1, #0xFF
	ands r0, r1
	adds r0, #0x07
	lsrs r6, r0, #0x03
_080EF64C:
	adds r0, r6, #0x2
	lsls r0, r0, #0x02
	movs r1, #0x70
	subs r5, r1, r0
	cmp r5, #0x00
	bge _080EF664
	movs r5, #0x0A
	b _080EF670
_080EF65C: .4byte word_83BA4B4 @ =0x083BA4B4
_080EF660: .4byte 0x03000FCC
_080EF664:
	lsls r1, r6, #0x03
	movs r0, #0xE8
	subs r0, r0, r1
	cmp r5, r0
	ble _080EF670
	adds r5, r0, #0x0
_080EF670:
	cmp r4, #0x00
	bge _080EF678
	movs r4, #0x0A
	b _080EF686
_080EF678:
	mov r0, r8
	lsls r1, r0, #0x03
	movs r0, #0x94
	subs r0, r0, r1
	cmp r4, r0
	ble _080EF686
	adds r4, r0, #0x0
_080EF686:
	ldr r2, _080EF6F4 @ =0x083B8F24
	ldr r7, _080EF6F8 @ =0x0300034C
	ldr r1, _080EF6FC @ =0x00000888
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _080EF69A
	adds r2, #0x20
_080EF69A:
	ldr r1, _080EF700 @ =0x02000260
	adds r0, r2, #0x0
	movs r2, #0x08
	bl CpuFastSet
	ldrh r1, [r7, #0x02]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r2, #0x0
	movs r2, #0x00
	mov r12, r2
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldr r0, _080EF704 @ =0x03000FCC
	ldr r0, [r0, #0x00]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x000]
	mov r4, r8
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	mov r1, r12
	str r1, [sp, #0x008]
	ldr r1, _080EF708 @ =0x00000803
	str r1, [sp, #0x00C]
	mov r4, r12
	str r4, [sp, #0x010]
	mov r1, r9
	subs r1, #0x02
	str r1, [sp, #0x014]
	movs r1, #0x04
	bl sub_80E5FB0
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EF6F4: .4byte dword_83B8F24 @ =0x083B8F24
_080EF6F8: .4byte 0x0300034C
_080EF6FC: .4byte 0x00000888
_080EF700: .4byte 0x02000260
_080EF704: .4byte 0x03000FCC
_080EF708: .4byte 0x00000803
