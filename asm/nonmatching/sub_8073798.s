	.syntax unified
	.text

	thumb_func_start sub_8073798
sub_8073798:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r8, r0
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x30]
	ldr r5, [r0, #0x30]
	ldr r7, [r5, #0x30]
	ldr r0, [r7, #0x30]
	mov r9, r0
	ldr r1, [r0, #0x30]
	mov r10, r1
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r4, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _080737C8
	adds r0, #0xFF
_080737C8:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	mov r12, r2
	ands r0, r2
	lsls r0, r0, #0x01
	ldr r1, _080738F4 @ =0x08198584
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080737E0
	adds r0, #0x3F
_080737E0:
	asrs r2, r0, #0x06
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	muls r0, r2
	str r1, [sp, #0x004]
	cmp r0, #0x00
	bge _080737F2
	adds r0, #0xFF
_080737F2:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	ldr r2, [r3, #0x00]
	str r1, [sp, #0x018]
	str r0, [sp, #0x010]
	cmp r2, #0x00
	bge _0807380E
	adds r2, #0xFF
_0807380E:
	asrs r0, r2, #0x08
	mov r1, r12
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _080738F8 @ =0x08198504
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073824
	adds r0, #0x3F
_08073824:
	asrs r1, r0, #0x06
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08073832
	adds r0, #0xFF
_08073832:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	ldr r4, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	str r2, [sp, #0x01C]
	str r1, [sp, #0x00C]
	adds r6, r0, #0x0
	cmp r3, #0x00
	bge _08073854
	adds r3, #0xFF
_08073854:
	asrs r0, r3, #0x08
	mov r1, r12
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _080738F4 @ =0x08198584
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807386A
	adds r0, #0x3F
_0807386A:
	asrs r2, r0, #0x06
	adds r1, r7, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	muls r0, r2
	str r1, [sp, #0x008]
	cmp r0, #0x00
	bge _0807387C
	adds r0, #0xFF
_0807387C:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	adds r1, r7, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r3, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r4, r1, #0x0
	str r0, [sp, #0x014]
	cmp r2, #0x00
	bge _08073898
	adds r2, #0xFF
_08073898:
	asrs r0, r2, #0x08
	mov r2, r12
	ands r0, r2
	lsls r0, r0, #0x01
	ldr r1, _080738F8 @ =0x08198504
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080738AE
	adds r0, #0x3F
_080738AE:
	asrs r1, r0, #0x06
	ldr r2, [sp, #0x008]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080738BC
	adds r0, #0xFF
_080738BC:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	adds r1, r7, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r2, r8
	adds r2, #0x9C
	str r2, [sp, #0x000]
	cmp r0, #0x00
	beq _0807393E
	mov r0, r8
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bgt _0807391E
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _0807390E
	cmp r0, #0x01
	bgt _080738FC
	cmp r0, #0x00
	beq _08073906
	b _0807391E
	.byte 0x00, 0x00
_080738F4: .4byte word_8198584 @ =0x08198584
_080738F8: .4byte word_8198504 @ =0x08198504
_080738FC:
	cmp r0, #0x02
	beq _08073916
	cmp r0, #0x03
	beq _08073916
	b _0807391E
_08073906:
	ldr r0, [r6, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	b _0807391A
_0807390E:
	ldr r0, [r6, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	b _0807391A
_08073916:
	ldr r0, [r6, #0x00]
	ldr r2, _08073968 @ =0xFFFFFF00
_0807391A:
	adds r0, r0, r2
	str r0, [r6, #0x00]
_0807391E:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	mov r2, r10
	str r0, [r2, #0x10]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r1, r10
	str r0, [r1, #0x14]
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
_0807393E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08073A18
	mov r0, r8
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bgt _080739A2
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _08073984
	cmp r0, #0x01
	bgt _0807396C
	cmp r0, #0x00
	beq _08073976
	b _080739A2
_08073968: .4byte 0xFFFFFF00
_0807396C:
	cmp r0, #0x02
	beq _08073994
	cmp r0, #0x03
	beq _08073994
	b _080739A2
_08073976:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08073980 @ =0xFFFFFF00
	b _0807399E
_08073980: .4byte 0xFFFFFF00
_08073984:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08073990 @ =0xFFFFFE80
	b _0807399E
	.byte 0x00, 0x00
_08073990: .4byte 0xFFFFFE80
_08073994:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
_0807399E:
	adds r0, r0, r2
	str r0, [r1, #0x00]
_080739A2:
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r1, r9
	str r0, [r1, #0x10]
	ldr r2, [sp, #0x01C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	mov r2, r9
	str r0, [r2, #0x14]
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r2, #0x18]
	adds r1, r4, #0x0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08073A18
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x08
	bne _080739EE
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080739EE:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08073A18
	mov r0, r9
	bl sub_807F4FC
	mov r0, r10
	bl sub_807F4FC
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08073A18:
	mov r0, r8
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r1, #0x01
	strh r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _08073AC8
	movs r2, #0x00
	ldr r0, _08073AEC @ =0x03000E80
	ldrh r1, [r0, #0x00]
	adds r4, r0, #0x0
	ldr r3, _08073AF0 @ =0x03000E98
	cmp r1, #0x00
	beq _08073A70
	adds r1, r4, #0x0
_08073A3A:
	adds r2, #0x01
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x08]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _08073A70
	adds r1, #0x0C
	adds r2, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08073A70
	cmp r2, #0x0B
	ble _08073A3A
_08073A70:
	cmp r2, #0x0B
	bgt _08073A7C
	lsls r0, r2, #0x01
	adds r0, r0, r4
	movs r1, #0x01
	strh r1, [r0, #0x00]
_08073A7C:
	movs r2, #0x00
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08073ABC
	adds r1, r3, #0x0
_08073A86:
	adds r2, #0x01
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x08]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _08073ABC
	adds r1, #0x0C
	adds r2, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08073ABC
	cmp r2, #0x0B
	ble _08073A86
_08073ABC:
	cmp r2, #0x0B
	bgt _08073AC8
	lsls r0, r2, #0x01
	adds r0, r0, r3
	movs r1, #0x01
	strh r1, [r0, #0x00]
_08073AC8:
	adds r0, r5, #0x0
	bl sub_8072FDC
	adds r0, r7, #0x0
	bl sub_80730C8
	mov r0, r8
	ldr r2, [r0, #0x30]
	ldr r4, [r2, #0x30]
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08073B0C
	cmp r0, #0x01
	bgt _08073AF4
	cmp r0, #0x00
	beq _08073AFE
	b _08073B88
_08073AEC: .4byte 0x03000E80
_08073AF0: .4byte 0x03000E98
_08073AF4:
	cmp r0, #0x02
	beq _08073B3C
	cmp r0, #0x03
	beq _08073B6C
	b _08073B88
_08073AFE:
	ldr r1, [r6, #0x00]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08073B0A
	b _08073C06
_08073B0A:
	b _08073B44
_08073B0C:
	ldr r1, [r6, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08073C06
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073B38 @ =0x08074165
	mov r1, r8
	str r0, [r1, #0x4C]
	b _08073C06
	.byte 0x00, 0x00
_08073B38: .4byte sub_8074164
_08073B3C:
	ldr r1, [r6, #0x00]
	ldr r0, _08073B64 @ =0x00004FFF
	cmp r1, r0
	bgt _08073C06
_08073B44:
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073B68 @ =0x08074165
	mov r2, r8
	str r0, [r2, #0x4C]
	b _08073C06
_08073B64: .4byte 0x00004FFF
_08073B68: .4byte sub_8074164
_08073B6C:
	ldr r1, [r6, #0x00]
	ldr r0, _08073B84 @ =0x00004FFF
	cmp r1, r0
	bgt _08073C06
	movs r0, #0x04
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	mov r1, r8
	adds r1, #0xAE
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	b _08073C06
_08073B84: .4byte 0x00004FFF
_08073B88:
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bgt _08073BEA
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xB4
	lsls r0, r0, #0x07
	str r0, [r6, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x84
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r0, #0x3C
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x00]
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x00]
	movs r1, #0x61
	ldr r2, [sp, #0x00C]
	str r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r1, [r0, #0x00]
	movs r0, #0x81
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	movs r0, #0x01
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	b _08073C06
_08073BEA:
	cmp r0, #0x08
	bne _08073C06
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08073C06:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
